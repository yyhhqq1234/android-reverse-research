package com.netease.epay.sdk.base.hybrid;

import android.os.Build;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.common.FinanceRep;
import com.netease.epay.sdk.base.hybrid.common.JsConstant;
import com.netease.epay.sdk.base.hybrid.handle.OpenEpayAppHandler;
import com.netease.epay.sdk.base.hybrid.handle.OpenOuterAPPHandler;
import com.netease.epay.sdk.base.hybrid.handle.SetClipboardHandler;
import com.netease.epay.sdk.base.hybrid.handle.SetPageClosePromptHandler;
import com.netease.epay.sdk.base.hybrid.handle.ShowToastHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Hybrid {
    private static final String JSBRIDGE = "!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module '\"+g+\"'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);";
    private static final String KEY_BRIDGE = "__bridge__";
    private static Map<String, Class<? extends HybridHandler>> handlerMap = new HashMap<String, Class<? extends HybridHandler>>() { // from class: com.netease.epay.sdk.base.hybrid.Hybrid.1
        {
            put(JsConstant.HYBRID_CMD_OPENOUTERAPP, OpenOuterAPPHandler.class);
            put(JsConstant.HYBRID_CMD_SETCLIPBOARD, SetClipboardHandler.class);
            put(JsConstant.HYBRID_CMD_OPENEPAYAPP, OpenEpayAppHandler.class);
            put(JsConstant.HYBRID_CMD_SHOWTOAST, ShowToastHandler.class);
            put(JsConstant.HYBRID_CMD_SET_PAGE_CLOSE_PROMPT, SetPageClosePromptHandler.class);
        }
    };
    protected ArrayList<HybridHandler> absHandlers = new ArrayList<>();
    private InjectRunnable injectRunnable;
    private boolean isInjectedJS;

    public static void addHandlerType(String command, Class<? extends HybridHandler> handlerClass) {
        handlerMap.put(command, handlerClass);
    }

    public void initJSBridge(WebView webView, int newProgress) {
        if (this.injectRunnable == null) {
            this.injectRunnable = new InjectRunnable(webView);
        }
        if (newProgress <= 25) {
            this.isInjectedJS = false;
        } else if (!this.isInjectedJS) {
            this.isInjectedJS = true;
            this.injectRunnable.start();
        }
    }

    private void injectBridge(WebView webView) {
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript("javascript:!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module '\"+g+\"'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);", null);
        } else {
            webView.loadUrl("javascript:!function a(b,c,d){function e(g,h){if(!c[g]){if(!b[g]){var i=\"function\"==typeof require&&require;if(!h&&i)return i(g,!0);if(f)return f(g,!0);var j=new Error(\"Cannot find module '\"+g+\"'\");throw j.code=\"MODULE_NOT_FOUND\",j}var k=c[g]={exports:{}};b[g][0].call(k.exports,function(a){var c=b[g][1][a];return e(c?c:a)},k,k.exports,a,b,c,d)}return c[g].exports}for(var f=\"function\"==typeof require&&require,g=0;g<d.length;g++)e(d[g]);return e}({1:[function(a,b,c){\"use strict\";function d(a){return a&&a.__esModule?a:{default:a}}var e=a(\"./common/index\"),f=d(e),g=a(\"./android/init-bridge\"),h=d(g);(0,f.default)(h.default)},{\"./android/init-bridge\":2,\"./common/index\":3}],2:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(a,b){var e=setTimeout(0),f=\"cb_\"+e+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[f]=b,a.callbackId=f,setTimeout(function(){c(a,b)},0)}function c(a,b){if(window.EPNB.callNative)window.EPNB.callNative(a,b);else{var c=window.prompt(JSON.stringify(a),\"__bridge__\");c&&b(JSON.parse(c))}}var d={};window.EPNB=window.EPNB||{},a.invoke=function(a,c,e){if(a&&\"string\"==typeof a){\"object\"==typeof c&&\"[object Array]\"!==Object.prototype.toString.call(c)&&(e=c,c=null);for(var f in e)if(e.hasOwnProperty(f)){var g=e[f];if(\"function\"==typeof g&&!(f in{success:1,fail:1,cancel:1,complete:1})){var h=setTimeout(0),i=\"cb_\"+h+\"_\"+(Math.random()+\"\").replace(/\\D/g,\"\");d[i]=g,e[f]=i}}\"object\"!=typeof e&&(e={}),b({command:a,data:{msg:e||{},v:e.v||2}},c||function(){})}},window.EPNB.callJS=function(a,b){var c=d[a];c&&\"function\"==typeof c&&c(b)},window.EPNB.postMessage=function(b){b&&(a.isReady?location.href=b:setTimeout(function(){location.href=b},300))}},b.exports=c.default},{}],3:[function(a,b,c){\"use strict\";Object.defineProperty(c,\"__esModule\",{value:!0}),c.default=function(a){function b(){g&&(f.removeEventListener(\"EPNBReady\",b),d())}function c(){g=!0,e._webViewEPNBReady&&(f.removeEventListener(\"DOMContentLoaded\",c,!1),e.removeEventListener(\"load\",c,!1),d())}function d(){var b=e.NEJB=e.NEJB||{};if(!b.isReady){b.isReady=!0,a(b);var c=f.createEvent(\"Events\"),d=\"NEJBReady\";c.initEvent(d),c.bridge=b,f.dispatchEvent(c)}}var e=window,f=e.document,g=!1;e._webViewEPNBReady&&b(),f.addEventListener(\"EPNBReady\",b),/complete|loaded|interactive/.test(f.readyState)&&f.body&&c(),f.addEventListener(\"DOMContentLoaded\",c,!1),e.addEventListener(\"load\",c,!1)},b.exports=c.default},{}]},{},[1]);");
        }
    }

    protected HybridHandler createHandlerByCommand(String cmdName) {
        try {
            return handlerMap.get(cmdName).newInstance();
        } catch (IllegalAccessException e) {
            throw new RuntimeException("The default constructor is missing");
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private boolean isJsPromptCallNative(String promptDefaultValue) {
        return TextUtils.equals(promptDefaultValue, KEY_BRIDGE);
    }

    private boolean isInjectSuccess(String promptDefaultValue) {
        return TextUtils.equals(promptDefaultValue, "__bridge__ready__");
    }

    public boolean handlePrompt(WebView view, String message, String defaultValue, JsPromptResult result) {
        if (isInjectSuccess(defaultValue)) {
            this.injectRunnable.reset();
            injectBridge(view);
            result.confirm();
            return true;
        }
        if (isJsPromptCallNative(defaultValue) && !TextUtils.isEmpty(message)) {
            try {
                handleCommand(view, new JSONObject(message), result);
                return true;
            } catch (JSONException e) {
                e.printStackTrace();
                result.confirm(FinanceRep.createRep(3, null).toString());
                return true;
            }
        }
        return false;
    }

    protected void handleCommand(WebView view, JSONObject jsonMessage, JsPromptResult result) {
        String optString = jsonMessage.optString(JsConstant.CALLBACKID);
        String optString2 = jsonMessage.optString(JsConstant.COMMAND);
        int checkValidity = checkValidity(jsonMessage);
        if (checkValidity == 0) {
            HybridHandler createHandlerByCommand = createHandlerByCommand(optString2);
            JsCallbackImpl jsCallbackImpl = (JsCallbackImpl) generateCallback(view, optString, result, this, createHandlerByCommand);
            if (createHandlerByCommand != null) {
                try {
                    createHandlerByCommand.handle(view, optString2, jsonMessage.optJSONObject("data"), jsCallbackImpl);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.absHandlers.add(createHandlerByCommand);
            if (jsCallbackImpl.isPermanent() || !jsCallbackImpl.isExpired()) {
                result.confirm(null);
                jsCallbackImpl.removeJsPromptResult();
                return;
            }
            return;
        }
        generateCallback(view, optString, result, this, null).confirm(FinanceRep.createRep(checkValidity, optString2));
    }

    protected JsCallback generateCallback(WebView webView, String callbackId, JsPromptResult jsPromptResult, Hybrid hybrid, HybridHandler handler) {
        return new JsCallbackImpl(callbackId, webView, jsPromptResult, hybrid, handler);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeHandler(HybridHandler handler) {
        this.absHandlers.remove(handler);
    }

    protected int checkValidity(JSONObject jsonObject) {
        return !handlerMap.containsKey(jsonObject.optString(JsConstant.COMMAND)) ? 1 : 0;
    }
}
