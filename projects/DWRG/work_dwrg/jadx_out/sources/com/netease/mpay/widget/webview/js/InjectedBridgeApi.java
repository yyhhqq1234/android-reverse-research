package com.netease.mpay.widget.webview.js;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class InjectedBridgeApi {
    private Activity a;
    private Config b;
    private e c;

    /* JADX INFO: Access modifiers changed from: protected */
    public InjectedBridgeApi(Activity activity, Config config, e eVar) {
        this.a = activity;
        this.b = config;
        this.c = eVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a(String str, String str2, String str3) {
        Method[] declaredMethods = getClass().getDeclaredMethods();
        for (int i = 0; i < declaredMethods.length; i++) {
            if (str.equals(declaredMethods[i].getName())) {
                try {
                    if (TextUtils.equals(str2, "?EMPTY_PLACE_HOLDER")) {
                        declaredMethods[i].invoke(this, new Object[0]);
                    } else if (TextUtils.equals(str3, "?EMPTY_PLACE_HOLDER")) {
                        declaredMethods[i].invoke(this, str2);
                    } else if (!TextUtils.equals(str2, "?EMPTY_PLACE_HOLDER") && !TextUtils.equals(str3, "?EMPTY_PLACE_HOLDER")) {
                        declaredMethods[i].invoke(this, str2, str3);
                    }
                    return true;
                } catch (IllegalAccessException e) {
                    g.a(e);
                } catch (IllegalArgumentException e2) {
                    g.a(e2);
                } catch (InvocationTargetException e3) {
                    g.a(e3);
                }
            }
        }
        return false;
    }

    public static boolean available(Activity activity) {
        return c.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        if (this.b == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", this.b.isLandscape ? 1 : 0);
            jSONObject.put("version", this.b.versionCode);
            jSONObject.put("debug_mode", this.b.debug);
            jSONObject.put("app_type", this.b.appType);
        } catch (JSONException e) {
            g.a(e);
        }
        return jSONObject.toString();
    }

    public void alert(String str) {
        g.a("Js called: alert " + str);
        this.c.alert(str);
    }

    public void changeNavigationTitle(String str) {
        g.a("Js called: changeNavigationTitle");
        this.c.changeNavigationTitle(str);
    }

    public void closeWindow() {
        g.a("Js called: closeWindow");
        this.c.closeWindow();
    }

    public boolean dispatch(String str) {
        if (this.a == null || this.a.isFinishing()) {
            return true;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return a(jSONObject.getString("method"), jSONObject.optString("arg1", "?EMPTY_PLACE_HOLDER"), jSONObject.optString("arg2", "?EMPTY_PLACE_HOLDER"));
        } catch (JSONException e) {
            g.a(e);
            return false;
        }
    }

    public void jumpToMobileChangePage() {
        g.a("Js called: jumpToMobileChangePage");
        this.c.jumpToMobileChangePage();
    }

    public void onError(String str) {
        g.a("Js called: onError " + str);
        try {
            this.c.onError(Integer.valueOf(str).intValue());
        } catch (NumberFormatException e) {
            g.a(e);
        }
    }

    public void onMobileBindRelatedAccount(String str) {
        g.a("Js called: onMobileBindRelatedAccount " + str);
        this.c.onMobileBindRelatedAccount(str);
    }

    public void onMobileChanged(String str) {
        g.a("Js called: onMobileChanged " + str);
        this.c.onMobileChanged(str);
    }

    public void onPayFinished(String str) {
        g.a("Js called: onPayFinished " + str);
        try {
            this.c.onPayFinished(((JSONObject) new JSONTokener(str).nextValue()).optInt("code", -1));
        } catch (JSONException e) {
            g.a(e);
        }
    }

    public void onPayRedirect(String str) {
        g.a("Js called: onPayRedirect " + str);
        try {
            this.c.onPayRedirect(((JSONObject) new JSONTokener(str).nextValue()).optInt("redirect", -1));
        } catch (JSONException e) {
            g.a(e);
        }
    }

    public void onQrcodeLogin(String str, String str2) {
        g.a("Js called: onQrcodeLogin " + str + ", " + str2);
        this.c.onQrcodeLogin(str, str2);
    }

    public void onReady() {
        g.a("Js called: onReady");
        this.c.onReady();
    }

    public void onRealnameVerify() {
        g.a("Js called: onRealnameVerify");
        this.c.onRealnameVerify();
    }

    public void onTokenRefresh(String str) {
        g.a("Js called: onTokenRefresh " + str);
        this.c.onTokenRefresh(str);
    }

    public void onUrsMobileLogin(String str) {
        g.a("Js called: onUrsMobileLogin " + str);
        this.c.onUrsMobileLogin(str);
    }

    public void onUserLogin(String str) {
        g.a("Js called: onUserLogin " + str);
        this.c.onUserLogin(str);
    }

    public void onUserLogout() {
        g.a("Js called: onUserLogout");
        this.c.onUserLogout();
    }

    public void onVerify(String str) {
        g.a("Js called: onVerify " + str);
        this.c.onVerify(str);
    }

    public void onVerifyRelatedMobile() {
        g.a("Js called: onVerifyRelatedMobile");
        this.c.onVerifyRelatedMobile();
    }

    public void onVerifyRelatedMobile(String str) {
        g.a("Js called: onVerifyRelatedMobile " + str);
        if (TextUtils.isEmpty(str)) {
            this.c.onVerifyRelatedMobile();
        } else {
            this.c.onVerifyRelatedMobile(str);
        }
    }

    public void onWindowClose() {
        g.a("Js called: onWindowClose");
        if (this.a == null || this.a.isFinishing()) {
            return;
        }
        this.c.closeWindow();
    }

    public void openLinkInNativeBrowser(String str) {
        g.a("Js called: openLinkInNativeBrowser " + str);
        this.c.a(str);
    }

    public void saveImage(String str) {
        g.a("Js called: saveToClipboard " + str);
        this.c.saveImage(str);
    }

    public void saveToClipboard(String str) {
        g.a("Js called: saveToClipboard " + str);
        this.c.saveToClipboard(str);
    }

    public void setBackButton(String str) {
        g.a("Js called: setBackButton " + str);
        this.c.setBackButton(new Boolean(str).booleanValue());
    }

    public void setUrlPrefixForNativeBrowser(String str) {
        g.a("Js called: setUrlPrefixForNativeBrowser " + str);
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            this.c.a(arrayList);
        } catch (JSONException e) {
            g.a(e);
        }
    }

    public void toast(String str) {
        g.a("Js called: toast " + str);
        this.c.toast(str);
    }
}
