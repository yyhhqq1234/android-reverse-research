/* F2 formal PluginUniSDK hook — work_dwrg/formal_dyn_/formal_dyn_hook_login.js
 * target: com.netease.dwrg (formal 2026.0828.1653, 12dex, arm64) @16384/Android12
 * replaces T4 hook_login.js (Channel.login/NativeOnLogin/Client-GMBridge) — formal Channel GONE, NativeInterface NativeOnLogin GONE, Client GM=0
 * static anchor: classes5.dex PluginUniSDK.java (jadx5) + t6_jni_formal.txt 60x PluginUniSDK_* ; Client.java GM=0
 */
Java.perform(function () {
  var pkg = Java.use('android.app.ActivityThread').currentApplication().getPackageName();
  send('[F2] java.perform start pkg=' + pkg);

  // ---- 0) T4 legacy presence probe (expected ABSENT on formal) ----
  try { Java.use('com.netease.dwrg.Channel'); send('[F2-Channel] PRESENT (unexpected on formal)'); }
  catch (e) { send('[F2-Channel] absent as expected on formal: ' + e.message); }
  try {
    var NI = Java.use('com.netease.neox.NativeInterface');
    var found = [];
    NI.class.getDeclaredMethods().forEach(function (m) {
      var n = m.getName();
      if (n.indexOf('NativeOnLogin') >= 0 || n.indexOf('GMBridge') >= 0) found.push(n);
    });
    send('[F2-NativeInterface] legacy Login/GMBridge decls=' + JSON.stringify(found));
  } catch (e) { send('[F2-NativeInterface] err ' + e); }

  // ---- 1) PluginUniSDK native decl enumeration (60x anchor) ----
  try {
    var P = Java.use('com.netease.neox.PluginUniSDK');
    var decls = [];
    P.class.getDeclaredMethods().forEach(function (m) {
      var n = m.getName();
      if (n.indexOf('NativeOn') === 0) decls.push(n);
    });
    decls.sort();
    send('[F2-PluginUniSDK] NativeOn decls(' + decls.length + ')=' + decls.join(','));
  } catch (e) { send('[F2-PluginUniSDK decl err] ' + e); return; }

  var P = Java.use('com.netease.neox.PluginUniSDK');
  function guard(name, fn) { try { fn(); send('[F2-hook] ' + name + ' armed'); } catch (e) { send('[F2-hook] ' + name + ' SKIP ' + e.message); } }

  // ---- 2) login / logout ----
  guard('loginDone(int)', function () {
    P.loginDone.overload('int').implementation = function (code) {
      send('[PluginUniSDK.loginDone] code=' + code);
      var r = this.loginDone(code); send('[PluginUniSDK.loginDone] returned'); return r;
    };
  });
  guard('logoutDone(int)', function () {
    P.logoutDone.overload('int').implementation = function (code) {
      send('[PluginUniSDK.logoutDone] code=' + code);
      var r = this.logoutDone(code); send('[PluginUniSDK.logoutDone] returned'); return r;
    };
  });
  guard('finishInit(int)', function () {
    P.finishInit.overload('int').implementation = function (code) {
      send('[PluginUniSDK.finishInit] code=' + code);
      var r = this.finishInit(code); send('[PluginUniSDK.finishInit] returned'); return r;
    };
  });

  // ---- 3) order / consume / verify (pay chain) ----
  guard('orderCheckDone', function () {
    P.orderCheckDone.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      send('[PluginUniSDK.orderCheckDone] order=' + P.obj2Json(o));
      var r = this.orderCheckDone(o); send('[PluginUniSDK.orderCheckDone] returned'); return r;
    };
  });
  guard('orderConsumeDone', function () {
    P.orderConsumeDone.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      send('[PluginUniSDK.orderConsumeDone] order=' + P.obj2Json(o));
      var r = this.orderConsumeDone(o); send('[PluginUniSDK.orderConsumeDone] returned'); return r;
    };
  });
  guard('onSuccess(verify)', function () {
    P.onSuccess.overload('int', 'java.lang.String').implementation = function (c, s) {
      send('[PluginUniSDK.VerifySuccess] code=' + c + ' msg=' + s);
      return this.onSuccess(c, s);
    };
  });
  guard('onFailure(verify)', function () {
    P.onFailure.overload('int', 'java.lang.String').implementation = function (c, s) {
      send('[PluginUniSDK.VerifyFailure] code=' + c + ' msg=' + s);
      return this.onFailure(c, s);
    };
  });
  guard('ntCheckOrder', function () {
    P.ntCheckOrder.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      send('[PluginUniSDK.ntCheckOrder] -> ' + P.obj2Json(o));
      return this.ntCheckOrder(o);
    };
  });
  guard('ntConsume', function () {
    P.ntConsume.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      send('[PluginUniSDK.ntConsume] -> ' + P.obj2Json(o));
      return this.ntConsume(o);
    };
  });
  guard('ntVerifyOrder', function () {
    P.ntVerifyOrder.implementation = function () {
      send('[PluginUniSDK.ntVerifyOrder] called'); return this.ntVerifyOrder();
    };
  });

  // ---- 4) share / webview ----
  guard('onShareFinished', function () {
    P.onShareFinished.overload('boolean').implementation = function (ok) {
      send('[PluginUniSDK.onShareFinished] ok=' + ok); return this.onShareFinished(ok);
    };
  });
  guard('ntShare', function () {
    P.ntShare.overload('com.netease.ntunisdk.base.ShareInfo').implementation = function (s) {
      send('[PluginUniSDK.ntShare] called'); return this.ntShare(s);
    };
  });
  guard('OnWebViewNativeCall', function () {
    P.OnWebViewNativeCall.overload('java.lang.String', 'java.lang.String').implementation = function (a, b) {
      send('[PluginUniSDK.OnWebViewNativeCall] a=' + a + ' b=' + b);
      return this.OnWebViewNativeCall(a, b);
    };
  });
  guard('ntOpenWebView', function () {
    P.ntOpenWebView.overload('java.lang.String').implementation = function (u) {
      send('[PluginUniSDK.ntOpenWebView] url=' + u); return this.ntOpenWebView(u);
    };
  });

  // ---- 5) startup / lifecycle ----
  guard('startupDone', function () {
    P.startupDone.implementation = function () {
      send('[PluginUniSDK.startupDone] called'); return this.startupDone();
    };
  });
  guard('continueGame', function () {
    P.continueGame.implementation = function () {
      send('[PluginUniSDK.continueGame] called'); return this.continueGame();
    };
  });
  guard('exitApp', function () {
    P.exitApp.implementation = function () {
      send('[PluginUniSDK.exitApp] called'); return this.exitApp();
    };
  });

  // ---- 6) query surfaces (friend/rank/sku, decl+light hook) ----
  guard('querySkuDetailsFinished', function () {
    P.querySkuDetailsFinished.overload('java.util.List').implementation = function (l) {
      send('[PluginUniSDK.querySkuDetailsFinished] n=' + (l ? l.size() : -1));
      return this.querySkuDetailsFinished(l);
    };
  });
  guard('onQueryFriendListFinished', function () {
    P.onQueryFriendListFinished.overload('java.util.List').implementation = function (l) {
      send('[PluginUniSDK.onQueryFriendListFinished] n=' + (l ? l.size() : -1));
      return this.onQueryFriendListFinished(l);
    };
  });
  guard('onQueryRankFinished', function () {
    P.onQueryRankFinished.overload('java.util.List').implementation = function (l) {
      send('[PluginUniSDK.onQueryRankFinished] n=' + (l ? l.size() : -1));
      return this.onQueryRankFinished(l);
    };
  });

  send('[F2] ready PluginUniSDK LoginDone/LogoutDone/Verify/OrderConsume/Share/WebViewNativeCall');
});
