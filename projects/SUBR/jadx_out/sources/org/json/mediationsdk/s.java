package org.json.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import org.json.an;
import org.json.b4;
import org.json.ee;
import org.json.environment.ContextProvider;
import org.json.environment.NetworkStateReceiver;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.eo;
import org.json.gr;
import org.json.h4;
import org.json.hr;
import org.json.jd;
import org.json.jl;
import org.json.jn;
import org.json.jr;
import org.json.kl;
import org.json.l9;
import org.json.mediationsdk.integration.IntegrationHelper;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.sdk.SegmentListener;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.na;
import org.json.ob;
import org.json.uq;
import org.json.vp;
import org.json.vq;
import org.json.x3;
import org.json.xi;
import org.json.xo;
import org.json.zo;

/* JADX INFO: loaded from: classes3.dex */
class s implements an {
    private static s A;
    private jr a;
    private NetworkStateReceiver p;
    private CountDownTimer q;
    private String t;
    private gr u;
    private SegmentListener v;
    private long x;
    private int b = e.f;
    private ee c = jl.P().u();
    private final String d = "appKey";
    private final String e = getClass().getSimpleName();
    private boolean l = false;
    private boolean n = false;
    private List<jn> r = new ArrayList();
    private String s = "";
    private f z = new a();
    private Handler m = IronSourceThreadManager.INSTANCE.getInitHandler();
    private int f = 1;
    private int g = 0;
    private int h = 62;
    private int i = 12;
    private int j = 5;
    private AtomicBoolean o = new AtomicBoolean(true);
    private boolean k = false;
    private boolean w = false;
    private xi y = new xi();

