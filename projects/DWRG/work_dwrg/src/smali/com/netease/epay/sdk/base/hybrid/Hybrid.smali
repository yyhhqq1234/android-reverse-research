.class public Lcom/netease/epay/sdk/base/hybrid/Hybrid;
.super Ljava/lang/Object;
.source "Hybrid.java"


# static fields
.field private static final JSBRIDGE:Ljava/lang/String; = "!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module \'\"+g+\"\'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);"

.field private static final KEY_BRIDGE:Ljava/lang/String; = "__bridge__"

.field private static handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netease/epay/sdk/base/hybrid/HybridHandler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected absHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/hybrid/HybridHandler;",
            ">;"
        }
    .end annotation
.end field

.field private injectRunnable:Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;

.field private isInjectedJS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handlerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->absHandlers:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public static addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netease/epay/sdk/base/hybrid/HybridHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/netease/epay/sdk/base/hybrid/HybridHandler;>;"
    sget-object v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method private injectBridge(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 86
    const-string v0, "javascript:!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module \'\"+g+\"\'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);"

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 88
    const-string v0, "javascript:!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module \'\"+g+\"\'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "javascript:!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module \'\"+g+\"\'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInjectSuccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "promptDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "__bridge__ready__"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isJsPromptCallNative(Ljava/lang/String;)Z
    .locals 1
    .param p1, "promptDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "__bridge__"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkValidity(Lorg/json/JSONObject;)I
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 198
    sget-object v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handlerMap:Ljava/util/Map;

    const-string v1, "command"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createHandlerByCommand(Ljava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/HybridHandler;
    .locals 2
    .param p1, "cmdName"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/hybrid/HybridHandler;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The default constructor is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateCallback(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsPromptResult;Lcom/netease/epay/sdk/base/hybrid/Hybrid;Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)Lcom/netease/epay/sdk/base/hybrid/JsCallback;
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "jsPromptResult"    # Landroid/webkit/JsPromptResult;
    .param p4, "hybrid"    # Lcom/netease/epay/sdk/base/hybrid/Hybrid;
    .param p5, "handler"    # Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

    .prologue
    .line 183
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;-><init>(Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/JsPromptResult;Lcom/netease/epay/sdk/base/hybrid/Hybrid;Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)V

    return-object v0
.end method

.method protected handleCommand(Landroid/webkit/WebView;Lorg/json/JSONObject;Landroid/webkit/JsPromptResult;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "jsonMessage"    # Lorg/json/JSONObject;
    .param p3, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v8, 0x0

    .line 155
    const-string v0, "callbackId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string v0, "command"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-virtual {p0, p2}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->checkValidity(Lorg/json/JSONObject;)I

    move-result v7

    .line 158
    if-nez v7, :cond_3

    .line 160
    invoke-virtual {p0, v6}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->createHandlerByCommand(Ljava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p0

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->generateCallback(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsPromptResult;Lcom/netease/epay/sdk/base/hybrid/Hybrid;Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;

    .line 162
    if-eqz v5, :cond_0

    .line 164
    :try_start_0
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v5, p1, v6, v1, v0}, Lcom/netease/epay/sdk/base/hybrid/HybridHandler;->handle(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->absHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isPermanent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    :cond_1
    invoke-virtual {p3, v8}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->removeJsPromptResult()V

    .line 179
    :cond_2
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p0

    move-object v5, v8

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->generateCallback(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsPromptResult;Lcom/netease/epay/sdk/base/hybrid/Hybrid;Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    move-result-object v0

    .line 177
    invoke-static {v7, v6}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->createRep(ILjava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    goto :goto_1
.end method

.method public handlePrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p3}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->isInjectSuccess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->injectRunnable:Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->reset()V

    .line 135
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->injectBridge(Landroid/webkit/WebView;)V

    .line 136
    invoke-virtual {p4}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 151
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-direct {p0, p3}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->isJsPromptCallNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-virtual {p0, p1, v1, p4}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handleCommand(Landroid/webkit/WebView;Lorg/json/JSONObject;Landroid/webkit/JsPromptResult;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->createRep(ILjava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initJSBridge(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->injectRunnable:Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->injectRunnable:Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;

    .line 77
    :cond_0
    const/16 v0, 0x19

    if-gt p2, v0, :cond_2

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->isInjectedJS:Z

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->isInjectedJS:Z

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->isInjectedJS:Z

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->injectRunnable:Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->start()V

    goto :goto_0
.end method

.method protected removeHandler(Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->absHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method
