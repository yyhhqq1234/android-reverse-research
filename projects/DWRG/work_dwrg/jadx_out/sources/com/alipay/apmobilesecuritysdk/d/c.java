package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
import com.alipay.apmobilesecuritysdk.f.f;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {
    public static Map<String, String> a(Context context) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        com.alipay.b.a.a.b.b a = com.alipay.b.a.a.b.b.a();
        HashMap hashMap = new HashMap();
        f a2 = com.alipay.apmobilesecuritysdk.f.e.a(context);
        String a3 = com.alipay.b.a.a.b.b.a(context);
        String b = com.alipay.b.a.a.b.b.b(context);
        String l = com.alipay.b.a.a.b.b.l(context);
        String o = com.alipay.b.a.a.b.b.o(context);
        String n = com.alipay.b.a.a.b.b.n(context);
        if (a2 != null) {
            if (com.alipay.b.a.a.a.a.a(a3)) {
                a3 = a2.a();
            }
            if (com.alipay.b.a.a.a.a.a(b)) {
                b = a2.b();
            }
            if (com.alipay.b.a.a.a.a.a(l)) {
                l = a2.c();
            }
            if (com.alipay.b.a.a.a.a.a(o)) {
                o = a2.d();
            }
            if (com.alipay.b.a.a.a.a.a(n)) {
                n = a2.e();
            }
            str = n;
            str2 = o;
            str3 = l;
            str4 = b;
            str5 = a3;
        } else {
            str = n;
            str2 = o;
            str3 = l;
            str4 = b;
            str5 = a3;
        }
        f fVar = new f(str5, str4, str3, str2, str);
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("imei", fVar.a());
                jSONObject.put("imsi", fVar.b());
                jSONObject.put("mac", fVar.c());
                jSONObject.put("bluetoothmac", fVar.d());
                jSONObject.put("gsi", fVar.e());
                String jSONObject2 = jSONObject.toString();
                com.alipay.apmobilesecuritysdk.g.a.a("device_feature_file_name", "device_feature_file_key", jSONObject2);
                com.alipay.apmobilesecuritysdk.g.a.a(context, "device_feature_prefs_name", "device_feature_prefs_key", jSONObject2);
            } catch (Exception e) {
                com.alipay.apmobilesecuritysdk.c.a.a(e);
            }
        }
        hashMap.put("AD1", str5);
        hashMap.put("AD2", str4);
        hashMap.put("AD3", com.alipay.b.a.a.b.b.g(context));
        hashMap.put("AD5", com.alipay.b.a.a.b.b.i(context));
        hashMap.put("AD6", com.alipay.b.a.a.b.b.j(context));
        hashMap.put("AD7", com.alipay.b.a.a.b.b.k(context));
        hashMap.put("AD8", str3);
        hashMap.put("AD9", com.alipay.b.a.a.b.b.m(context));
        hashMap.put("AD10", str);
        hashMap.put("AD11", com.alipay.b.a.a.b.b.d());
        hashMap.put("AD12", a.e());
        hashMap.put("AD13", com.alipay.b.a.a.b.b.f());
        hashMap.put("AD14", com.alipay.b.a.a.b.b.h());
        hashMap.put("AD15", com.alipay.b.a.a.b.b.i());
        hashMap.put("AD16", com.alipay.b.a.a.b.b.j());
        hashMap.put("AD17", "");
        hashMap.put("AD18", str2);
        hashMap.put("AD19", com.alipay.b.a.a.b.b.p(context));
        hashMap.put("AD20", com.alipay.b.a.a.b.b.k());
        hashMap.put("AD21", com.alipay.b.a.a.b.b.f(context));
        hashMap.put("AD22", "");
        hashMap.put("AD23", com.alipay.b.a.a.b.b.l());
        hashMap.put("AD24", com.alipay.b.a.a.a.a.f(com.alipay.b.a.a.b.b.h(context)));
        hashMap.put("AD26", com.alipay.b.a.a.b.b.e(context));
        hashMap.put("AD27", com.alipay.b.a.a.b.b.q());
        hashMap.put("AD28", com.alipay.b.a.a.b.b.s());
        hashMap.put("AD29", com.alipay.b.a.a.b.b.u());
        hashMap.put("AD30", com.alipay.b.a.a.b.b.r());
        hashMap.put("AD31", com.alipay.b.a.a.b.b.t());
        hashMap.put("AD32", com.alipay.b.a.a.b.b.o());
        hashMap.put("AD33", com.alipay.b.a.a.b.b.p());
        hashMap.put("AD34", com.alipay.b.a.a.b.b.s(context));
        hashMap.put("AD35", com.alipay.b.a.a.b.b.t(context));
        hashMap.put("AD36", com.alipay.b.a.a.b.b.r(context));
        hashMap.put("AD37", com.alipay.b.a.a.b.b.n());
        hashMap.put("AD38", com.alipay.b.a.a.b.b.m());
        hashMap.put("AD39", com.alipay.b.a.a.b.b.c(context));
        hashMap.put("AD40", com.alipay.b.a.a.b.b.d(context));
        hashMap.put("AD41", com.alipay.b.a.a.b.b.b());
        hashMap.put("AD42", com.alipay.b.a.a.b.b.c());
        hashMap.put("AL3", com.alipay.b.a.a.b.b.q(context));
        return hashMap;
    }
}
