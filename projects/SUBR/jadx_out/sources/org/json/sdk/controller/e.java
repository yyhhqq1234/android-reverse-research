package org.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.Cif;
import org.json.JSONObject;
import org.json.b9;
import org.json.bv;
import org.json.dg;
import org.json.eg;
import org.json.fg;
import org.json.j0;
import org.json.jl;
import org.json.kc;
import org.json.kg;
import org.json.l9;
import org.json.la;
import org.json.lc;
import org.json.lg;
import org.json.ll;
import org.json.ma;
import org.json.ml;
import org.json.mm;
import org.json.n8;
import org.json.p3;
import org.json.q9;
import org.json.r9;
import org.json.rb;
import org.json.s9;
import org.json.sdk.IronSourceNetwork;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.Logger;
import org.json.va;
import org.json.vd;
import org.json.xd;
import org.json.y8;
import org.json.zp;

/* JADX INFO: loaded from: classes3.dex */
public class e implements org.json.sdk.controller.c, org.json.sdk.controller.l {
    private org.json.sdk.controller.l b;
    private CountDownTimer d;
    private final Cif g;
    private final bv h;
    private final mm k;
    private final String a = "e";
    private dg.b c = dg.b.None;
    private final n8 e = new n8("NativeCommandExecutor");
    private final n8 f = new n8("ControllerCommandsExecutor");
    private final Map<String, com.ironsource.sdk.controller.l.a> i = new HashMap();
    private final Map<String, com.ironsource.sdk.controller.l.b> j = new HashMap();

    class a implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ r9 b;

