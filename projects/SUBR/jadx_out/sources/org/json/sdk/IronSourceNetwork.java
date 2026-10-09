package org.json.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.json.bj;
import org.json.eg;
import org.json.kg;
import org.json.kn;
import org.json.l9;
import org.json.lg;
import org.json.oi;
import org.json.sdk.controller.e;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;
import org.json.si;
import org.json.tb;
import org.json.yi;

/* JADX INFO: loaded from: classes3.dex */
public class IronSourceNetwork {
    static final String a = "IronSourceNetwork";
    private static yi b;
    private static List<kn> c = new ArrayList();
    private static bj d;

    private static synchronized void a() throws Exception {
        if (b == null) {
            throw new NullPointerException("Call initSDK first");
        }
    }

    private static void a(Context context, JSONObject jSONObject, String str, String str2, Map<String, String> map) throws Exception {
        if (jSONObject != null) {
            tb tbVarA = lg.a(jSONObject);
            if (tbVarA.a()) {
                kg.a(tbVarA, lg.a(context, str, str2, map));
            }
        }
    }

    public static synchronized void addInitListener(kn knVar) {
        bj bjVar = d;
        if (bjVar == null) {
            c.add(knVar);
        } else if (bjVar.b()) {
            knVar.onSuccess();
        } else {
            knVar.onFail(d.getError());
        }
    }

    public static synchronized void destroyAd(oi oiVar) throws Exception {
        a();
        b.b(oiVar);
    }

    public static synchronized e getControllerManager() {
        return b.a();
    }

    public static String getVersion() {
        return SDKUtils.getSDKVersion();
    }

    public static synchronized void initSDK(Context context, String str, String str2, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            Logger.e(a, "applicationKey is NULL");
            return;
        }
        if (b == null) {
            SDKUtils.setInitSDKParams(map);
            try {
                a(context, SDKUtils.getNetworkConfiguration().optJSONObject("events"), str2, str, map);
            } catch (Exception e) {
                l9.d().a(e);
                Logger.e(a, "Failed to init event tracker: " + e.getMessage());
            }
            b = si.a(context, str, str2);
        }
    }

    public static synchronized boolean isAdAvailableForInstance(oi oiVar) {
        yi yiVar = b;
        if (yiVar == null) {
            return false;
        }
        return yiVar.a(oiVar);
    }

    public static synchronized void loadAd(oi oiVar, Map<String, String> map) throws Exception {
        a();
        b.a(oiVar, map);
    }

    public static synchronized void loadAdView(Activity activity, oi oiVar, Map<String, String> map) throws Exception {
        a();
        b.b(activity, oiVar, map);
    }

    public static void onPause(Activity activity) {
        yi yiVar = b;
        if (yiVar == null) {
            return;
        }
        yiVar.onPause(activity);
    }

    public static void onResume(Activity activity) {
        yi yiVar = b;
        if (yiVar == null) {
            return;
        }
        yiVar.onResume(activity);
    }

    public static synchronized void release(Activity activity) {
        yi yiVar = b;
        if (yiVar == null) {
            return;
        }
        yiVar.a(activity);
    }

    public static synchronized void showAd(Activity activity, oi oiVar, Map<String, String> map) throws Exception {
        a();
        b.a(activity, oiVar, map);
    }

    public static synchronized void updateInitFailed(eg egVar) {
        d = new bj(egVar);
        Iterator<kn> it = c.iterator();
        while (it.hasNext()) {
            it.next().onFail(egVar);
        }
        c.clear();
    }

    public static synchronized void updateInitSucceeded() {
        d = new bj();
        Iterator<kn> it = c.iterator();
        while (it.hasNext()) {
            it.next().onSuccess();
        }
        c.clear();
    }
}
