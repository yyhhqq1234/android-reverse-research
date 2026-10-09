package org.json;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.o2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class n7<Listener extends o2> implements NetworkInitializationListener, ks.a, a2, AdapterAdListener, yg.b {
    protected j1 a;
    protected Listener b;
    protected BaseAdAdapter<?, AdapterAdListener> c;
    protected b2 d;
    protected h e;
    protected Placement g;
    protected z2 h;
    protected JSONObject i;
    protected String j;
    protected AdData k;
    protected Long l;
    protected xa m;
    private final j5 o;
    private final po p;
    private AtomicBoolean f = new AtomicBoolean(false);
    private ks n = new ks(TimeUnit.SECONDS.toMillis(s()));
    protected final Object q = new Object();

    class a extends cq {
        a() {
        }

        @Override // org.json.cq
        public void a() {
            n7.this.L();
        }
    }

    class b extends cq {
        b() {
        }

        @Override // org.json.cq
        public void a() {
            n7.this.K();
        }
    }

    class c extends cq {
        final /* synthetic */ int a;
        final /* synthetic */ String b;

        c(int i, String str) {
            this.a = i;
            this.b = str;
        }

        @Override // org.json.cq
        public void a() {
            n7.this.a(this.a, this.b);
        }
    }

    class d extends cq {
        d() {
        }

        @Override // org.json.cq
        public void a() {
            n7.this.I();
        }
    }

    class e extends cq {
        final /* synthetic */ AdapterErrorType a;
        final /* synthetic */ int b;
        final /* synthetic */ String c;

        e(AdapterErrorType adapterErrorType, int i, String str) {
            this.a = adapterErrorType;
            this.b = i;
            this.c = str;
        }

        @Override // org.json.cq
        public void a() {
            n7.this.a(this.a, this.b, this.c);
        }
    }

    class f extends cq {
        f() {
        }

        @Override // org.json.cq
        public void a() {
            n7.this.J();
        }
    }

    class g extends cq {
        g() {
        }

        @Override // org.json.cq
        public void a() {
            n7.this.H();
        }
    }

    protected enum h {
        NONE,
        INIT_IN_PROGRESS,
        READY_TO_LOAD,
        LOADING,
        LOADED,
        SHOWING,
        FAILED
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n7(po poVar, j1 j1Var, BaseAdAdapter<?, ?> baseAdAdapter, z2 z2Var, j5 j5Var, Listener listener) {
        this.a = j1Var;
        this.b = listener;
        this.d = new b2(j1Var.a(), b2.b.PROVIDER, this);
        this.h = z2Var;
        this.i = z2Var.c();
        this.c = baseAdAdapter;
        this.o = j5Var;
        this.p = poVar;
        a(h.NONE);
    }

    private boolean D() {
        return this.e == h.INIT_IN_PROGRESS;
    }

    private void F() {
        IronLog.INTERNAL.verbose(d());
        a(h.LOADING);
        a(false);
        try {
            this.n.a((ks.a) this);
            G();
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "unexpected error while calling adapter.loadAd() - " + th.getMessage() + " - state = " + this.e;
            IronLog.INTERNAL.error(a(str));
            b2 b2Var = this.d;
            if (b2Var != null) {
                b2Var.k.f(str);
            }
            onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 510, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        IronLog.INTERNAL.verbose(d());
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.a(j());
        }
        this.b.f(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        boolean zO;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(d());
        ks ksVar = this.n;
        if (ksVar != null) {
            ksVar.e();
        }
        synchronized (this.q) {
            h hVar = this.e;
            zO = false;
            if (hVar == h.LOADING) {
                long jA = xa.a(this.m);
                ironLog.verbose(a("Load duration = " + jA));
                if (this.d != null) {
                    if (v()) {
                        this.d.g.a(jA);
                    } else {
                        this.d.g.a(jA, false);
                    }
                }
                a(h.LOADED);
                zO = O();
            } else if (hVar != h.FAILED) {
                ironLog.error(a(String.format("unexpected load success for %s, state - %s", k(), this.e)));
                String str = String.format("unexpected load success, state - %s", this.e);
                if (this.d != null) {
                    if (v()) {
                        this.d.k.q(str);
                    } else {
                        this.d.k.n(str);
                    }
                }
            }
        }
        if (zO) {
            this.b.e(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        IronLog.INTERNAL.verbose(d());
        a(h.SHOWING);
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.g(j());
        }
        this.b.b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(d());
        if (D()) {
            ks ksVar = this.n;
            if (ksVar != null) {
                ksVar.e();
            }
            a(h.READY_TO_LOAD);
            F();
            return;
        }
        if (this.e == h.FAILED) {
            return;
        }
        ironLog.error(a(String.format("unexpected init success for %s, state - %s", k(), this.e)));
        if (this.d != null) {
            this.d.k.l(String.format("unexpected init success, state - %s", this.e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        long jA = xa.a(this.m);
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("Load duration = " + jA + ", state = " + this.e + ", isBidder = " + w()));
        synchronized (this.q) {
            if (!z()) {
                ironLog.error(a(String.format("unexpected timeout for %s, state - %s, error - %s", k(), this.e, 1025)));
                if (this.d != null) {
                    this.d.k.s(String.format("unexpected timeout, state - %s, error - %s", this.e, 1025));
                }
            } else {
                a(h.FAILED);
                b2 b2Var = this.d;
                if (b2Var != null) {
                    b2Var.g.a(jA, 1025);
                    this.d.g.a(jA, 1025, "time out");
                }
                this.b.a(ErrorBuilder.buildLoadFailedError("time out"), this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("error = " + i + ", " + str));
        if (D()) {
            ks ksVar = this.n;
            if (ksVar != null) {
                ksVar.e();
            }
            a(h.FAILED);
            a(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, i, str, xa.a(this.m));
            this.b.a(new IronSourceError(i, str), this);
            return;
        }
        if (this.e == h.FAILED) {
            return;
        }
        ironLog.error(a(String.format("unexpected init failed for %s, state - %s, error - %s, %s", k(), this.e, Integer.valueOf(i), str)));
        if (this.d != null) {
            this.d.k.k(String.format("unexpected init failed, state - %s, error - %s, %s", this.e, Integer.valueOf(i), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdapterErrorType adapterErrorType, int i, String str) {
        long jA = xa.a(this.m);
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("Load duration = " + jA + ", error = " + i + ", " + str));
        ks ksVar = this.n;
        if (ksVar != null) {
            ksVar.e();
        }
        synchronized (this.q) {
            h hVar = this.e;
            if (hVar == h.LOADING) {
                a(adapterErrorType, i, str, jA);
                a(h.FAILED);
                this.b.a(new IronSourceError(i, str), this);
                return;
            }
            if (hVar == h.FAILED) {
                a(adapterErrorType, i, str, jA);
                return;
            }
            if (hVar == h.LOADED && adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED) {
                this.l = Long.valueOf(System.currentTimeMillis());
                ironLog.error(a(String.format("ad expired for %s, state = %s", this.h.f(), this.e)));
                b2 b2Var = this.d;
                if (b2Var != null) {
                    b2Var.k.a(String.format("ad expired, state = %s", this.e));
                }
                return;
            }
            ironLog.error(a(String.format("unexpected load failed for %s, state - %s, error - %s, %s", k(), this.e, Integer.valueOf(i), str)));
            String str2 = String.format("unexpected load failed, state - %s, error - %s, %s", this.e, Integer.valueOf(i), str);
            if (this.d != null) {
                if (v()) {
                    this.d.k.p(str2);
                } else if (this.a.a() != IronSource.AD_UNIT.REWARDED_VIDEO || this.e != h.SHOWING) {
                    this.d.k.m(str2);
                }
            }
        }
    }

    private void a(AdapterErrorType adapterErrorType, int i, String str, long j) {
        if (this.d != null) {
            if (adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL) {
                if (v()) {
                    this.d.g.c(j, i);
                    return;
                } else {
                    this.d.g.b(j, i);
                    return;
                }
            }
            if (TextUtils.isEmpty(str)) {
                this.d.g.a(j, i);
            } else if (v()) {
                this.d.g.b(j, i, str);
            } else {
                this.d.g.a(j, i, str);
            }
        }
    }

    private boolean b(y1 y1Var) {
        return new ArrayList(Arrays.asList(y1.LOAD_AD, y1.LOAD_AD_SUCCESS, y1.LOAD_AD_FAILED, y1.LOAD_AD_FAILED_WITH_REASON, y1.LOAD_AD_NO_FILL, y1.RELOAD_AD, y1.RELOAD_AD_SUCCESS, y1.RELOAD_AD_FAILED_WITH_REASON, y1.RELOAD_AD_NO_FILL, y1.DESTROY_AD, y1.AD_PRESENT_SCREEN, y1.AD_DISMISS_SCREEN, y1.AD_LEFT_APPLICATION, y1.AD_OPENED, y1.AD_CLOSED, y1.SHOW_AD, y1.SHOW_AD_FAILED, y1.AD_CLICKED, y1.AD_REWARDED)).contains(y1Var);
    }

    private int o() {
        return 1;
    }

    private int s() {
        j5 j5Var = this.o;
        if (j5Var == null) {
            return this.a.f();
        }
        Integer numF = j5Var.f();
        int iF = (numF == null || numF.intValue() <= 0) ? this.a.f() : numF.intValue();
        IronLog.INTERNAL.verbose(a("Load timeout for " + this.o.c() + " - " + iF + " seconds"));
        return iF;
    }

    public AtomicBoolean A() {
        return this.f;
    }

    public boolean B() {
        return y();
    }

    public boolean C() {
        return this.e == h.SHOWING;
    }

    public void E() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(d());
        j5 j5VarI = i();
        String strK = j5VarI.k();
        Map<String, Object> mapA = jj.a(j5VarI.a());
        mapA.put("adUnit", this.a.a());
        b(strK);
        try {
            boolean z = false;
            if (v()) {
                this.d.g.a();
            } else {
                this.d.g.a(false);
            }
            this.l = null;
            this.m = new xa();
            this.k = a(strK, mapA);
            synchronized (this.q) {
                if (this.e != h.NONE) {
                    z = true;
                } else {
                    a(h.INIT_IN_PROGRESS);
                }
            }
            if (z) {
                String str = "loadAd - incorrect state while loading, state = " + this.e;
                ironLog.error(a(str));
                this.d.k.f(str);
                onInitFailed(x1.c(this.a.a()), str);
                return;
            }
            this.n.a((ks.a) this);
            AdapterBaseInterface networkAdapter = this.c.getNetworkAdapter();
            if (networkAdapter != null) {
                networkAdapter.init(this.k, ContextProvider.getInstance().getApplicationContext(), this);
                return;
            }
            String str2 = "loadAd - network adapter not available " + k();
            ironLog.error(a(str2));
            onInitFailed(x1.c(this.a.a()), str2);
        } catch (Throwable th) {
            l9.d().a(th);
            String str3 = "loadAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str3));
            b2 b2Var = this.d;
            if (b2Var != null) {
                b2Var.k.f(str3);
            }
            onInitFailed(x1.c(this.a.a()), str3);
        }
    }

    protected void G() {
        Object obj = this.c;
        if (obj instanceof AdapterAdFullScreenInterface) {
            ((AdapterAdFullScreenInterface) obj).loadAd(this.k, ContextProvider.getInstance().getCurrentActiveActivity(), this);
        } else {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterAdFullScreenInterface"));
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0054 A[Catch: all -> 0x0064, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x0008, B:13:0x0050, B:15:0x0054, B:16:0x0059, B:18:0x005d, B:19:0x0062, B:10:0x000f, B:12:0x004b), top: B:26:0x0003, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x005d A[Catch: all -> 0x0064, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x0008, B:13:0x0050, B:15:0x0054, B:16:0x0059, B:18:0x005d, B:19:0x0062, B:10:0x000f, B:12:0x004b), top: B:26:0x0003, inners: #0 }] */
    public void M() {
        b2 b2Var;
        ks ksVar;
        synchronized (this) {
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter = this.c;
            if (baseAdAdapter != null) {
                try {
                    baseAdAdapter.releaseMemory();
                    this.c = null;
                } catch (Exception e2) {
                    l9.d().a(e2);
                    String str = "Exception while calling adapter.releaseMemory() from " + this.h.f() + " - " + e2.getMessage() + " - state = " + this.e;
                    IronLog.INTERNAL.error(a(str));
                    b2 b2Var2 = this.d;
                    if (b2Var2 != null) {
                        b2Var2.k.f(str);
                    }
                }
                b2Var = this.d;
                if (b2Var != null) {
                    b2Var.f();
                    this.d = null;
                }
                ksVar = this.n;
                if (ksVar != null) {
                    ksVar.d();
                    this.n = null;
                }
            } else {
                b2Var = this.d;
                if (b2Var != null) {
                    b2Var.f();
                    this.d = null;
                }
                ksVar = this.n;
                if (ksVar != null) {
                    ksVar.d();
                    this.n = null;
                }
            }
            throw th;
        }
    }

    public void N() {
        IronLog.INTERNAL.verbose(d());
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.a();
        }
    }

    protected boolean O() {
        return true;
    }

    protected AdData a(String str, Map<String, Object> map) {
        return new AdData(str, q(), a(map));
    }

    protected String a(String str) {
        String str2 = this.a.a().name() + " - " + k() + " - state = " + this.e;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str2 + " - " + str;
    }

    public Map<String, Object> a(y1 y1Var) {
        HashMap map = new HashMap();
        try {
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter = this.c;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, baseAdAdapter != null ? baseAdAdapter.getNetworkAdapter().getAdapterVersion() : "");
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter2 = this.c;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, baseAdAdapter2 != null ? baseAdAdapter2.getNetworkAdapter().getNetworkSDKVersion() : "");
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(a("could not get adapter version for event data" + k()));
        }
        map.put("spId", this.h.i());
        map.put(IronSourceConstants.EVENTS_PROVIDER, this.h.a());
        map.put("instanceType", Integer.valueOf(l()));
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(o()));
        if (!TextUtils.isEmpty(this.j)) {
            map.put("dynamicDemandSource", this.j);
        }
        map.put("sessionDepth", r());
        if (this.a.e() != null && this.a.e().length() > 0) {
            map.put("genericParams", this.a.e());
        }
        if (!TextUtils.isEmpty(this.a.c())) {
            map.put("auctionId", this.a.c());
        }
        if (b(y1Var)) {
            map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.a.d()));
            if (!TextUtils.isEmpty(this.a.b())) {
                map.put(IronSourceConstants.AUCTION_FALLBACK, this.a.b());
            }
        }
        if (!TextUtils.isEmpty(this.a.g().getCustomNetwork())) {
            map.put(IronSourceConstants.EVENTS_CUSTOM_NETWORK_FIELD, this.a.g().getCustomNetwork());
        }
        return map;
    }

    protected Map<String, Object> a(Map<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("userId", this.a.i());
        return map;
    }

    @Override // com.ironsource.ks.a
    public void a() {
        if (this.p.c()) {
            this.p.a(new a());
        } else {
            L();
        }
    }

    protected void a(h hVar) {
        IronLog.INTERNAL.verbose(d());
        this.e = hVar;
    }

    public void a(boolean z) {
        this.f.set(z);
    }

    @Override // com.ironsource.yg.b
    public int b() {
        return this.h.e();
    }

    public void b(String str) {
        this.j = org.json.mediationsdk.d.b().c(str);
    }

    @Override // com.ironsource.yg.b
    public String c() {
        return this.h.f();
    }

    protected String d() {
        return a((String) null);
    }

    public Long e() {
        return this.l;
    }

    public AdInfo f() {
        return new AdInfo(this.o.a(j()), this.o.d());
    }

    public IronSource.AD_UNIT g() {
        return this.a.a();
    }

    public String h() {
        return this.a.c();
    }

    public j5 i() {
        return this.o;
    }

    protected String j() {
        Placement placement = this.g;
        return placement == null ? "" : placement.getCom.ironsource.oo.d java.lang.String();
    }

    public String k() {
        return String.format("%s %s", c(), Integer.valueOf(hashCode()));
    }

    public int l() {
        return this.h.d();
    }

    public String m() {
        return this.h.h().isMultipleInstances() ? this.h.h().getProviderTypeForReflection() : this.h.f();
    }

    public String n() {
        return this.h.g();
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdClicked() {
        if (this.p.c()) {
            this.p.a(new g());
        } else {
            H();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str) {
        if (this.p.c()) {
            this.p.a(new e(adapterErrorType, i, str));
        } else {
            a(adapterErrorType, i, str);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadSuccess() {
        if (this.p.c()) {
            this.p.a(new d());
        } else {
            I();
        }
    }

    public void onAdOpened() {
        if (this.p.c()) {
            this.p.a(new f());
        } else {
            J();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitFailed(int i, String str) {
        if (this.p.c()) {
            this.p.a(new c(i, str));
        } else {
            a(i, str);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitSuccess() {
        if (this.p.c()) {
            this.p.a(new b());
        } else {
            K();
        }
    }

    public NetworkSettings p() {
        return this.a.g();
    }

    protected Map<String, Object> q() {
        HashMap map = new HashMap();
        map.putAll(jj.a(this.i));
        return map;
    }

    public Integer r() {
        j1 j1Var = this.a;
        if (j1Var != null) {
            return Integer.valueOf(j1Var.h());
        }
        return null;
    }

    public h t() {
        return this.e;
    }

    protected po u() {
        return this.p;
    }

    protected boolean v() {
        return false;
    }

    public boolean w() {
        return this.h.j();
    }

    public boolean x() {
        return this.e == h.FAILED;
    }

    public boolean y() {
        return this.e == h.LOADED;
    }

    public boolean z() {
        h hVar = this.e;
        return hVar == h.INIT_IN_PROGRESS || hVar == h.LOADING;
    }
}