        a(JSONObject jSONObject, r9 r9Var) {
            this.a = jSONObject;
            this.b = r9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ la a;
        final /* synthetic */ Map b;
        final /* synthetic */ r9 c;

        b(la laVar, Map map, r9 r9Var) {
            this.a = laVar;
            this.b = map;
            this.c = r9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c);
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ la c;
        final /* synthetic */ q9 d;

        c(String str, String str2, la laVar, q9 q9Var) {
            this.a = str;
            this.b = str2;
            this.c = laVar;
            this.d = q9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ q9 b;

        d(JSONObject jSONObject, q9 q9Var) {
            this.a = jSONObject;
            this.b = q9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.e$e, reason: collision with other inner class name */
    class RunnableC0103e implements Runnable {
        final /* synthetic */ la a;

        RunnableC0103e(la laVar) {
            this.a = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a);
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ la a;

        f(la laVar) {
            this.a = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.b(this.a);
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ la a;
        final /* synthetic */ Map b;
        final /* synthetic */ q9 c;

        g(la laVar, Map map, q9 q9Var) {
            this.a = laVar;
            this.b = map;
            this.c = q9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c);
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ com.ironsource.sdk.controller.l.a a;
        final /* synthetic */ com.ironsource.sdk.controller.f.c b;

        h(com.ironsource.sdk.controller.l.a aVar, com.ironsource.sdk.controller.f.c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                if (this.a != null) {
                    e.this.i.put(this.b.getCom.ironsource.sdk.controller.f.b.b java.lang.String(), this.a);
                }
                e.this.b.a(this.b, this.a);
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ JSONObject a;

        i(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.b(this.a);
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.destroy();
                e.this.b = null;
            }
        }
    }

    class k extends CountDownTimer {
        k(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Global Controller Timer Finish");
            e.this.d(y8.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            Logger.i(e.this.a, "Global Controller Timer Tick " + j);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.c();
        }
    }

    class m implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        m(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e eVar = e.this;
                eVar.b = eVar.b(eVar.h.b(), e.this.h.d(), e.this.h.f(), e.this.h.e(), e.this.h.g(), e.this.h.c(), this.a, this.b);
                e.this.b.a();
            } catch (Throwable th) {
                l9.d().a(th);
                e.this.d(Log.getStackTraceString(th));
            }
        }
    }

    class n extends CountDownTimer {
        n(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Recovered Controller | Global Controller Timer Finish");
            e.this.d(y8.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            Logger.i(e.this.a, "Recovered Controller | Global Controller Timer Tick " + j);
        }
    }

    class o implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ la c;
        final /* synthetic */ s9 d;

        o(String str, String str2, la laVar, s9 s9Var) {
            this.a = str;
            this.b = str2;
            this.c = laVar;
            this.d = s9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ s9 b;

        p(JSONObject jSONObject, s9 s9Var) {
            this.a = jSONObject;
            this.b = s9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class q implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ la c;
        final /* synthetic */ r9 d;

        q(String str, String str2, la laVar, r9 r9Var) {
            this.a = str;
            this.b = str2;
            this.c = laVar;
            this.d = r9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    class r implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ r9 b;

        r(String str, r9 r9Var) {
            this.a = str;
            this.b = r9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class s implements Runnable {
        final /* synthetic */ la a;
        final /* synthetic */ Map b;
        final /* synthetic */ r9 c;

        s(la laVar, Map map, r9 r9Var) {
            this.a = laVar;
            this.b = map;
            this.c = r9Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            kg.a(zp.j, new fg().a(rb.v, this.a.f()).a(rb.w, lg.a(this.a, dg.e.Interstitial)).a(rb.x, Boolean.valueOf(lg.a(this.a))).a(rb.I, Long.valueOf(j0.a.b(this.a.h()))).a());
            if (e.this.b != null) {
                e.this.b.b(this.a, this.b, this.c);
            }
        }
    }

    public e(Context context, b9 b9Var, ma maVar, Cif cif, int i2, JSONObject jSONObject, String str, String str2, mm mmVar) {
        this.k = mmVar;
        this.g = cif;
        String networkStorageDir = IronSourceStorageUtils.getNetworkStorageDir(context);
        va vaVarA = va.a(networkStorageDir, cif, jSONObject);
        this.h = new bv(context, b9Var, maVar, i2, vaVarA, networkStorageDir);
        a(context, b9Var, maVar, i2, vaVarA, networkStorageDir, str, str2);
    }

    private void a(final Context context, final b9 b9Var, final ma maVar, final int i2, final va vaVar, final String str, final String str2, final String str3) {
        int iA = jl.P().d().a();
        if (iA > 0) {
            kg.a(zp.B, new fg().a(rb.y, String.valueOf(iA)).a());
        }
        a(new Runnable() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(context, b9Var, maVar, i2, vaVar, str, str2, str3);
            }
        }, iA);
        this.d = new k(200000L, 1000L).start();
    }

    private void a(dg.e eVar, la laVar, String str, String str2) {
        Logger.i(this.a, "recoverWebController for product: " + eVar.toString());
        fg fgVar = new fg();
        fgVar.a(rb.w, eVar.toString());
        fgVar.a(rb.v, laVar.f());
        kg.a(zp.b, fgVar.a());
        this.h.n();
        destroy();
        b(new m(str, str2));
        this.d = new n(200000L, 1000L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ll llVar) {
        com.ironsource.sdk.controller.l.b bVar = this.j.get(llVar.d());
        if (bVar != null) {
            bVar.a(llVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.ironsource.sdk.controller.f.a aVar) {
        com.ironsource.sdk.controller.l.a aVarRemove = this.i.remove(aVar.c());
        if (aVarRemove != null) {
            aVarRemove.a(aVar);
        }
    }

    private void a(Runnable runnable, long j2) {
        Cif cif = this.g;
        if (cif != null) {
            cif.d(runnable, j2);
        } else {
            Logger.e(this.a, "mThreadManager = null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public v b(Context context, b9 b9Var, ma maVar, int i2, va vaVar, String str, String str2, String str3) throws Throwable {
        kg.a(zp.c);
        v vVar = new v(context, maVar, b9Var, this, this.g, i2, vaVar, str, h(), i(), str2, str3);
        lc lcVar = new lc(context, vaVar, new kc(this.g.a()), new ml(vaVar.a()));
        vVar.a(new u(context));
        vVar.a(new org.json.sdk.controller.o(context));
        vVar.a(new org.json.sdk.controller.q(context));
        vVar.a(new org.json.sdk.controller.i(context));
        vVar.a(new org.json.sdk.controller.a(context));
        vVar.a(new org.json.sdk.controller.j(vaVar.a(), lcVar));
        vVar.a(new p3());
        return vVar;
    }

    private void b(Runnable runnable) {
        a(runnable, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Context context, b9 b9Var, ma maVar, int i2, va vaVar, String str, String str2, String str3) {
        try {
            v vVarB = b(context, b9Var, maVar, i2, vaVar, str, str2, str3);
            this.b = vVarB;
            vVarB.a();
        } catch (Throwable th) {
            l9.d().a(th);
            d(Log.getStackTraceString(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        kg.a(zp.d, new fg().a(rb.A, str).a());
        this.c = dg.b.Loading;
        this.b = new org.json.sdk.controller.n(str, this.g);
        this.e.c();
        this.e.a();
        Cif cif = this.g;
        if (cif != null) {
            cif.c(new l());
        }
    }

    private void e(String str) {
        IronSourceNetwork.updateInitFailed(new eg(1001, str));
    }

    private com.ironsource.sdk.controller.l.a h() {
        return new com.ironsource.sdk.controller.l.a() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda2
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                this.f$0.a(aVar);
            }
        };
    }

    private com.ironsource.sdk.controller.l.b i() {
        return new com.ironsource.sdk.controller.l.b() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda1
            @Override // com.ironsource.sdk.controller.l.b
            public final void a(ll llVar) {
                this.f$0.a(llVar);
            }
        };
    }

    private void k() {
        Logger.i(this.a, "handleReadyState");
        this.c = dg.b.Ready;
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        m();
        this.f.c();
        this.f.a();
        org.json.sdk.controller.l lVar = this.b;
        if (lVar != null) {
            lVar.e();
        }
    }

    private boolean l() {
        return dg.b.Ready.equals(this.c);
    }

    private void m() {
        this.h.a(true);
        org.json.sdk.controller.l lVar = this.b;
        if (lVar != null) {
            lVar.a(this.h.i());
        }
    }

    @Override // org.json.sdk.controller.l
    public void a() {
    }

    @Override // org.json.sdk.controller.l
    public void a(Activity activity) {
        this.b.a(activity);
    }

    @Override // org.json.sdk.controller.l
    public void a(Context context) {
        org.json.sdk.controller.l lVar;
        if (!l() || (lVar = this.b) == null) {
            return;
        }
        lVar.a(context);
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar) {
        this.f.a(new RunnableC0103e(laVar));
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar, Map<String, String> map, q9 q9Var) {
        this.f.a(new g(laVar, map, q9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar, Map<String, String> map, r9 r9Var) {
        this.f.a(new b(laVar, map, r9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(com.ironsource.sdk.controller.f.c cVar, com.ironsource.sdk.controller.l.a aVar) {
        this.f.a(new h(aVar, cVar));
    }

    @Override // org.json.zd
    public void a(vd vdVar) {
        zp.a aVar;
        fg fgVar;
        StringBuilder sb;
        xd strategy = vdVar.getStrategy();
        if (strategy == xd.SendEvent) {
            aVar = zp.A;
            fgVar = new fg();
            sb = new StringBuilder();
        } else {
            if (strategy != xd.NativeController) {
                return;
            }
            org.json.sdk.controller.n nVar = new org.json.sdk.controller.n(vdVar.a(), this.g);
            this.b = nVar;
            this.k.a(nVar.g());
            kg.a(zp.d, new fg().a(rb.A, vdVar.a() + " : strategy: " + strategy).a());
            aVar = zp.A;
            fgVar = new fg();
            sb = new StringBuilder();
        }
        sb.append(vdVar.a());
        sb.append(" : strategy: ");
        sb.append(strategy);
        kg.a(aVar, fgVar.a(rb.y, sb.toString()).a());
    }

    public void a(Runnable runnable) {
        this.e.a(runnable);
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, r9 r9Var) {
        Logger.i(this.a, "load interstitial");
        this.f.a(new r(str, r9Var));
    }

    public void a(String str, com.ironsource.sdk.controller.l.b bVar) {
        this.j.put(str, bVar);
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, q9 q9Var) {
        if (this.h.a(g(), this.c)) {
            a(dg.e.Banner, laVar, str, str2);
        }
        this.f.a(new c(str, str2, laVar, q9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, r9 r9Var) {
        if (this.h.a(g(), this.c)) {
            a(dg.e.Interstitial, laVar, str, str2);
        }
        this.f.a(new q(str, str2, laVar, r9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, s9 s9Var) {
        if (this.h.a(g(), this.c)) {
            a(dg.e.RewardedVideo, laVar, str, str2);
        }
        this.f.a(new o(str, str2, laVar, s9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject) {
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, q9 q9Var) {
        this.f.a(new d(jSONObject, q9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, r9 r9Var) {
        this.f.a(new a(jSONObject, r9Var));
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, s9 s9Var) {
        this.f.a(new p(jSONObject, s9Var));
    }

    @Override // org.json.sdk.controller.l
    public boolean a(String str) {
        if (this.b == null || !l()) {
            return false;
        }
        return this.b.a(str);
    }

    @Override // org.json.sdk.controller.c
    public void b() {
        Logger.i(this.a, "handleControllerLoaded");
        this.c = dg.b.Loaded;
        this.e.c();
        this.e.a();
    }

    @Override // org.json.sdk.controller.l
    public void b(Context context) {
        org.json.sdk.controller.l lVar;
        if (!l() || (lVar = this.b) == null) {
            return;
        }
        lVar.b(context);
    }

    @Override // org.json.sdk.controller.l
    public void b(la laVar) {
        this.f.a(new f(laVar));
    }

    @Override // org.json.sdk.controller.l
    public void b(la laVar, Map<String, String> map, r9 r9Var) {
        this.f.a(new s(laVar, map, r9Var));
    }

    @Override // org.json.sdk.controller.c
    public void b(String str) {
        Logger.i(this.a, "handleControllerFailed ");
        fg fgVar = new fg();
        fgVar.a(rb.A, str);
        fgVar.a(rb.y, String.valueOf(this.h.l()));
        kg.a(zp.o, fgVar.a());
        this.h.a(false);
        e(str);
        if (this.d != null) {
            Logger.i(this.a, "cancel timer mControllerReadyTimer");
            this.d.cancel();
        }
        d(str);
    }

    @Override // org.json.sdk.controller.l
    public void b(JSONObject jSONObject) {
        this.f.a(new i(jSONObject));
    }

    @Override // org.json.sdk.controller.c
    public void c() {
        Logger.i(this.a, "handleControllerReady ");
        this.k.a(g());
        if (dg.c.Web.equals(g())) {
            kg.a(zp.e, new fg().a(rb.y, String.valueOf(this.h.l())).a());
            IronSourceNetwork.updateInitSucceeded();
        }
        k();
    }

    @Override // org.json.sdk.controller.c
    public void c(String str) {
        kg.a(zp.y, new fg().a(rb.y, str).a());
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        d(str);
    }

    @Override // org.json.sdk.controller.l
    public void d() {
        org.json.sdk.controller.l lVar;
        if (!l() || (lVar = this.b) == null) {
            return;
        }
        lVar.d();
    }

    @Override // org.json.sdk.controller.l
    public void destroy() {
        Logger.i(this.a, "destroy controller");
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        n8 n8Var = this.f;
        if (n8Var != null) {
            n8Var.b();
        }
        this.d = null;
        b(new j());
    }

    @Override // org.json.sdk.controller.l
    @Deprecated
    public void e() {
    }

    @Override // org.json.sdk.controller.l
    public void f() {
        org.json.sdk.controller.l lVar;
        if (!l() || (lVar = this.b) == null) {
            return;
        }
        lVar.f();
    }

    @Override // org.json.sdk.controller.l
    public dg.c g() {
        org.json.sdk.controller.l lVar = this.b;
        return lVar != null ? lVar.g() : dg.c.None;
    }

    public org.json.sdk.controller.l j() {
        return this.b;
    }
}
