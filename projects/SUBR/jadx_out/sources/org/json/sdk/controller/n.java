package org.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import java.util.Map;
import org.json.Cif;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.dg;
import org.json.l9;
import org.json.la;
import org.json.mediationsdk.logger.IronLog;
import org.json.q9;
import org.json.r9;
import org.json.s9;

/* JADX INFO: loaded from: classes3.dex */
public class n implements l {
    private final Cif a;
    private final String b;

    class a implements Runnable {
        final /* synthetic */ l.a a;
        final /* synthetic */ com.ironsource.sdk.controller.f.c b;

        a(l.a aVar, com.ironsource.sdk.controller.f.c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.a == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("success", false);
                jSONObject.put("reason", n.this.b);
                this.a.a(new com.ironsource.sdk.controller.f.a(this.b.getCom.ironsource.sdk.controller.f.b.b java.lang.String(), jSONObject));
            } catch (JSONException e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ s9 a;
        final /* synthetic */ la b;

        b(s9 s9Var, la laVar) {
            this.a = s9Var;
            this.b = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(dg.e.RewardedVideo, this.b.h(), n.this.b);
        }
    }

    class c implements Runnable {
        final /* synthetic */ s9 a;
        final /* synthetic */ JSONObject b;

        c(s9 s9Var, JSONObject jSONObject) {
            this.a = s9Var;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    class d implements Runnable {
        final /* synthetic */ r9 a;
        final /* synthetic */ la b;

        d(r9 r9Var, la laVar) {
            this.a = r9Var;
            this.b = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(dg.e.Interstitial, this.b.h(), n.this.b);
        }
    }

    class e implements Runnable {
        final /* synthetic */ r9 a;
        final /* synthetic */ String b;

        e(r9 r9Var, String str) {
            this.a = r9Var;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c(this.b, n.this.b);
        }
    }

    class f implements Runnable {
        final /* synthetic */ r9 a;
        final /* synthetic */ la b;

        f(r9 r9Var, la laVar) {
            this.a = r9Var;
            this.b = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c(this.b.h(), n.this.b);
        }
    }

    class g implements Runnable {
        final /* synthetic */ r9 a;
        final /* synthetic */ JSONObject b;

        g(r9 r9Var, JSONObject jSONObject) {
            this.a = r9Var;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    class h implements Runnable {
        final /* synthetic */ r9 a;
        final /* synthetic */ la b;

        h(r9 r9Var, la laVar) {
            this.a = r9Var;
            this.b = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b(this.b.h(), n.this.b);
        }
    }

    class i implements Runnable {
        final /* synthetic */ q9 a;
        final /* synthetic */ Map b;

        i(q9 q9Var, Map map) {
            this.a = q9Var;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a((String) this.b.get("demandSourceName"), n.this.b);
        }
    }

    class j implements Runnable {
        final /* synthetic */ q9 a;
        final /* synthetic */ JSONObject b;

        j(q9 q9Var, JSONObject jSONObject) {
            this.a = q9Var;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    n(String str, Cif cif) {
        this.a = cif;
        this.b = str;
    }

    @Override // org.json.sdk.controller.l
    public void a() {
    }

    @Override // org.json.sdk.controller.l
    public void a(Activity activity) {
    }

    @Override // org.json.sdk.controller.l
    public void a(Context context) {
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar) {
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar, Map<String, String> map, q9 q9Var) {
        if (q9Var != null) {
            a(new i(q9Var, map));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar, Map<String, String> map, r9 r9Var) {
        if (r9Var != null) {
            a(new h(r9Var, laVar));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(com.ironsource.sdk.controller.f.c cVar, l.a aVar) {
        a(new a(aVar, cVar));
    }

    void a(Runnable runnable) {
        Cif cif = this.a;
        if (cif != null) {
            cif.c(runnable);
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, r9 r9Var) {
        if (r9Var != null) {
            a(new e(r9Var, str));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, q9 q9Var) {
        if (q9Var != null) {
            q9Var.a(dg.e.Banner, laVar.h(), this.b);
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, r9 r9Var) {
        if (r9Var != null) {
            a(new d(r9Var, laVar));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, s9 s9Var) {
        if (s9Var != null) {
            a(new b(s9Var, laVar));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject) {
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, q9 q9Var) {
        if (q9Var != null) {
            a(new j(q9Var, jSONObject));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, r9 r9Var) {
        if (r9Var != null) {
            a(new g(r9Var, jSONObject));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, s9 s9Var) {
        if (s9Var != null) {
            a(new c(s9Var, jSONObject));
        }
    }

    @Override // org.json.sdk.controller.l
    public boolean a(String str) {
        return false;
    }

    @Override // org.json.sdk.controller.l
    public void b(Context context) {
    }

    @Override // org.json.sdk.controller.l
    public void b(la laVar) {
    }

    @Override // org.json.sdk.controller.l
    public void b(la laVar, Map<String, String> map, r9 r9Var) {
        if (r9Var != null) {
            a(new f(r9Var, laVar));
        }
    }

    @Override // org.json.sdk.controller.l
    public void b(JSONObject jSONObject) {
    }

    @Override // org.json.sdk.controller.l
    public void d() {
    }

    @Override // org.json.sdk.controller.l
    public void destroy() {
    }

    @Override // org.json.sdk.controller.l
    public void e() {
    }

    @Override // org.json.sdk.controller.l
    public void f() {
    }

    @Override // org.json.sdk.controller.l
    public dg.c g() {
        return dg.c.Native;
    }
}
