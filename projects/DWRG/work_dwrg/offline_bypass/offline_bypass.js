/* O2 offline bypass — work_dwrg/offline_bypass/offline_bypass.js
 * target: com.netease.dwrg formal 2026.0828.1653 (12dex arm64) @16384/Android12
 * base: formal_dyn_hook_login.js F2 (observe) -> this file (enforce offline pass)
 * policy: continuing-anyway — every check returns success locally, never blocks on network
 * stub endpoint: http://127.0.0.1:30801 (adb reverse tcp:30801 tcp:30801 + stub_server.py)
 * use: frida -H 127.0.0.1:27042 -l offline_bypass.js -n com.netease.dwrg
 */
Java.perform(function () {
  var pkg = Java.use('android.app.ActivityThread').currentApplication().getPackageName();
  send('[OFFLINE-BYPASS] start pkg=' + pkg + ' stub=http://127.0.0.1:30801');
  var STUB = 'http://127.0.0.1:30801';

  function guard(name, fn) { try { fn(); send('[OFFLINE-BYPASS] armed ' + name); } catch (e) { send('[OFFLINE-BYPASS] SKIP ' + name + ' ' + e.message); } }

  // ---- probe: formal has no Channel, legacy NativeInterface gone (expected) ----
  try { Java.use('com.netease.dwrg.Channel'); send('[OFFLINE-BYPASS] Channel PRESENT unexpected'); }
  catch (e) { send('[OFFLINE-BYPASS] Channel absent as expected'); }

  var P;
  try { P = Java.use('com.netease.neox.PluginUniSDK'); }
  catch (e) { send('[OFFLINE-BYPASS] FATAL no PluginUniSDK ' + e); return; }

  // decl census (F2 anchor: NativeOn* ~60)
  try {
    var decls = [];
    P.class.getDeclaredMethods().forEach(function (m) {
      var n = m.getName();
      if (n.indexOf('NativeOn') === 0) decls.push(n);
    });
    decls.sort();
    send('[OFFLINE-BYPASS] NativeOn decls(' + decls.length + ')=' + decls.join(',').substring(0, 900));
  } catch (e) { send('[OFFLINE-BYPASS] decl err ' + e); }

  // ---- [L1] loginDone/logoutDone/finishInit: force success ----
  guard('L1-loginDone', function () {
    P.loginDone.overload('int').implementation = function (code) {
      send('[OFFLINE-BYPASS][L1] loginDone in code=' + code + ' -> force 0');
      var r = this.loginDone(0);
      try { this.onSuccess(0, 'offline-bypass'); } catch (e) {}
      send('[OFFLINE-BYPASS][L1] loginDone out');
      return r;
    };
  });
  guard('L1-logoutDone', function () {
    P.logoutDone.overload('int').implementation = function (code) {
      send('[OFFLINE-BYPASS][L1] logoutDone in=' + code + ' -> 0');
      return this.logoutDone(0);
    };
  });
  guard('L1-finishInit', function () {
    P.finishInit.overload('int').implementation = function (code) {
      send('[OFFLINE-BYPASS][L1] finishInit -> 0');
      return this.finishInit(0);
    };
  });

  // ---- [L2] Verify: Failure -> Success ----
  guard('L2-onSuccess', function () {
    P.onSuccess.overload('int', 'java.lang.String').implementation = function (c, s) {
      send('[OFFLINE-BYPASS][L2] VerifySuccess code=' + c + ' msg=' + s);
      return this.onSuccess(c, s);
    };
  });
  guard('L2-onFailure', function () {
    P.onFailure.overload('int', 'java.lang.String').implementation = function (c, s) {
      send('[OFFLINE-BYPASS][L2] VerifyFailure code=' + c + ' msg=' + s + ' -> reroute Success');
      var r = this.onSuccess(0, 'offline-bypass');
      return r;
    };
  });
  guard('L2-ntVerifyOrder', function () {
    P.ntVerifyOrder.implementation = function () {
      send('[OFFLINE-BYPASS][L2] ntVerifyOrder -> immediate VerifySuccess');
      try { this.onSuccess(0, 'offline-bypass'); } catch (e) {}
      return this.ntVerifyOrder();
    };
  });

  // ---- [L3] OrderConsume: check/consume always pass ----
  guard('L3-orderCheckDone', function () {
    P.orderCheckDone.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      var j = ''; try { j = P.obj2Json(o); } catch (e) { j = '<obj2Json err>'; }
      send('[OFFLINE-BYPASS][L3] orderCheckDone ' + j);
      return this.orderCheckDone(o);
    };
  });
  guard('L3-orderConsumeDone', function () {
    P.orderConsumeDone.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      var j = ''; try { j = P.obj2Json(o); } catch (e) { j = '<obj2Json err>'; }
      send('[OFFLINE-BYPASS][L3] orderConsumeDone ' + j);
      return this.orderConsumeDone(o);
    };
  });
  guard('L3-ntCheckOrder', function () {
    P.ntCheckOrder.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      send('[OFFLINE-BYPASS][L3] ntCheckOrder -> pass + fire callbacks');
      try { this.orderCheckDone(o); } catch (e) {}
      try { this.onSuccess(0, 'offline-bypass'); } catch (e) {}
      return this.ntCheckOrder(o);
    };
  });
  guard('L3-ntConsume', function () {
    P.ntConsume.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      send('[OFFLINE-BYPASS][L3] ntConsume -> pass + fire callbacks');
      try { this.orderConsumeDone(o); } catch (e) {}
      try { this.onSuccess(0, 'offline-bypass'); } catch (e) {}
      return this.ntConsume(o);
    };
  });

  // ---- [L4] Share: always ok ----
  guard('L4-onShareFinished', function () {
    P.onShareFinished.overload('boolean').implementation = function (ok) {
      send('[OFFLINE-BYPASS][L4] onShareFinished in=' + ok + ' -> true');
      return this.onShareFinished(true);
    };
  });
  guard('L4-ntShare', function () {
    P.ntShare.overload('com.netease.ntunisdk.base.ShareInfo').implementation = function (s) {
      send('[OFFLINE-BYPASS][L4] ntShare -> immediate true callback');
      try { this.onShareFinished(true); } catch (e) {}
      return this.ntShare(s);
    };
  });

  // ---- [L5] WebView: local whitelist, never leaves device ----
  guard('L5-OnWebViewNativeCall', function () {
    P.OnWebViewNativeCall.overload('java.lang.String', 'java.lang.String').implementation = function (a, b) {
      send('[OFFLINE-BYPASS][L5] OnWebViewNativeCall a=' + a + ' b=' + b);
      return this.OnWebViewNativeCall(a, 'offline-ok');
    };
  });
  guard('L5-ntOpenWebView', function () {
    P.ntOpenWebView.overload('java.lang.String').implementation = function (u) {
      send('[OFFLINE-BYPASS][L5] ntOpenWebView blocked url=' + u + ' -> local ok');
      try { this.OnWebViewNativeCall(u, 'offline-ok'); } catch (e) {}
      return this.ntOpenWebView(STUB + '/webview_whitelist.json');
    };
  });

  // ---- [L6] lifecycle: startup/continue pass, exit blocked ----
  guard('L6-startupDone', function () {
    P.startupDone.implementation = function () {
      send('[OFFLINE-BYPASS][L6] startupDone');
      return this.startupDone();
    };
  });
  guard('L6-continueGame', function () {
    P.continueGame.implementation = function () {
      send('[OFFLINE-BYPASS][L6] continueGame (offline-continue)');
      return this.continueGame();
    };
  });
  guard('L6-exitApp', function () {
    P.exitApp.implementation = function () {
      send('[OFFLINE-BYPASS][L6] exitApp BLOCKED (prevent check-fail quit)');
      return;
    };
  });

  // ---- [L7] query surfaces: empty-list replay, no network ----
  guard('L7-querySku', function () {
    P.querySkuDetailsFinished.overload('java.util.List').implementation = function (l) {
      send('[OFFLINE-BYPASS][L7] querySkuDetailsFinished n=' + (l ? l.size() : -1));
      return this.querySkuDetailsFinished(l);
    };
  });
  guard('L7-queryFriend', function () {
    P.onQueryFriendListFinished.overload('java.util.List').implementation = function (l) {
      send('[OFFLINE-BYPASS][L7] onQueryFriendListFinished n=' + (l ? l.size() : -1));
      return this.onQueryFriendListFinished(l);
    };
  });
  guard('L7-queryRank', function () {
    P.onQueryRankFinished.overload('java.util.List').implementation = function (l) {
      send('[OFFLINE-BYPASS][L7] onQueryRankFinished n=' + (l ? l.size() : -1));
      return this.onQueryRankFinished(l);
    };
  });

  // ---- [N1-N3] URL rewrite: server_list/drpf/unisdk.update -> 127.0.0.1:30801 ----
  var OFFLINE_HOSTS = [
    'protocol.unisdk.netease.com', 'update.unisdk.163.com', 'update.unisdk.easebar.com',
    'unisdk.update.netease.com', 'unisdk.update.easebar.com',
    'h55.drpf.x.netease.com', 'appdump.x.netease.com',
    'h55.gsf.netease.com', 'g0.gsf.netease.com', 'g0.gsf.easebar.com',
    'h55.update.netease.com', 'nos.gameyw.netease.com', 'optsdk.gameyw.netease.com',
    'analytics.mpay.netease.com', 'sigma-androidsdk-epay.proxima.nie.netease.com',
    'epay.163.com', 'service.mkey.163.com'
  ];
  function toStub(url) {
    if (typeof url !== 'string') return url;
    for (var i = 0; i < OFFLINE_HOSTS.length; i++) {
      if (url.indexOf(OFFLINE_HOSTS[i]) >= 0) {
        var path = url.substring(url.indexOf(OFFLINE_HOSTS[i]) + OFFLINE_HOSTS[i].length);
        if (path === '' || path[0] !== '/') path = '/' + path;
        var nu = STUB + path;
        send('[OFFLINE-BYPASS][N] rewrite ' + url.substring(0, 110) + ' -> ' + nu.substring(0, 110));
        return nu;
      }
    }
    return url;
  }
  guard('N-URL', function () {
    var URL = Java.use('java.net.URL');
    URL.$init.overload('java.lang.String').implementation = function (s) {
      return this.$init(toStub(s));
    };
    try {
      var URI = Java.use('java.net.URI');
      URI.create.implementation = function (s) {
        return this.create(toStub(s));
      };
    } catch (e) { send('[OFFLINE-BYPASS][N] URI hook skip ' + e.message); }
    try {
      var OkHttp = Java.use('okhttp3.Request$Builder');
      OkHttp.url.overload('java.lang.String').implementation = function (s) {
        return this.url(toStub(s));
      };
    } catch (e) { send('[OFFLINE-BYPASS][N] OkHttp hook skip (absent ok) ' + e.message); }
  });

  // ---- [S1] SSL: log only, keep curl continuing-anyway native pass ----
  guard('S1-ssl', function () {
    try {
      var SSL = Java.use('javax.net.ssl.HttpsURLConnection');
      send('[OFFLINE-BYPASS][S1] HttpsURLConnection present, no override (system CA passes)');
    } catch (e) { send('[OFFLINE-BYPASS][S1] skip ' + e.message); }
  });

  send('[OFFLINE-BYPASS] ready L1-L7+N+S1 continuing-anyway');
});
