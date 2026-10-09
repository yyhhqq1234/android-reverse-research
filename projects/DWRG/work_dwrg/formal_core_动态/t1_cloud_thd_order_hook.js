/* T1 formal F2+ Cloud/download/thd/order同包URL hook — work_dwrg/formal_core_动态/t1_cloud_thd_order_hook.js
 * base: formal_dyn_/formal_dyn_hook_login.js (PluginUniSDK 12dex formal 2026.0828.1653 com.netease.dwrg)
 * add: 通用URL同包捕获 (URL/HttpURLConnection/OkHttp/WebView/Uri) + 文件侧thd/wpk/cloud/script/preload开放 + order链同包对照
 * use: frida -H 127.0.0.1:27042 -l t1_cloud_thd_order_hook.js -n com.netease.dwrg  (spawn: -f com.netease.dwrg)
 * filter downstream: grep -E "CLOUD|THD|ORDER|URL|WPK|PluginUniSDK" 即得Cloud/download/thd/order同包URL
 */
Java.perform(function () {
  var pkg = Java.use('android.app.ActivityThread').currentApplication().getPackageName();
  send('[T1] java.perform start pkg=' + pkg);
  function tag(s) {
    if (!s) return 'OTHER';
    var l = s.toLowerCase();
    var hit = [];
    if (l.indexOf('cloud') >= 0) hit.push('CLOUD');
    if (l.indexOf('download') >= 0) hit.push('DOWNLOAD');
    if (l.indexOf('thd') >= 0) hit.push('THD');
    if (l.indexOf('order') >= 0 || l.indexOf('mpay') >= 0 || l.indexOf('epay') >= 0) hit.push('ORDER');
    if (l.indexOf('wpk') >= 0 || l.indexOf('npk') >= 0) hit.push('WPK');
    if (l.indexOf('script') >= 0 || l.indexOf('preload') >= 0 || l.indexOf('pkgmapping') >= 0 || l.indexOf('h55') >= 0 || l.indexOf('gsf') >= 0 || l.indexOf('update.netease') >= 0) hit.push('REMOTE');
    if (hit.length === 0) return 'URL-OTHER';
    return hit.join('+');
  }
  function logUrl(prefix, s) {
    try {
      if (!s) return;
      var t = tag(s);
      // 全量URL打一行，同包判定下游用 grep CLOUD/DOWNLOAD/THD/ORDER/WPK/REMOTE
      send('[' + prefix + ':' + t + '] ' + s);
    } catch (e) {}
  }
  function guard(name, fn) { try { fn(); send('[T1-hook] ' + name + ' armed'); } catch (e) { send('[T1-hook] ' + name + ' SKIP ' + e.message); } }

  // ---- 0) T4 legacy presence probe (formal预期absent，封存测试版对照) ----
  try { Java.use('com.netease.dwrg.Channel'); send('[T1-Channel] PRESENT unexpected'); }
  catch (e) { send('[T1-Channel] absent as expected on formal'); }
  try {
    var NI = Java.use('com.netease.neox.NativeInterface');
    var found = [];
    NI.class.getDeclaredMethods().forEach(function (m) {
      var n = m.getName();
      if (n.indexOf('NativeOnLogin') >= 0 || n.indexOf('GMBridge') >= 0) found.push(n);
    });
    send('[T1-NativeInterface] legacy Login/GMBridge decls=' + JSON.stringify(found));
  } catch (e) { send('[T1-NativeInterface] err ' + e); }

  // ---- 1) PluginUniSDK decl枚举 (F2 60x锚) ----
  try {
    var P0 = Java.use('com.netease.neox.PluginUniSDK');
    var decls = [];
    P0.class.getDeclaredMethods().forEach(function (m) {
      var n = m.getName();
      if (n.indexOf('NativeOn') === 0) decls.push(n);
    });
    decls.sort();
    send('[T1-PluginUniSDK] NativeOn decls(' + decls.length + ')=' + decls.join(','));
  } catch (e) { send('[T1-PluginUniSDK decl err] ' + e); return; }
  var P = Java.use('com.netease.neox.PluginUniSDK');

  // ---- 2) F2 login/logout ----
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

  // ---- 3) order/consume/verify (ORDER同包核心) ----
  guard('orderCheckDone', function () {
    P.orderCheckDone.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      var j = ''; try { j = P.obj2Json(o); } catch (e) { j = String(o); }
      logUrl('ORDER-orderCheckDone', j);
      var r = this.orderCheckDone(o); send('[PluginUniSDK.orderCheckDone] returned'); return r;
    };
  });
  guard('orderConsumeDone', function () {
    P.orderConsumeDone.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      var j = ''; try { j = P.obj2Json(o); } catch (e) { j = String(o); }
      logUrl('ORDER-orderConsumeDone', j);
      var r = this.orderConsumeDone(o); send('[PluginUniSDK.orderConsumeDone] returned'); return r;
    };
  });
  guard('onSuccess(verify)', function () {
    P.onSuccess.overload('int', 'java.lang.String').implementation = function (c, s) {
      logUrl('ORDER-VerifySuccess', 'code=' + c + ' msg=' + s);
      return this.onSuccess(c, s);
    };
  });
  guard('onFailure(verify)', function () {
    P.onFailure.overload('int', 'java.lang.String').implementation = function (c, s) {
      logUrl('ORDER-VerifyFailure', 'code=' + c + ' msg=' + s);
      return this.onFailure(c, s);
    };
  });
  guard('ntCheckOrder', function () {
    P.ntCheckOrder.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      var j = ''; try { j = P.obj2Json(o); } catch (e) { j = String(o); }
      logUrl('ORDER-ntCheckOrder', j);
      return this.ntCheckOrder(o);
    };
  });
  guard('ntConsume', function () {
    P.ntConsume.overload('com.netease.ntunisdk.base.OrderInfo').implementation = function (o) {
      var j = ''; try { j = P.obj2Json(o); } catch (e) { j = String(o); }
      logUrl('ORDER-ntConsume', j);
      return this.ntConsume(o);
    };
  });
  guard('ntVerifyOrder', function () {
    P.ntVerifyOrder.implementation = function () {
      send('[PluginUniSDK.ntVerifyOrder] called'); return this.ntVerifyOrder();
    };
  });

  // ---- 4) share/webview (WebViewNativeCall同包URL) ----
  guard('OnWebViewNativeCall', function () {
    P.OnWebViewNativeCall.overload('java.lang.String', 'java.lang.String').implementation = function (a, b) {
      logUrl('URL-OnWebViewNativeCall-a', a); logUrl('URL-OnWebViewNativeCall-b', b);
      return this.OnWebViewNativeCall(a, b);
    };
  });
  guard('ntOpenWebView', function () {
    P.ntOpenWebView.overload('java.lang.String').implementation = function (u) {
      logUrl('URL-ntOpenWebView', u); return this.ntOpenWebView(u);
    };
  });
  guard('ntShare', function () {
    P.ntShare.overload('com.netease.ntunisdk.base.ShareInfo').implementation = function (s) {
      send('[PluginUniSDK.ntShare] called'); return this.ntShare(s);
    };
  });
  guard('onShareFinished', function () {
    P.onShareFinished.overload('boolean').implementation = function (ok) {
      send('[PluginUniSDK.onShareFinished] ok=' + ok); return this.onShareFinished(ok);
    };
  });

  // ---- 5) startup/lifecycle + query ----
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
  guard('querySkuDetailsFinished', function () {
    P.querySkuDetailsFinished.overload('java.util.List').implementation = function (l) {
      send('[PluginUniSDK.querySkuDetailsFinished] n=' + (l ? l.size() : -1));
      return this.querySkuDetailsFinished(l);
    };
  });

  // ---- 6) 通用URL同包钩 (Cloud/download/thd/order全收) ----
  guard('java.net.URL-$init', function () {
    var URL = Java.use('java.net.URL');
    URL.$init.overload('java.lang.String').implementation = function (s) {
      logUrl('URL-java.net.URL', s);
      return this.$init(s);
    };
  });
  guard('HttpURLConnection-connect', function () {
    var C = Java.use('java.net.HttpURLConnection');
    // connect()无参，取URL字段
    C.connect.implementation = function () {
      try { logUrl('URL-HttpURLConnection', this.getURL().toString()); } catch (e) {}
      return this.connect();
    };
  });
  guard('OkHttp-Request', function () {
    try {
      var Builder = Java.use('okhttp3.Request$Builder');
      Builder.url.overload('java.lang.String').implementation = function (u) {
        logUrl('URL-OkHttp3', u);
        return this.url(u);
      };
    } catch (e) { send('[T1-hook] OkHttp3 SKIP ' + e.message); }
    try {
      var Builder2 = Java.use('com.squareup.okhttp.Request$Builder');
      Builder2.url.overload('java.lang.String').implementation = function (u) {
        logUrl('URL-OkHttp2', u);
        return this.url(u);
      };
    } catch (e) {}
  });
  guard('WebView-loadUrl', function () {
    try {
      var WV = Java.use('android.webkit.WebView');
      WV.loadUrl.overload('java.lang.String').implementation = function (u) {
        logUrl('URL-WebView.loadUrl', u);
        return this.loadUrl(u);
      };
    } catch (e) { send('[T1-hook] WebView SKIP ' + e.message); }
  });
  guard('Uri-parse', function () {
    var Uri = Java.use('android.net.Uri');
    Uri.parse.overload('java.lang.String').implementation = function (s) {
      // 只打含关键字的，降噪
      if (s && /cloud|download|thd|order|wpk|npk|script|preload|pkgmapping|h55|gsf|mpay|epay/i.test(s)) logUrl('URL-Uri.parse', s);
      return this.parse(s);
    };
  });
  guard('Cronet-UrlRequest', function () {
    try {
      var B = Java.use('org.chromium.net.CronetEngine').newUrlRequestBuilder;
      // 枚举即可，overload多变，只打decl
      send('[T1-Cronet] present, builder decls enumerated');
    } catch (e) {}
  });

  // ---- 7) 文件侧 thd/wpk/cloud/script 开放 (fopen/open同包对照) ----
  // Java File构造 + open钩，native侧靠pcap+libclient strings互证
  guard('java.io.File-$init', function () {
    var F = Java.use('java.io.File');
    F.$init.overload('java.lang.String').implementation = function (p) {
      if (p && /thd|wpk|npk|cloud|script|preload|pkgmapping/i.test(p)) logUrl('FILE-java.io.File', p);
      return this.$init(p);
    };
  });

  send('[T1] ready F2+Cloud/download/thd/order同包URL Net+File双钩');
});
