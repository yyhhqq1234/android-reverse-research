package org.json;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class oa {
    private static final String a = "oa";

    public static JSONObject a(Context context) {
        SDKUtils.loadGoogleAdvertiserInfo(context);
        String advertiserId = SDKUtils.getAdvertiserId();
        String limitAdTracking = SDKUtils.getLimitAdTracking();
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(advertiserId)) {
                Logger.i(a, "add AID");
                jSONObject.put("deviceIds[AID]", SDKUtils.encodeString(advertiserId));
            }
            if (!TextUtils.isEmpty(limitAdTracking)) {
                Logger.i(a, "add LAT");
                jSONObject.put(y8.i.M, Boolean.parseBoolean(limitAdTracking));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject;
    }

    private static void a(Context context, JSONObject jSONObject) {
        oe oeVarF = jl.P().f();
        try {
            if (a(y8.i.m0)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.m0), oeVarF.c(context));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void a(JSONObject jSONObject) {
        oe oeVarF = jl.P().f();
        try {
            a(jSONObject, y8.i.H, String.valueOf(oeVarF.d()));
            a(jSONObject, y8.i.I, String.valueOf(oeVarF.j()));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            jSONObject.put(str, SDKUtils.encodeString(str2));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static boolean a(String str) {
        return SDKUtils.getControllerConfigAsJSONObject().optBoolean(str);
    }

    public static JSONObject b(Context context) {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject);
        d(context, jSONObject);
        c(jSONObject);
        b(context, jSONObject);
        g(context, jSONObject);
        e(context, jSONObject);
        b(jSONObject);
        f(context, jSONObject);
        c(context, jSONObject);
        a(context, jSONObject);
        h(context, jSONObject);
        return jSONObject;
    }

    private static void b(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(y8.i.Y), jl.P().f().w(context));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void b(JSONObject jSONObject) {
        oe oeVarF = jl.P().f();
        try {
            if (a(y8.i.i0)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.i0), oeVarF.c());
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public static JSONObject c(Context context) {
        oe oeVarF = jl.P().f();
        pa paVarB = pa.b(context);
        JSONObject jSONObject = new JSONObject();
        try {
            String strD = paVarB.d();
            if (strD != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.k), SDKUtils.encodeString(strD));
            }
            String strC = paVarB.c();
            if (strC != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.l), SDKUtils.encodeString(strC));
            }
            String strE = paVarB.e();
            if (strE != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.m), SDKUtils.encodeString(strE));
            }
            String strF = paVarB.f();
            if (strF != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.n), strF.replaceAll("[^0-9/.]", ""));
            }
            String strF2 = paVarB.f();
            if (strF2 != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.o), SDKUtils.encodeString(strF2));
            }
            jSONObject.put(SDKUtils.encodeString(y8.i.p), String.valueOf(paVarB.a()));
            jSONObject.put(SDKUtils.encodeString(y8.i.q), SDKUtils.encodeString(SDKUtils.getSDKVersion()));
            if (paVarB.b() != null && paVarB.b().length() > 0) {
                jSONObject.put(SDKUtils.encodeString(y8.i.r), SDKUtils.encodeString(paVarB.b()));
            }
            String language = context.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.x), SDKUtils.encodeString(language.toUpperCase(Locale.getDefault())));
            }
            if (a(y8.i.j0)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.j0), SDKUtils.encodeString(String.valueOf(oeVarF.h(context))));
            }
            String strG = z3.g(context);
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(strG));
            }
            String strValueOf = String.valueOf(oeVarF.h());
            if (!TextUtils.isEmpty(strValueOf)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.K), SDKUtils.encodeString(strValueOf));
            }
            String strValueOf2 = String.valueOf(oeVarF.f());
            if (!TextUtils.isEmpty(strValueOf2)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.O), SDKUtils.encodeString(strValueOf2));
            }
            jSONObject.put(SDKUtils.encodeString("gpi"), zn.d(context));
            jSONObject.put("mcc", u8.b(context));
            jSONObject.put("mnc", u8.c(context));
            jSONObject.put(SDKUtils.encodeString(y8.i.S), u8.f(context));
            jSONObject.put(SDKUtils.encodeString(y8.i.R), SDKUtils.encodeString(u8.g(context)));
            jSONObject.put(SDKUtils.encodeString(y8.i.V), z3.f(context));
            jSONObject.put(SDKUtils.encodeString(y8.i.X), z3.d(context));
            jSONObject.put(SDKUtils.encodeString(y8.i.W), SDKUtils.encodeString(z3.b(context)));
            jSONObject.put(SDKUtils.encodeString("stid"), zn.c(context));
            String strE2 = z3.e(context);
            if (!TextUtils.isEmpty(strE2)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.c0), SDKUtils.encodeString(strE2));
            }
            jSONObject.put(y8.i.d0, SDKUtils.encodeString(String.valueOf(oeVarF.i())));
            jSONObject.put(y8.i.e0, SDKUtils.encodeString(String.valueOf(oeVarF.p())));
            String strN = oeVarF.n(context);
            if (!TextUtils.isEmpty(strN)) {
                jSONObject.put("icc", strN);
            }
            String strB = oeVarF.b();
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("tz", SDKUtils.encodeString(strB));
            }
            jSONObject.put("uxt", IronSourceStorageUtils.isUxt());
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject;
    }

    private static void c(Context context, JSONObject jSONObject) {
        oe oeVarF = jl.P().f();
        try {
            if (a(y8.i.l0)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.l0), oeVarF.l(context));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void c(JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(y8.i.y), SDKUtils.encodeString(String.valueOf(jl.P().f().n())));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void d(Context context, JSONObject jSONObject) {
        try {
            String strB = v8.b(context);
            String strD = v8.d(context);
            if (!TextUtils.isEmpty(strD)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.u), SDKUtils.encodeString(strD));
            }
            if (!TextUtils.isEmpty(strB) && !strB.equals("none")) {
                jSONObject.put(SDKUtils.encodeString(y8.i.t), SDKUtils.encodeString(strB));
            }
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put(SDKUtils.encodeString(y8.i.v), v8.e(context));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void e(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(y8.i.P), pa.b(context).a(context));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void f(Context context, JSONObject jSONObject) {
        oe oeVarF = jl.P().f();
        try {
            if (a(y8.i.k0)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.k0), oeVarF.G(context));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void g(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(md.H0), jl.P().f().q(context));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void h(Context context, JSONObject jSONObject) {
        oe oeVarF = jl.P().f();
        try {
            if (a(y8.i.n0)) {
                jSONObject.put(SDKUtils.encodeString(y8.i.n0), oeVarF.d(context));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }
}
