/* DWRG login/token/GM hook - work_dwrg/hook_login.js */
Java.perform(function () {
  send('[hook] java.perform start');
  try {
    var Channel = Java.use('com.netease.dwrg.Channel');
    Channel.login.implementation = function () {
      send('[Channel.login] called');
      return this.login();
    };
    Channel.loginDone.overload('int').implementation = function (a) {
      send('[Channel.loginDone] arg=' + a);
      return this.loginDone(a);
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
  } catch (e) { send('[Channel hook err] ' + e); }
  try {
    var NI = Java.use('com.netease.dwrg.NativeInterface');
    var m = NI.class.getDeclaredMethods();
    m.forEach(function (mm) {
      if (mm.getName().indexOf('NativeOnLogin') >= 0 || mm.getName().indexOf('GMBridge') >= 0) {
        send('[NativeInterface] found ' + mm.getName());
      }
    });
  } catch (e) { send('[NI err] ' + e); }
  try {
    var SdkMgr = Java.use('com.netease.ntunisdk.base.SdkMgr');
    SdkMgr.hasLogin.implementation = function () {
      var r = this.hasLogin();
      send('[SdkMgr.hasLogin] ret=' + r);
      return r;
    };
  } catch (e) { send('[SdkMgr err] ' + e); }
});
