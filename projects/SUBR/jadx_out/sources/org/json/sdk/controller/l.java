package org.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import java.util.Map;
import org.json.JSONObject;
import org.json.dg;
import org.json.la;
import org.json.ll;
import org.json.q9;
import org.json.r9;
import org.json.s9;

/* JADX INFO: loaded from: classes3.dex */
public interface l {

    public interface a {
        void a(f.a aVar);
    }

    public interface b {
        void a(ll llVar);
    }

    void a();

    void a(Activity activity);

    void a(Context context);

    void a(la laVar);

    void a(la laVar, Map<String, String> map, q9 q9Var);

    void a(la laVar, Map<String, String> map, r9 r9Var);

    void a(f.c cVar, a aVar);

    void a(String str, r9 r9Var);

    void a(String str, String str2, la laVar, q9 q9Var);

    void a(String str, String str2, la laVar, r9 r9Var);

    void a(String str, String str2, la laVar, s9 s9Var);

    void a(JSONObject jSONObject);

    void a(JSONObject jSONObject, q9 q9Var);

    void a(JSONObject jSONObject, r9 r9Var);

    void a(JSONObject jSONObject, s9 s9Var);

    boolean a(String str);

    void b(Context context);

    void b(la laVar);

    void b(la laVar, Map<String, String> map, r9 r9Var);

    void b(JSONObject jSONObject);

    void d();

    void destroy();

    @Deprecated
    void e();

    void f();

    dg.c g();
}
