/* DWRG T4 login/token/GM hook - work_dwrg/hook_login.js (T4 hardened) */
/* target: com.identityv.shrek156 @ 2206122SC/Android12, frida-server-x86, spawn+gadget attach */
/* covers: Channel.login chain + com.netease.neox.NativeInterface.NativeOnLogin/GMBridge + Client GMBridge */
Java.perform(function () {
  send('[hook] java.perform start pkg=' + Java.use('android.app.ActivityThread').currentApplication().getPackageName());

  // ---- 1) Channel.login chain (com.netease.dwrg.Channel) ----
  try {
    var Channel = Java.use('com.netease.dwrg.Channel');
    Channel.login.implementation = function () {
      send('[Channel.login] called init=' + this.isInitialized() + ' initializing=' + this.isInitializing());
      return this.login();
    };
    Channel.loginDone.overload('int').implementation = function (a) {
      send('[Channel.loginDone] arg=' + a);
      var r = this.loginDone(a);
      send('[Channel.loginDone] returned');
      return r;
    };
    Channel.gameLoginSuccess.implementation = function () {
      send('[Channel.gameLoginSuccess] called');
      return this.gameLoginSuccess();
    };
    Channel.hasLogin.implementation = function () {
      var r = this.hasLogin();
      send('[Channel.hasLogin] ret=' + r);
      return r;
    };
    Channel.initialize.implementation = function () {
      send('[Channel.initialize] called');
      return this.initialize();
    };
    Channel.getPropStr.overload('java.lang.String').implementation = function (p) {
      var v = this.getPropStr(p);
      if (p == 'UID' || p == 'UIN' || p.indexOf('TOKEN') >= 0 || p.indexOf('USERINFO') >= 0) {
        send('[Channel.getPropStr] ' + p + ' = ' + v);
      }
      return v;
    };
    if (Channel.setGMBridgeToken) { try { send('[Channel] setGMBridgeToken present'); } catch (e) {} }
  } catch (e) { send('[Channel hook err] ' + e); }

  // ---- 2) NativeInterface NativeOnLogin / GMBridge (com.netease.neox.NativeInterface) ----
  // native methods cannot be .implementation-hooked directly; observe callers instead:
  // Channel.loginDone -> NativeOnLogin, Client.openGMWebView/showGMFloatButton -> NativeOnGMBridgeTokenOverdue
  try {
    var NI = Java.use('com.netease.neox.NativeInterface');
    var ms = NI.class.getDeclaredMethods();
    ms.forEach(function (mm) {
      var n = mm.getName();
      if (n.indexOf('NativeOnLogin') >= 0 || n.indexOf('GMBridge') >= 0 || n.indexOf('NativeOnInitSdk') >= 0 || n.indexOf('NativeOnWebViewCallback') >= 0) {
        send('[NativeInterface] decl ' + n + ' sig=' + mm.toString());
      }
    });
  } catch (e) { send('[NI enum err] ' + e); }

  // ---- 3) Client GMBridge (com.netease.dwrg.Client) ----
  try {
    var Client = Java.use('com.netease.dwrg.Client');
    if (Client.openGMWebView) { try {
      Client.openGMWebView.overload('java.lang.String').implementation = function (uid) {
        send('[Client.openGMWebView] uid=' + uid);
        return this.openGMWebView(uid);
      };
    } catch (e) { send('[Client.openGMWebView hook err] ' + e); } }
    if (Client.showGMFloatButton) { try {
      Client.showGMFloatButton.overload('java.lang.String', 'java.lang.String').implementation = function (a, b) {
        send('[Client.showGMFloatButton] a=' + a + ' b=' + b);
        return this.showGMFloatButton(a, b);
      };
    } catch (e) { send('[Client.showGMFloatButton hook err] ' + e); } }
    if (Client.setGMBridgeToken) { try {
      Client.setGMBridgeToken.overload('java.lang.String').implementation = function (t) {
        var preview = t ? (t.length > 64 ? t.substring(0, 64) + '...len=' + t.length : t) : 'null';
        send('[Client.setGMBridgeToken] token=' + preview);
        return this.setGMBridgeToken(t);
      };
    } catch (e) { send('[Client.setGMBridgeToken hook err] ' + e); } }
    // enumerate to confirm overloads present on this build
    try {
      var cms = Client.class.getDeclaredMethods();
      cms.forEach(function (mm) {
        var n = mm.getName();
        if (n.indexOf('GM') >= 0 || n.indexOf('Token') >= 0) send('[Client] decl ' + mm.toString());
      });
    } catch (e) { send('[Client enum err] ' + e); }
  } catch (e) { send('[Client hook err] ' + e); }

  // ---- 4) SdkMgr hasLogin / token ------
  try {
    var SdkMgr = Java.use('com.netease.ntunisdk.base.SdkMgr');
    try {
      if (SdkMgr.hasLogin) SdkMgr.hasLogin.implementation = function () {
        var r = this.hasLogin();
        send('[SdkMgr.hasLogin] ret=' + r);
        return r;
      };
    } catch (e) { send('[SdkMgr.hasLogin hook err] ' + e); }
    try {
      SdkMgr.getPropStr.overload('java.lang.String').implementation = function (p) {
        var v = this.getPropStr(p);
        if (p == 'UIN' || p == 'UID' || p.indexOf('TOKEN') >= 0) send('[SdkMgr.getPropStr] ' + p + '=' + (v ? (v.length > 64 ? v.substring(0,64)+'...len='+v.length : v) : v));
        return v;
      };
    } catch (e) { send('[SdkMgr.getPropStr hook err] ' + e); }
  } catch (e) { send('[SdkMgr err] ' + e); }

  send('[hook] ready Channel.login/NativeOnLogin-decl/GMBridge-client');
});
