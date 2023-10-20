<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.9.2" doxygen_gitid="caa4e3de211fbbef2c3adf58a6bd4c86d0eb7cb8">
  <compound kind="class">
    <name>DispatcherThread</name>
    <filename>class_dispatcher_thread.html</filename>
    <member kind="function">
      <type></type>
      <name>DispatcherThread</name>
      <anchorfile>class_dispatcher_thread.html</anchorfile>
      <anchor>a37fbae7ad43dd68489e489c6fc3a8ccc</anchor>
      <arglist>(interface::XFDispatcher *dispatcher)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>run</name>
      <anchorfile>class_dispatcher_thread.html</anchorfile>
      <anchor>afe411ece9898e72f79d580ae064c0cf2</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFDispatcher *</type>
      <name>dispatcher_</name>
      <anchorfile>class_dispatcher_thread.html</anchorfile>
      <anchor>af3d129e9f4adb01cf670eab4ba89a4ea</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XF</name>
    <filename>class_x_f.html</filename>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>initialize</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a7a831a128ccc1f024f5195338964ead5</anchor>
      <arglist>(int timeInterval=10, int argc=0, char *argv[]=nullptr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>exec</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>af120f0ad4ea4d6d2ba0621aa01265e89</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>execOnce</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a5718ac28d228ad3030da4b27fb55e666</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isRunning</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a54056434143ad95d843d52b5bc1923bf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>isInitialized_</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a23a9fa2916f1ea8a0bf5e9a79258652e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>isRunning_</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>ae8f39c1346c3207bbecca8234281ea9f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFBehavior</name>
    <filename>classinterface_1_1_x_f_behavior.html</filename>
    <member kind="typedef">
      <type>bool</type>
      <name>TerminateBehavior</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>af194a7243dfd05f3e83508fb59fdba61</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>startBehavior</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a03ae3f6c68bf16c51d2455d00cef2143</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a28f0d4607468bc1d469a99e35954c204</anchor>
      <arglist>(XFEvent *pEvent)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>deleteOnTerminate</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a19ebec4052f7e0b8f0ba85b80986bf16</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setDeleteOnTerminate</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a8d7e3cb115b567df031942552b81d919</anchor>
      <arglist>(bool deleteBehaviour)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual TerminateBehavior</type>
      <name>process</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>ad52280557cdac2dc0bd025dafa9fffbb</anchor>
      <arglist>(const XFEvent *pEvent)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFBehavior</name>
    <filename>class_x_f_behavior.html</filename>
    <base>interface::XFBehavior</base>
    <member kind="function">
      <type></type>
      <name>XFBehavior</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a2059b0b99e19ed5d126c9c724b219f5c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>startBehavior</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a84756f7e6fb88fc3efc4bc42b5bd2be9</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a633d81f9f64c4c84063837c261bdb86b</anchor>
      <arglist>(XFEvent *pEvent) override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteOnTerminate</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a23d578f29658077ea678880e67b060d5</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDeleteOnTerminate</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ad2dd82e9165b08e36d7f967bf103bd11</anchor>
      <arglist>(bool deleteBehaviour) override</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual XFEventStatus</type>
      <name>processEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a0d52aeb051101b13f9258a63ed9b3033</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>const XFEvent *</type>
      <name>getCurrentEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>adc0a3481f70171f7f381d32c71bf179e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>interface::XFDispatcher *</type>
      <name>getDispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a95636eba268164cbb41aa35ea48ed6c1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>const XFTimeout *</type>
      <name>getCurrentTimeout</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ab8c6694bceb44365f956de5703c210f8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a7e70a67ea74a99c37061fbdf762f7a55</anchor>
      <arglist>(int timeoutId, int interval)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a753ca0d5667dca95d016c019d64e866d</anchor>
      <arglist>(int timeoutId)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>deleteOnTerminate_</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ab756fe572704a385e9954c507c15924c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const XFEvent *</type>
      <name>pCurrentEvent_</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a2ddb90a65aa807034103af1e50846142</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFCustomEvent</name>
    <filename>class_x_f_custom_event.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFCustomEvent</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>ac69745b360a9475342af506c30ae0414</anchor>
      <arglist>(int id, interface::XFBehavior *pBehavior=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>ab7b119923ef1d0791542e2c7b85b6c5b</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDeleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>a857fef63d9865fe47548d771ad7a036c</anchor>
      <arglist>(bool bDeleteAfterConsume=true)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>bDeleteAfterConsume_</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>aff8ac484b7dd2c685360d83f1dde5978</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFDefaultTransition</name>
    <filename>class_x_f_default_transition.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFDefaultTransition</name>
      <anchorfile>class_x_f_default_transition.html</anchorfile>
      <anchor>a2925af16ba3d1eb20d65138911cf38cc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_default_transition.html</anchorfile>
      <anchor>aee6aa0ae4c18b77dc2939a672c348a1b</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFDispatcher</name>
    <filename>classinterface_1_1_x_f_dispatcher.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a6cdb4740b1e2a19ab037455f020e4548</anchor>
      <arglist>(XFEvent *pEvent)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>scheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>afee36b51ca86b0357c0135ae89eade64</anchor>
      <arglist>(int timeoutId, int interval, interface::XFBehavior *pBehavior)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a110619a2f91757b083420875a5ed2c51</anchor>
      <arglist>(int timeoutId, interface::XFBehavior *pBehavior)=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFDispatcher *</type>
      <name>getInstance</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a2f654b19fdb7dc8e770d546ab654674f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFDispatcher</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>ad3408783319457342fe3595a87af1c94</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual int</type>
      <name>execute</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a5f19f43b4e0780e3ea78a91af20c9dfa</anchor>
      <arglist>(const void *param=nullptr)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>executeOnce</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>af31ffca7fedde5d9483e04b0b84a2e52</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>dispatchEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a65addbde50944781dd5ee0631affb701</anchor>
      <arglist>(const XFEvent *pEvent) const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFDispatcher</name>
    <filename>class_x_f_dispatcher.html</filename>
    <base>interface::XFDispatcher</base>
    <member kind="function">
      <type>void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>aa90c8a1c59aa2923b41cbc42af611ee1</anchor>
      <arglist>(XFEvent *pEvent) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>adbf6b5be5913130ff3a63e43fc3601a7</anchor>
      <arglist>(int timeoutId, int interval, interface::XFBehavior *pBehavior) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>ad245be53e06cc8d9bb9256a4ffb2e01a</anchor>
      <arglist>(int timeoutId, interface::XFBehavior *pBehavior) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>executeOnce</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a6f9bbeed06f6220e2c1b9d3c3adb51e9</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>execute</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>af49bf1196f14094917a8d5223f4cd9d9</anchor>
      <arglist>(const void *param=nullptr) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>dispatchEvent</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>aed9fed4c3b80dea28d70a48e705f5926</anchor>
      <arglist>(const XFEvent *pEvent) const override</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>XFEventQueue</type>
      <name>events_</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a5723a225c756dde17d48b971f0633f1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFMutex *</type>
      <name>pMutex_</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a901fbafbd43609c427d3650b61ba752e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEvent</name>
    <filename>class_x_f_event.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>XFEventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Unknown</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adfc2ad39d30f7a5df70c664bb2e24542</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Initial</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adc2df751813b38295784e246f9fe230e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DefaultTransition</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4e9bf5642755f9677aa9c4c415a3bcba</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Event</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4eefc024e7a72ce987c701013de3e100</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Timeout</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a04f01a94d013ac0b3cd810b556427496</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Unknown</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adfc2ad39d30f7a5df70c664bb2e24542</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Initial</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adc2df751813b38295784e246f9fe230e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DefaultTransition</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4e9bf5642755f9677aa9c4c415a3bcba</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Event</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4eefc024e7a72ce987c701013de3e100</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Timeout</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a04f01a94d013ac0b3cd810b556427496</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFEvent</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>af17823d5915a117da46e571a3fa114b1</anchor>
      <arglist>(XFEventType eventType, int id=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~XFEvent</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a81e1850b46acd477ea5a9475e12e3e1e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>XFEventType</type>
      <name>getEventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>abce814f103406c0a78cad6dd394ac567</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>interface::XFBehavior *</type>
      <name>getBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a5cc48cb3354298c94428032082840033</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>abbf3ce3d2bd6533c77900672a195320d</anchor>
      <arglist>(interface::XFBehavior *pBehavior)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getId</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a33fdd5cc665f6224e803146d6b7ef9f6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a917cec86b20ee75e768da336f5b18c70</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const XFEventType</type>
      <name>eventType_</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a7b72b2c1edd9fba697b0bccbab3ed350</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>id_</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>ae481937e76c817d67f704bfbc3ed2e30</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFBehavior *</type>
      <name>pBehavior_</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a1ec81ab9c537d5474cea2078d0d090e5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFEventQueue</name>
    <filename>classinterface_1_1_x_f_event_queue.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>empty</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>ac233817695332ff2c5d5d153a8956347</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>push</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>afe428e2ae5a3447a593b043c6c592e42</anchor>
      <arglist>(const XFEvent *pEvent, bool fromISR=false)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual const XFEvent *</type>
      <name>front</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a3050eeb0a1286bd5be22fba67cd52157</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pop</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a7f231860c5c4abdabe6db23f0dc0df66</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>pend</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>af7bd7c5d6fa604536de8249f897013c4</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEventQueue</name>
    <filename>class_x_f_event_queue.html</filename>
    <base>interface::XFEventQueue</base>
    <base>interface::XFEventQueue</base>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a2d8dd5aa2e2ac3fc8dcf67d7ec3dcd3a</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>push</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>ab164fbfa8ad7b5c75194b2b0e8caecc4</anchor>
      <arglist>(const XFEvent *pEvent, bool fromISR=false) override</arglist>
    </member>
    <member kind="function">
      <type>const XFEvent *</type>
      <name>front</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a91c78f3845e8f4d128ae4b25241c09ec</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pop</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a40671cbd4b5731daea332eb3c6844e71</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pend</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a53d5e0eca81e14bba6c9b9b75b0e5566</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a2d8dd5aa2e2ac3fc8dcf67d7ec3dcd3a</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>push</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>ab164fbfa8ad7b5c75194b2b0e8caecc4</anchor>
      <arglist>(const XFEvent *pEvent, bool fromISR=false) override</arglist>
    </member>
    <member kind="function">
      <type>const XFEvent *</type>
      <name>front</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a91c78f3845e8f4d128ae4b25241c09ec</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pop</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a40671cbd4b5731daea332eb3c6844e71</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pend</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a53d5e0eca81e14bba6c9b9b75b0e5566</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>QQueue&lt; const XFEvent * &gt;</type>
      <name>EventQueue</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>af64984d52162b36ee640923a664fb446</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::queue&lt; const XFEvent * &gt;</type>
      <name>EventQueue</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>ae37b5d871dd5c5ff1026dd318cd13e1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>QMutex</type>
      <name>mutex_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a66f60e652b807ffb67e7e5b4b21904ce</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>QWaitCondition</type>
      <name>newEvents_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a374c189f0ffd430963a87ce4c75d28b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>EventQueue</type>
      <name>queue_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a3d6f7968984762a3a210bd4a11d9c1b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Mutex</type>
      <name>mutex_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a5c4bd0b399fc48be3ae6c092221dab9f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEventStatus</name>
    <filename>class_x_f_event_status.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>eEventStatus</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Consumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fafa48367d81ae56e4a4312c172fc3bddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotConsumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa619ade43444917a3cbbd0d806614a007</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RegionFinished</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa70119b07e0f3b80171c74eb4abf29dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa8d3b26da0a8fd77cdb2af2e9a18d954b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Consumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fafa48367d81ae56e4a4312c172fc3bddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotConsumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa619ade43444917a3cbbd0d806614a007</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RegionFinished</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa70119b07e0f3b80171c74eb4abf29dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa8d3b26da0a8fd77cdb2af2e9a18d954b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFEventStatus</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a5d94f7b57653a3a30d0d66a4114e994f</anchor>
      <arglist>(eEventStatus eventStatus=Unknown)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a46751b6a5a371e38a3aa5b049a1de813</anchor>
      <arglist>(const XFEventStatus::eEventStatus &amp;eventStatus) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator|=</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a5782bdf58db36d8f09ce936f23129004</anchor>
      <arglist>(const XFEventStatus &amp;eventStatus)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a24123948f7c56f793e75cfa51a7199cf</anchor>
      <arglist>(const eEventStatus eventStatus) const</arglist>
    </member>
    <member kind="variable">
      <type>eEventStatus</type>
      <name>status_</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a44a906459a1d26817a6eceb46c6514f7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFInitialEvent</name>
    <filename>class_x_f_initial_event.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_initial_event.html</anchorfile>
      <anchor>a0a2ab8ade826467db2fe796a663031fe</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFMutex</name>
    <filename>classinterface_1_1_x_f_mutex.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>lock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a37b990e79385bae3fa7fab35a86c75b3</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unlock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a201ab90921e662591f0623155f986834</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>tryLock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>ac90bb5e91af283dbd68f150d92a1cccf</anchor>
      <arglist>(int32_t timeout=0)=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFMutex *</type>
      <name>create</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a7f48fd9da6c5d4766cf60543d2e8d48d</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFMutex</name>
    <filename>class_x_f_mutex.html</filename>
    <base>interface::XFMutex</base>
    <base>interface::XFMutex</base>
    <member kind="function">
      <type>void</type>
      <name>lock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a0ba8e69809b734834831b483484a100c</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unlock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>afc627db4f9392a9b47db64e670036b99</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>tryLock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>aa730a84538b386cae15b5c78f1a125af</anchor>
      <arglist>(int32_t timeout=0) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>lock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a0ba8e69809b734834831b483484a100c</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unlock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>afc627db4f9392a9b47db64e670036b99</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>tryLock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>aa730a84538b386cae15b5c78f1a125af</anchor>
      <arglist>(int32_t timeout=0) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFMutex</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a89b72b33a9448fa8383860d9d3d64dcf</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFMutex</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a89b72b33a9448fa8383860d9d3d64dcf</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>QMutex</type>
      <name>mutex_</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a9959f62c1c62d19cfb282400fe0e7509</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFTimeout</name>
    <filename>class_x_f_timeout.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFTimeout</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a04d1affe5a2667165f27dcad094ba5bb</anchor>
      <arglist>(int id, int interval, interface::XFBehavior *pBehavior=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a6b82c572dab611bf18175fe502b22181</anchor>
      <arglist>(const XFTimeout &amp;timeout) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a0d4154698f3337e7181a5f3455a16a93</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInterval</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a24112378919076ab91bc898564749b0f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>ae0b2beefd067a4c84f1c37b9cf04fab2</anchor>
      <arglist>(int relTicks)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a3e6ade37aa4ffc14312ec63a1cbb49db</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>substractFromRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>afe1d6c0d58e92c2c1cfc12e0906d8bb1</anchor>
      <arglist>(int ticksToSubstract)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addToRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>af95f95b9c6f48f2bcafc4f0e8bed6b6d</anchor>
      <arglist>(int ticksToAdd)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const int</type>
      <name>interval_</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>afc6c70ad70b7ec81bb66c6f61f217013</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>relTicks_</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a43cbab239bd4636142f078e9335f05eb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFTimeoutManager</name>
    <filename>classinterface_1_1_x_f_timeout_manager.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>abec8b9945e0d576c12158b7476f90432</anchor>
      <arglist>(int32_t tickInterval)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int32_t</type>
      <name>getTickInterval</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a905ce79bdbb26c7764b7e258c1b6d85c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>ac1148685b2bcbca13f476955b0988753</anchor>
      <arglist>(std::function&lt; void(uint32_t)&gt; startTimeoutManagerTimer=nullptr)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>scheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a016b390b664dffffce77ac8edff95a96</anchor>
      <arglist>(int32_t timeoutId, int32_t interval, interface::XFBehavior *pBehavior)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>afcda1c4659e47180be82a1ef99eec41f</anchor>
      <arglist>(int32_t timeoutId, interface::XFBehavior *pBehavior)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>tick</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a90f30654c0d7ab0f139da664f9c9c5cb</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFTimeoutManager *</type>
      <name>getInstance</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a9b8a25fcda13f06bd19bc2d66d21092e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>addTimeout</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a841dbfddb18f1b9906cc9da8d4c385c6</anchor>
      <arglist>(XFTimeout *pNewTimeout)=0</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int32_t</type>
      <name>tickInterval_</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a3f65977ad3a371be526608c31a70428a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFTimeoutManager</name>
    <filename>class_x_f_timeout_manager.html</filename>
    <base>interface::XFTimeoutManager</base>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a5025f946081958a650116a7f03362574</anchor>
      <arglist>(std::function&lt; void(uint32_t)&gt; startTimeoutManagerTimer=nullptr) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>ab7948bd94c117af3e771394302b6b2ff</anchor>
      <arglist>(int32_t timeoutId, int32_t interval, interface::XFBehavior *pBehavior) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a9f250b76276f4c2bc6fa55bd9004d5e6</anchor>
      <arglist>(int32_t timeoutId, interface::XFBehavior *pBehavior) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tick</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a6ae03b2828ff8d6a30c538a0ca25590c</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::list&lt; XFTimeout * &gt;</type>
      <name>TimeoutList</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a21682de388732d657850d2b050dc795e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addTimeout</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a5911e36cce72d4f1f2056b311c902e5a</anchor>
      <arglist>(XFTimeout *pNewTimeout) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>returnTimeout</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>ab2cde664b85877cba3f08f13341598ff</anchor>
      <arglist>(XFTimeout *pTimeout)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>TimeoutList</type>
      <name>timeouts_</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>ac3ef05de8db19b210442d9dfe10b2fc4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFMutex *</type>
      <name>pMutex_</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a88018a091c06f121b9103bdd96386cc1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>xf_core</name>
    <title>XF Core Classes</title>
    <filename>group__xf__core.html</filename>
    <class kind="class">XFBehavior</class>
    <class kind="class">XFCustomEvent</class>
    <class kind="class">XFDefaultTransition</class>
    <class kind="class">XFEvent</class>
    <class kind="class">XFEventStatus</class>
    <class kind="class">XFInitialEvent</class>
    <class kind="class">XFTimeout</class>
    <class kind="class">XF</class>
  </compound>
  <compound kind="group">
    <name>port_common</name>
    <title>XF Common Port Classes</title>
    <filename>group__port__common.html</filename>
    <class kind="class">XFDispatcher</class>
    <class kind="class">XFTimeoutManager</class>
  </compound>
  <compound kind="group">
    <name>port_idf_qt</name>
    <title>IDF Qt Port Classes</title>
    <filename>group__port__idf__qt.html</filename>
    <class kind="class">XFEventQueue</class>
    <class kind="class">XFMutex</class>
  </compound>
  <compound kind="group">
    <name>port_idf_stm32</name>
    <title>IDF STM32 Port Classes</title>
    <filename>group__port__idf__stm32.html</filename>
    <class kind="class">XFEventQueue</class>
    <class kind="class">XFMutex</class>
    <member kind="function">
      <type>void</type>
      <name>XF_tick</name>
      <anchorfile>group__port__idf__stm32.html</anchorfile>
      <anchor>ga362aeb583f552072275021bb97ea58f0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>XF_tickIntervalInMilliseconds</name>
      <anchorfile>group__port__idf__stm32.html</anchorfile>
      <anchor>ga94704625bc8c4d29827eab535d4f01fe</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>XF_isRunning</name>
      <anchorfile>group__port__idf__stm32.html</anchorfile>
      <anchor>ga997e96d1bb5bbdcc95b1dbab4d4ca303</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>PTR Execution Framework Documentation</title>
    <filename>index.html</filename>
    <docanchor file="index.html" title="Introduction">sec_xf_intro</docanchor>
    <docanchor file="index.html" title="XF Component Diagram">sec_xf_comp</docanchor>
    <docanchor file="index.html" title="XF Class Diagram">sec_xf_cmd</docanchor>
    <docanchor file="index.html" title="Starting Point">sec_xf_start</docanchor>
    <docanchor file="index.html" title="Links to related Documentation">sec_xf_external_links</docanchor>
    <docanchor file="index.html" title="Simplified XF Releases">sec_xf_releases</docanchor>
    <docanchor file="index.html" title="Simplified XF Version: 1.1.0 (2022-09)">xf_v_1_1_0</docanchor>
    <docanchor file="index.html" title="Simplified XF Version: 1.0.0 (2021-07)">xf_v_1_0_0</docanchor>
  </compound>
</tagfile>
