#include <config/xf-config.h>

#if (USE_XF_IDF_QT_XF_CLASS != 0)

#include <QCoreApplication>
#include <QThread>
#include "xf/interface/timeoutmanager.h"
#include "xf/interface/dispatcher.h"
#include "xf/xf.h"

/**
 * In the Qt port we are going to use a QCoreApplication instance
 * which gets executed by the XF::exec() method.
 *
 * The default dispatcher is active in this port implementation.
 * This means, the default dispatcher has its own thread.
 *
 * The XF::execOnce() method is not applicable for this port.
 */

bool XF::isInitialized_ = false;
bool XF::isRunning_ = false;

/**
 * @brief Helper class used to call regularly XFTimeoutManager::tick()
 *
 * Internally a Qt timer is created to call the
 * XFTimeoutManager::tick() method
 * (see QObject::startTimer()).
 */
static class TimeoutManagerTimer : public QObject
{
public:
    TimeoutManagerTimer()
    : _timerId(0)
    {
    }

    void start(int32_t tickInterval)
    {
        Q_ASSERT(_timerId == 0);	// Method should be called only once!
        _timerId = startTimer(tickInterval, Qt::PreciseTimer);
    }

    void timerEvent(QTimerEvent * event) override
    {
        if (event->timerId() == _timerId)
        {
            interface::XFTimeoutManager::getInstance()->tick();
        }
    }

protected:
    int32_t _timerId;
} timeoutManagerTimer;

/**
 * @brief The DispatcherThread calls the XFDispatcher execute() method in a separate thread.
 */
class DispatcherThread : public QThread
{
public:
    /**
     * @brief DispatcherThread constructor
     * @param dispatcher Dispatcher to be executed by the thread.
     */
    DispatcherThread(interface::XFDispatcher * dispatcher)
    {
        dispatcher_ = dispatcher;
        assert(dispatcher_);
    }

    // QThread interface
protected:
    /**
     * @brief Method executed by the new thread.
     *
     * For more information read the documentation of QThread.
     */
    void run() override
    {
        this->dispatcher_->execute();
    }

protected:
    interface::XFDispatcher * dispatcher_;      ///< Pointer to dispatcher used by the DispatcherThread.
};

static QCoreApplication & getApplication(int argc = 0, char * argv[] = nullptr)
{
    static QCoreApplication app(argc, argv);
    return app;
}

void XF::initialize(int timeInterval /* = 10 */, int argc /* = 0 */, char * argv[] /* = nullptr */)
{
    if (!isInitialized_)
    {
        // Call getApplication() to create QT application instance
        ::getApplication(argc, argv);

        // Create and initialize TimeoutManager
        interface::XFTimeoutManager::getInstance()->initialize(timeInterval);
        // Start it
        interface::XFTimeoutManager::getInstance()->start(std::bind(&TimeoutManagerTimer::start, &timeoutManagerTimer, std::placeholders::_1));

        isInitialized_ = true;
    }
}

int XF::exec()
{
    // Start default dispatcher (in a separate thread)
    DispatcherThread dispatcherThread(interface::XFDispatcher::getInstance());
    dispatcherThread.start();

    isRunning_ = true;

    // Start Qt event loop
    return ::getApplication().exec();
}

int XF::execOnce()
{
    Q_ASSERT(false);    // Not applicable for this port
    return 0;
}

bool XF::isRunning()
{
    return isRunning_;
}

#endif // USE_XF_IDF_QT_XF_CLASS