    class a extends f {
        a() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            hr hrVarI;
            try {
                p pVarM = p.m();
                if (!TextUtils.isEmpty(s.this.s)) {
                    jd.a().a("userId", s.this.s);
                }
                if (!TextUtils.isEmpty(s.this.t)) {
                    jd.a().a("appKey", s.this.t);
                }
                s.this.y.i(s.this.s);
                s.this.x = new Date().getTime();
                xo.c().a();
                s.this.u = pVarM.b(ContextProvider.getInstance().getApplicationContext(), s.this.s, this.c);
                if (s.this.u != null) {
                    s.this.m.removeCallbacks(this);
                    if (s.this.u.p()) {
                        s.this.b(d.INITIATED);
                        new kl().a(s.this.u.c().getApplicationConfigurations().d().b(), pVarM.B());
                        h4 h4VarE = s.this.u.c().getApplicationConfigurations().e();
                        if (h4VarE != null) {
                            na naVar = na.a;
                            naVar.c(h4VarE.getShouldUseAppSet());
                            naVar.a(h4VarE.getShouldReuseAdvId());
                            naVar.a(h4VarE.getUserAgentExpirationThresholdInHours());
                            IronSourceThreadManager.INSTANCE.setUseSharedExecutorService(h4VarE.getShouldUseSharedThreadPool());
                            s.this.c.a(h4VarE);
                        }
                        s.this.a(ContextProvider.getInstance().getApplicationContext(), s.this.u);
                        pVarM.a(new Date().getTime() - s.this.x, s.this.u.h());
                        if (h4VarE != null && h4VarE.getShouldRegisterTrigger()) {
                            new zo(vp.i(), new Function0() { // from class: com.ironsource.mediationsdk.s$a$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return Long.valueOf(System.currentTimeMillis());
                                }
                            }, jl.P(), IronSourceThreadManager.INSTANCE.getThreadPoolExecutor()).c(ContextProvider.getInstance().getApplicationContext());
                        }
                        s.this.a = new jr();
                        s.this.a.a(s.this.c);
                        if (s.this.u.c().getApplicationConfigurations().f() && ContextProvider.getInstance().getApplicationContext() != null) {
                            IntegrationHelper.validateIntegration(ContextProvider.getInstance().getApplicationContext());
                        }
                        List<IronSource.AD_UNIT> listG = s.this.u.g();
                        Iterator it = s.this.r.iterator();
                        while (it.hasNext()) {
                            ((jn) it.next()).a(listG, s.this.h(), s.this.u.c());
                        }
                        new eo.a().a();
                        if (s.this.v != null && (hrVarI = s.this.u.c().getApplicationConfigurations().i()) != null && !TextUtils.isEmpty(hrVarI.c())) {
                            s.this.v.onSegmentReceived(hrVarI.c());
                        }
                        b4 b4VarC = s.this.u.c().getApplicationConfigurations().c();
                        if (b4VarC.f()) {
                            l9.d().a(b4VarC.b(), b4VarC.d(), b4VarC.c(), b4VarC.e(), IronSourceUtils.getSessionId(), b4VarC.a(), b4VarC.g());
                        }
                    } else if (!s.this.l) {
                        s.this.b(d.INIT_FAILED);
                        s.this.l = true;
                        Iterator it2 = s.this.r.iterator();
                        while (it2.hasNext()) {
                            ((jn) it2.next()).d("serverResponseIsNotValid");
                        }
                    }
                } else {
                    if (s.this.g == 3) {
                        s.this.w = true;
                        Iterator it3 = s.this.r.iterator();
                        while (it3.hasNext()) {
                            ((jn) it3.next()).a();
                        }
                    }
                    if (this.a && s.this.g < s.this.h) {
                        s.this.k = true;
                        s.this.m.postDelayed(this, s.this.f * 1000);
                        if (s.this.g < s.this.i) {
                            s.a(s.this, 2);
                        }
                    }
                    if ((!this.a || s.this.g == s.this.j) && !s.this.l) {
                        s.this.l = true;
                        if (TextUtils.isEmpty(this.b)) {
                            this.b = "noServerResponse";
                        }
                        Iterator it4 = s.this.r.iterator();
                        while (it4.hasNext()) {
                            ((jn) it4.next()).d(this.b);
                        }
                        s.this.b(d.INIT_FAILED);
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No server response", 1);
                    }
                    s.f(s.this);
                }
                s.this.e();
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    class b implements Runnable {

        class a extends CountDownTimer {
            a(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (s.this.l) {
                    return;
                }
                s.this.l = true;
                Iterator it = s.this.r.iterator();
                while (it.hasNext()) {
                    ((jn) it.next()).d("noInternetConnection");
                }
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No internet connection", 1);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (j <= 45000) {
                    s.this.w = true;
                    Iterator it = s.this.r.iterator();
                    while (it.hasNext()) {
                        ((jn) it.next()).a();
                    }
                }
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.q = new a(60000L, 15000L).start();
        }
    }

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.values().length];
            a = iArr;
            try {
                iArr[d.INIT_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[d.INIT_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[d.INITIATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    enum d {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_FAILED,
        INITIATED
    }

    public static class e {
        public static int a = 0;
        public static int b = 1;
        public static int c = 2;
        public static int d = 3;
        public static int e = 4;
        public static int f = 5;
    }

    abstract class f implements Runnable {
        String b;
        boolean a = true;
        protected p.c c = new a();

        class a implements p.c {
            a() {
            }

            @Override // com.ironsource.mediationsdk.p.c
            public void a(String str) {
                f fVar = f.this;
                fVar.a = false;
                fVar.b = str;
            }
        }

        f() {
        }
    }

    private s() {
    }

    private static int a(d dVar) {
        int i = c.a[dVar.ordinal()];
        if (i == 1) {
            return e.d;
        }
        if (i != 2) {
            return i != 3 ? e.a : e.b;
        }
        return e.e;
    }

    static /* synthetic */ int a(s sVar, int i) {
        int i2 = sVar.f * i;
        sVar.f = i2;
        return i2;
    }

    public static synchronized s c() {
        if (A == null) {
            A = new s();
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (jl.P().d().c()) {
            vp.i().a(new ob(IronSourceConstants.EP_CONFIG_RECEIVED, null));
        }
    }

    static /* synthetic */ int f(s sVar) {
        int i = sVar.g;
        sVar.g = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return this.k;
    }

    public synchronized d a() {
        return d.values()[vq.a.a().ordinal()];
    }

    public void a(Context context, gr grVar) {
        this.y.i(grVar.f().h());
        this.y.b(grVar.f().d());
        x3 applicationConfigurations = grVar.c().getApplicationConfigurations();
        this.y.a(applicationConfigurations.a());
        this.y.c(applicationConfigurations.b().b());
        this.y.b(applicationConfigurations.j().b());
        this.y.a(Boolean.valueOf(IronSourceUtils.getFirstSession(context)));
        h4 h4VarE = grVar.c().getApplicationConfigurations().e();
        this.y.b(h4VarE.getCmpId());
        jl.K().w().a(h4VarE.getEpConfig());
    }

    public synchronized void a(Context context, String str, String str2, IronSource.AD_UNIT... ad_unitArr) {
        try {
            AtomicBoolean atomicBoolean = this.o;
            if (atomicBoolean == null || !atomicBoolean.compareAndSet(true, false)) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, this.e + ": Multiple calls to init are not allowed", 2);
            } else {
                b(d.INIT_IN_PROGRESS);
                this.s = str2;
                this.t = str;
                if (IronSourceUtils.isNetworkConnected(context)) {
                    this.m.post(this.z);
                } else {
                    this.n = true;
                    if (this.p == null) {
                        this.p = new NetworkStateReceiver(context, this);
                    }
                    context.registerReceiver(this.p, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b());
                }
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    public void a(jn jnVar) {
        if (jnVar == null) {
            return;
        }
        this.r.add(jnVar);
    }

    public void a(SegmentListener segmentListener) {
        this.v = segmentListener;
    }

    @Override // org.json.an
    public void a(boolean z) {
        if (this.n && z) {
            CountDownTimer countDownTimer = this.q;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.n = false;
            this.k = true;
            vp.i().a(new ob(IronSourceConstants.INIT_AFTER_REACHABILITY_CHANGE, IronSourceUtils.getMediationAdditionalData(false)));
            this.m.post(this.z);
        }
    }

    public int b() {
        return this.b;
    }

    public void b(jn jnVar) {
        if (jnVar == null || this.r.size() == 0) {
            return;
        }
        this.r.remove(jnVar);
    }

    public synchronized void b(d dVar) {
        IronLog.INTERNAL.verbose("old status: " + a() + ", new status: " + dVar + ")");
        vq.a.a(uq.values()[dVar.ordinal()]);
    }

    public synchronized boolean d() {
        return this.w;
    }

    void f() {
        b(d.INIT_FAILED);
    }

    public synchronized void g() {
        int iA = a(a());
        this.b = iA;
        this.y.c(iA);
    }
}
