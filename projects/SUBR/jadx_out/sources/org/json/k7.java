package org.json;

import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.environment.ContextProvider;
import org.json.environment.NetworkStateReceiver;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.h;
import org.json.mediationsdk.i;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.impressionData.ImpressionDataListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.n;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.n7;

/* JADX INFO: loaded from: classes3.dex */
public abstract class k7<Smash extends n7<?>, Listener extends AdapterAdListener> implements o2, p4, a2, cl, an, o, uu, u7, po {
    private AdInfo A;
    private nj B;
    final zg C;
    final zg.a D;
    protected final cf E;
    private final cf.a F;
    private boolean G;
    private xs H;
    private AtomicBoolean I;
    private vi J;
    protected tu<Smash> a;
    protected ConcurrentHashMap<String, h.a> b;
    protected org.json.mediationsdk.e c;
    protected h d;
    protected int e;
    protected String f;
    protected JSONObject g;
    protected j5 h;
    protected Placement i;
    protected boolean j;
    private NetworkStateReceiver k;
    protected lr l;
    protected xa m;
    protected xa n;
    protected r0 o;
    protected f p;
    protected n2 q;
    protected cc r;
    protected b2 s;
    protected i2 t;
    protected r u;
    protected IronSourceSegment v;
    protected UUID w;
    protected final Object x;
    private long y;
    private Boolean z;

    class a extends cq {
        a() {
        }

        @Override // org.json.cq
        public void a() {
            k7.this.B();
        }
    }

    class b implements Runnable {
        final /* synthetic */ NetworkSettings a;

        b(NetworkSettings networkSettings) {
            this.a = networkSettings;
        }

        @Override // java.lang.Runnable
        public void run() {
            k7.this.c(this.a);
        }
    }

    class c extends TimerTask {
        c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            k7.this.D();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k7.this.g = new JSONObject();
            k7.this.s.i.a();
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            k7.this.b(map, arrayList, sb, arrayList2);
            if (k7.this.o.getCollectBiddingDataAsyncEnabled()) {
                k7.this.a(map, arrayList, sb, arrayList2);
            } else {
                k7.this.a(map, arrayList, sb.toString());
            }
        }
    }

    class e implements w7.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        e(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.w7.b
        public void a(List<x7> list, long j, List<String> list2) {
            k7.this.s.h.a(j);
            for (x7 x7Var : list) {
                NetworkSettings networkSettingsA = k7.this.o.a(x7Var.c());
                Map<String, Object> mapB = k7.this.b(networkSettingsA, org.json.mediationsdk.c.b().b(networkSettingsA, k7.this.o.getAdUnit(), k7.this.k()));
                if (x7Var.a() != null) {
                    this.a.put(x7Var.c(), x7Var.a());
                    StringBuilder sb = this.b;
                    sb.append(x7Var.d());
                    sb.append(x7Var.c());
                    sb.append(",");
                    k7.this.s.h.a(mapB, x7Var.e());
                } else {
                    k7.this.s.h.a(mapB, x7Var.e(), x7Var.b());
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                NetworkSettings networkSettingsA2 = k7.this.o.a(it.next());
                k7.this.s.h.b(k7.this.b(networkSettingsA2, org.json.mediationsdk.c.b().b(networkSettingsA2, k7.this.o.getAdUnit(), k7.this.k())), j);
            }
            k7.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b.toString());
        }

        @Override // com.ironsource.w7.b
        public void onFailure(String str) {
            k7.this.s.h.a(str);
            k7.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b.toString());
        }
    }

    protected enum f {
        NONE,
        READY_TO_LOAD,
        AUCTION,
        LOADING,
        READY_TO_SHOW,
        SHOWING
    }

    public k7(r0 r0Var, nj njVar, IronSourceSegment ironSourceSegment) {
        this(jl.P(), jl.K(), r0Var, njVar, ironSourceSegment);
    }

    k7(ye yeVar, xe xeVar, r0 r0Var, nj njVar, IronSourceSegment ironSourceSegment) {
        this.f = "";
        this.j = false;
        this.x = new Object();
        this.y = 0L;
        this.I = new AtomicBoolean(false);
        this.w = UUID.randomUUID();
        this.C = yeVar.k();
        this.D = xeVar.e();
        this.E = yeVar.z();
        this.F = xeVar.m();
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("adUnit = " + r0Var.getAdUnit() + ", loading mode = " + r0Var.getLoadingData().a());
        StringBuilder sb = new StringBuilder();
        sb.append(r0Var.getAdUnit());
        sb.append(" initiated object per waterfall mode");
        IronSourceUtils.sendAutomationLog(sb.toString());
        xa xaVar = new xa();
        this.J = a(r0Var);
        this.v = ironSourceSegment;
        this.o = r0Var;
        this.s = new b2(r0Var.getAdUnit(), b2.b.MEDIATION, this);
        this.t = g();
        this.q = h();
        a(f.NONE);
        this.B = njVar;
        this.a = new tu<>(this.o.getAuctionSettings().f(), this.o.getAuctionSettings().i(), this);
        this.s.f.a(o(), this.o.getLoadingData().a().toString());
        this.b = new ConcurrentHashMap<>();
        this.i = null;
        G();
        this.g = new JSONObject();
        if (this.o.r()) {
            this.c = new org.json.mediationsdk.e(new org.json.mediationsdk.f(this.o.getAuctionSettings(), IronSourceUtils.getSessionId()));
        }
        this.d = new h(this.o.k(), this.o.getAuctionSettings().c());
        s();
        r();
        this.m = new xa();
        a(f.READY_TO_LOAD);
        this.r = new cc(r0Var.getAdExpirationInMinutes(), this);
        this.u = new r();
        this.s.f.a(xa.a(xaVar));
        if (this.o.getLoadingData().e()) {
            ironLog.verbose("first automatic load");
            A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        f fVar;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(i());
        synchronized (this.x) {
            if (this.o.getLoadingData().e() && this.l.a()) {
                ironLog.verbose(b("all smashes are capped"));
                a(x1.a(this.o.getAdUnit()), "all smashes are capped", false);
                return;
            }
            if (!t() && this.p == f.SHOWING) {
                IronLog.API.error(b("load cannot be invoked while showing an ad"));
                a(new IronSourceError(x1.d(this.o.getAdUnit()), "load cannot be invoked while showing an ad"));
                return;
            }
            if (this.o.getLoadingData().a() != l2.a.AUTOMATIC_LOAD_WHILE_SHOW && this.o.getLoadingData().a() != l2.a.MANUAL_WITH_LOAD_ON_SHOW && (((fVar = this.p) != f.READY_TO_LOAD && fVar != f.READY_TO_SHOW) || n.a().b(this.o.getAdUnit()))) {
                IronLog.API.error(b("load is already in progress"));
                return;
            }
            this.g = new JSONObject();
            F();
            if (v()) {
                this.s.g.a();
            } else {
                this.s.g.a(q());
            }
            this.n = new xa();
            if (this.o.r()) {
                if (!this.b.isEmpty()) {
                    this.d.a(this.b);
                    this.b.clear();
                }
                K();
            } else {
                a(f.LOADING);
            }
            if (this.o.r()) {
                return;
            }
            ironLog.verbose(b("auction disabled"));
            L();
            C();
        }
    }

    private void C() {
        zu<Smash> zuVarE = E();
        if (zuVarE.c()) {
            a(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "Mediation No fill", false);
        }
        Iterator<Smash> it = zuVarE.a().iterator();
        while (it.hasNext()) {
            it.next().E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        IronLog.INTERNAL.verbose(i());
        AsyncTask.execute(new d());
    }

    private zu<Smash> E() {
        IronLog.INTERNAL.verbose();
        return new yu(this.o).d(this.a.b());
    }

    private void F() {
        this.u.a(this.o.getAdUnit(), false);
    }

    private void K() {
        IronLog.INTERNAL.verbose(i());
        synchronized (this.x) {
            f fVar = this.p;
            f fVar2 = f.AUCTION;
            if (fVar == fVar2) {
                return;
            }
            a(fVar2);
            this.I.set(false);
            long jK = this.o.getAuctionSettings().k() - xa.a(this.m);
            if (jK > 0) {
                new Timer().schedule(new c(), jK);
            } else {
                D();
            }
        }
    }

    private void L() {
        IronLog.INTERNAL.verbose(i());
        a(j(), m());
    }

    private Smash a(j5 j5Var, String str) {
        NetworkSettings networkSettingsA = this.o.a(j5Var.c());
        if (networkSettingsA != null) {
            org.json.mediationsdk.c.b().b(networkSettingsA, this.o.getAdUnit(), k());
            BaseAdAdapter<?, Listener> baseAdAdapterA = a(networkSettingsA, this.o.getAdUnit());
            if (baseAdAdapterA != null) {
                Smash smash = (Smash) a(networkSettingsA, baseAdAdapterA, this.C.a(this.o.getAdUnit()), str, j5Var);
                this.b.put(j5Var.c(), h.a.ISAuctionPerformanceDidntAttemptToLoad);
                return smash;
            }
            IronLog.INTERNAL.error(b("addSmashToWaterfall - could not load ad adapter for " + networkSettingsA.getProviderInstanceName()));
        } else {
            String str2 = "could not find matching provider settings for auction response item - item = " + j5Var.c() + " state = " + this.p;
            IronLog.INTERNAL.error(b(str2));
            this.s.k.g(str2);
        }
        return null;
    }

    private vi a(r0 r0Var) {
        if (r0Var.getSharedManagersThread()) {
            return IronSourceThreadManager.INSTANCE.getSharedManagersThread();
        }
        return null;
    }

    private String a(List<j5> list, String str) {
        IronLog.INTERNAL.verbose(b("waterfall.size() = " + list.size()));
        this.b.clear();
        StringBuilder sb = new StringBuilder();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (int i = 0; i < list.size(); i++) {
            j5 j5Var = list.get(i);
            n7 n7VarA = a(j5Var, str);
            if (n7VarA != null) {
                copyOnWriteArrayList.add(n7VarA);
                sb.append(a(j5Var, n7VarA.l()));
            }
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        this.a.a(this.o.getLoadingData().a(), (CopyOnWriteArrayList<Smash>) copyOnWriteArrayList, str);
        IronLog.INTERNAL.verbose(b("updateWaterfall() - next waterfall is " + ((Object) sb)));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(b("auction waterfallString = " + str));
        boolean z = false;
        if (map.size() == 0 && list.size() == 0) {
            ironLog.verbose(b("auction failed - no candidates"));
            this.s.i.a(1005, "No candidates available for auctioning");
            a(x1.e(this.o.getAdUnit()), "no available ad to load", false);
            return;
        }
        this.s.i.b(str);
        if (this.c == null) {
            ironLog.error(b("mAuctionHandler is null"));
            return;
        }
        int iA = this.C.a(this.o.getAdUnit());
        i iVar = new i(this.o.getAdUnit());
        iVar.b(IronSourceUtils.isEncryptedResponse());
        iVar.a(map);
        iVar.a(list);
        iVar.a(this.d);
        iVar.a(iA);
        iVar.a(this.v);
        iVar.d(this.G);
        xs xsVar = this.H;
        if (xsVar != null && xsVar.b()) {
            z = true;
        }
        iVar.e(z);
        a(ContextProvider.getInstance().getApplicationContext(), iVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, StringBuilder sb, List<t7> list2) {
        if (list2.isEmpty()) {
            a(map, list, sb.toString());
            return;
        }
        w7 w7Var = new w7();
        e eVar = new e(map, sb, list);
        this.s.h.a();
        w7Var.a(list2, eVar, this.o.getCollectBiddingDataTimeout(), TimeUnit.MILLISECONDS);
    }

    private void a(JSONObject jSONObject) {
        this.u.a(this.o.getAdUnit(), jSONObject != null ? jSONObject.optBoolean(org.json.mediationsdk.d.f, false) : false);
        b(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> b(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        HashMap map = new HashMap();
        try {
            map.put(IronSourceConstants.EVENTS_PROVIDER, networkSettings.getProviderDefaultInstance());
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, adapterBaseInterface.getAdapterVersion());
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, adapterBaseInterface.getNetworkSDKVersion());
            map.put("spId", networkSettings.getSubProviderId());
            map.put("instanceType", Integer.valueOf(networkSettings.getInstanceType(this.o.getAdUnit())));
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(p()));
        } catch (Exception e2) {
            l9.d().a(e2);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getProviderEventData " + networkSettings.getProviderDefaultInstance(), e2);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map, List<String> list, StringBuilder sb, List<t7> list2) {
        StringBuilder sb2;
        String providerName;
        String string;
        StringBuilder sb3;
        for (NetworkSettings networkSettings : this.o.k()) {
            xs xsVar = this.H;
            if (xsVar == null || xsVar.a(networkSettings, this.o.getAdUnit())) {
                if (!this.l.b(new kr(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.o.getAdUnit()))) && d(networkSettings)) {
                    AdData adDataA = a(networkSettings, (String) null);
                    if (networkSettings.isBidder(this.o.getAdUnit())) {
                        AdapterBaseInterface adapterBaseInterfaceB = org.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), k());
                        if (!(adapterBaseInterfaceB instanceof v7)) {
                            if (adapterBaseInterfaceB == null) {
                                sb2 = new StringBuilder("prepareAuctionCandidates - could not load network adapter ");
                                providerName = networkSettings.getProviderName();
                            } else {
                                sb2 = new StringBuilder("network adapter ");
                                sb2.append(networkSettings.getProviderName());
                                providerName = " does not implementing BiddingDataInterface";
                            }
                            sb2.append(providerName);
                            string = sb2.toString();
                        } else if (this.o.getCollectBiddingDataAsyncEnabled()) {
                            list2.add(new t7(networkSettings.getInstanceType(this.o.getAdUnit()), networkSettings.getProviderInstanceName(), adDataA, (v7) adapterBaseInterfaceB, this, networkSettings));
                        } else {
                            try {
                                Map<String, Object> mapA = ((v7) adapterBaseInterfaceB).a(adDataA);
                                if (mapA != null) {
                                    map.put(networkSettings.getProviderInstanceName(), mapA);
                                    sb.append(networkSettings.getInstanceType(this.o.getAdUnit()));
                                    sb.append(networkSettings.getProviderInstanceName());
                                    sb.append(",");
                                } else {
                                    this.s.k.a(b(networkSettings, adapterBaseInterfaceB), "Missing bidding data");
                                }
                            } catch (Exception e2) {
                                e = e2;
                                l9.d().a(e);
                                sb3 = new StringBuilder("prepareAuctionCandidates - exception while calling networkAdapter.getBiddingData - ");
                                sb3.append(e.getMessage());
                                string = sb3.toString();
                                IronLog.INTERNAL.error(string);
                                this.s.k.f(string);
                            } catch (NoClassDefFoundError e3) {
                                e = e3;
                                l9.d().a(e);
                                sb3 = new StringBuilder("prepareAuctionCandidates - error while calling networkAdapter.getBiddingData - ");
                                sb3.append(e.getMessage());
                                string = sb3.toString();
                                IronLog.INTERNAL.error(string);
                                this.s.k.f(string);
                            }
                        }
                        this.s.k.f(string);
                    } else {
                        list.add(networkSettings.getProviderInstanceName());
                        sb.append(networkSettings.getInstanceType(this.o.getAdUnit()));
                        sb.append(networkSettings.getProviderInstanceName());
                        sb.append(",");
                    }
                }
            }
        }
    }

    private void b(JSONObject jSONObject) {
        int i;
        try {
            if (jSONObject == null) {
                this.o.b(false);
                IronLog.INTERNAL.verbose(b("loading configuration from auction response is null, using the following: " + this.o.s()));
                return;
            }
            try {
                if (jSONObject.has(org.json.mediationsdk.d.x) && (i = jSONObject.getInt(org.json.mediationsdk.d.x)) > 0) {
                    this.o.a(i);
                }
                if (jSONObject.has(org.json.mediationsdk.d.y)) {
                    this.o.a(jSONObject.getBoolean(org.json.mediationsdk.d.y));
                }
                this.o.b(jSONObject.optBoolean(org.json.mediationsdk.d.z, false));
                IronLog.INTERNAL.verbose(b(this.o.s()));
            } catch (JSONException e2) {
                l9.d().a(e2);
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.error("failed to update loading configuration for" + this.o.getAdUnit() + " Error: " + e2.getMessage());
                ironLog.verbose(b(this.o.s()));
            }
        } catch (Throwable th) {
            IronLog.INTERNAL.verbose(b(this.o.s()));
            throw th;
        }
    }

    private boolean b(y1 y1Var) {
        return !new ArrayList(Arrays.asList(y1.INIT_STARTED, y1.LOAD_AD, y1.AUCTION_REQUEST, y1.AUCTION_REQUEST_WATERFALL, y1.AUCTION_FAILED_NO_CANDIDATES, y1.COLLECT_TOKEN, y1.COLLECT_TOKENS_COMPLETED, y1.COLLECT_TOKENS_FAILED, y1.INSTANCE_COLLECT_TOKEN, y1.INSTANCE_COLLECT_TOKEN_SUCCESS, y1.INSTANCE_COLLECT_TOKEN_FAILED, y1.INSTANCE_COLLECT_TOKEN_TIMED_OUT)).contains(y1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(NetworkSettings networkSettings) {
        IronLog.INTERNAL.verbose(b(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName())));
        AdData adDataA = a(networkSettings, this.o.getUserId());
        AdapterBaseInterface adapterBaseInterfaceB = org.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), k());
        if (adapterBaseInterfaceB != null) {
            try {
                adapterBaseInterfaceB.init(adDataA, ContextProvider.getInstance().getApplicationContext(), null);
            } catch (Exception e2) {
                l9.d().a(e2);
                this.s.k.f("initProvider - exception while calling networkAdapter.init with " + networkSettings.getProviderName() + " - " + e2);
            }
        }
        IronLog.INTERNAL.verbose(b(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName())));
    }

    private boolean c(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        if (this.a.a(adapterBaseInterface, this.o.getAdUnit(), networkSettings.getProviderInstanceName())) {
            return false;
        }
        return networkSettings.shouldEarlyInit() || networkSettings.isIronSource() || networkSettings.isBidder(this.o.getAdUnit());
    }

    private boolean c(y1 y1Var) {
        return new ArrayList(Arrays.asList(y1.LOAD_AD_SUCCESS, y1.LOAD_AD_FAILED, y1.LOAD_AD_FAILED_WITH_REASON, y1.AUCTION_SUCCESS, y1.AUCTION_FAILED, y1.AUCTION_FAILED_NO_CANDIDATES, y1.AD_FORMAT_CAPPED, y1.AD_OPENED, y1.SHOW_AD, y1.SHOW_AD_FAILED, y1.AD_CLICKED, y1.RELOAD_AD_FAILED_WITH_REASON, y1.RELOAD_AD_SUCCESS, y1.AD_LEFT_APPLICATION)).contains(y1Var);
    }

    private boolean c(boolean z) {
        Boolean bool = this.z;
        if (bool == null) {
            return false;
        }
        return (z && !bool.booleanValue() && u()) || (!z && this.z.booleanValue());
    }

    private boolean d(NetworkSettings networkSettings) {
        AdapterBaseInterface adapterBaseInterfaceB = org.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), k());
        if (adapterBaseInterfaceB instanceof AdapterSettingsInterface) {
            return this.a.a(this.o.getLoadingData().a(), networkSettings.getProviderInstanceName(), networkSettings.getProviderTypeForReflection(), a(networkSettings, adapterBaseInterfaceB), adapterBaseInterfaceB, this.o.getAdUnit());
        }
        return false;
    }

    private List<j5> j() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (NetworkSettings networkSettings : this.o.k()) {
            if (!networkSettings.isBidder(this.o.getAdUnit()) && d(networkSettings)) {
                kr krVar = new kr(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.o.getAdUnit()));
                if (!this.l.b(krVar)) {
                    copyOnWriteArrayList.add(new j5(krVar.c()));
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private int p() {
        return 1;
    }

    private void r() {
        IronLog.INTERNAL.verbose(i());
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.o.k()) {
            if (c(networkSettings, org.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), k()))) {
                arrayList.add(new b(networkSettings));
            }
        }
        IronSourceThreadManager.INSTANCE.executeTasks(this.o.getProvidersParallelInit(), this.o.getWaitUntilAllProvidersFinishInit(), arrayList);
    }

    private void s() {
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.o.k()) {
            arrayList.add(new kr(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.o.getAdUnit())));
        }
        lr lrVar = new lr();
        this.l = lrVar;
        lrVar.a(arrayList);
    }

    public void A() {
        if (c()) {
            a(new a());
        } else {
            B();
        }
    }

    protected void G() {
        n.a().a(this.o.getAdUnit(), this.o.getDelayLoadFailure());
    }

    protected boolean H() {
        return true;
    }

    protected boolean I() {
        return true;
    }

    public void J() {
        Iterator<NetworkSettings> it = this.o.k().iterator();
        while (it.hasNext()) {
            org.json.mediationsdk.c.b().b(it.next(), this.o.getAdUnit(), k());
        }
    }

    protected LoadWhileShowSupportState a(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        return LoadWhileShowSupportState.NONE;
    }

    protected BaseAdAdapter<?, Listener> a(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        BaseAdAdapter<?, Listener> baseAdAdapter = (BaseAdAdapter<?, Listener>) org.json.mediationsdk.c.b().a(networkSettings, ad_unit, k());
        if (baseAdAdapter != null) {
            return baseAdAdapter;
        }
        return null;
    }

    protected AdData a(NetworkSettings networkSettings, String str) {
        return AdData.createAdDataForNetworkAdapter(b(networkSettings), this.o.getAdUnit(), str);
    }

    protected abstract Smash a(NetworkSettings networkSettings, BaseAdAdapter<?, Listener> baseAdAdapter, int i, String str, j5 j5Var);

    protected String a(j5 j5Var, int i) {
        return String.format("%s%s", Integer.valueOf(i), j5Var.c());
    }

    public Map<String, Object> a(y1 y1Var) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        JSONObject jSONObject = this.g;
        if (jSONObject != null && jSONObject.length() > 0) {
            map.put("genericParams", this.g);
        }
        map.put("sessionDepth", Integer.valueOf(this.C.a(this.o.getAdUnit())));
        if (c(y1Var)) {
            map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.e));
            if (!TextUtils.isEmpty(this.f)) {
                map.put(IronSourceConstants.AUCTION_FALLBACK, this.f);
            }
        }
        if (b(y1Var) && !TextUtils.isEmpty(this.a.c())) {
            map.put("auctionId", this.a.c());
        }
        return map;
    }

    public void a() {
        IronLog.INTERNAL.verbose(i());
        A();
    }

    @Override // org.json.uu
    public void a(int i) {
        this.s.k.t("waterfalls hold too many with size = " + i);
    }

    @Override // org.json.p4
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(i());
        if (!y()) {
            String str3 = "unexpected auction fail - error = " + i + ", " + str + " state = " + this.p;
            ironLog.error(b(str3));
            this.s.k.h(str3);
            return;
        }
        String str4 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        ironLog.verbose(b(str4));
        IronSourceUtils.sendAutomationLog(l() + ": " + str4);
        this.e = i2;
        this.f = str2;
        this.g = new JSONObject();
        L();
        this.s.i.a(j, i, str);
        a(f.LOADING);
        C();
    }

    protected void a(int i, String str, boolean z) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        a(f.READY_TO_LOAD);
        ironLog.verbose(b("errorCode = " + i + ", errorReason = " + str));
        if (this.o.getLoadingData().f()) {
            if (!z) {
                this.s.g.a(xa.a(this.n), i, str);
            }
            a(new IronSourceError(i, str));
        } else {
            if (!z) {
                this.s.k.b(i, str);
            }
            b(false);
        }
        this.q.e();
    }

    protected void a(Context context, i iVar, p4 p4Var) {
        org.json.mediationsdk.e eVar = this.c;
        if (eVar != null) {
            eVar.a(context, iVar, p4Var);
        } else {
            IronLog.INTERNAL.error(b("mAuctionHandler is null"));
        }
    }

    public void a(Context context, boolean z) {
        IronLog.INTERNAL.verbose(b("track = " + z));
        try {
            this.j = z;
            if (z) {
                if (this.k == null) {
                    this.k = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.k, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.k != null) {
                context.getApplicationContext().unregisterReceiver(this.k);
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    protected void a(i2 i2Var) {
        this.t = i2Var;
    }

    protected void a(f fVar) {
        synchronized (this.x) {
            IronLog.INTERNAL.verbose("set current state to = " + fVar);
            this.p = fVar;
        }
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.v = ironSourceSegment;
    }

    protected void a(IronSourceError ironSourceError) {
        n.a().b(this.o.getAdUnit(), ironSourceError);
    }

    @Override // org.json.o2
    public void a(IronSourceError ironSourceError, n7<?> n7Var) {
        zu<Smash> zuVarE;
        n7<?> n7VarC;
        synchronized (this.x) {
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose(b(n7Var.k() + " - error = " + ironSourceError));
            if (n7Var.h().equals(this.a.c()) && this.p != f.AUCTION) {
                this.b.put(n7Var.c(), h.a.ISAuctionPerformanceFailedToLoad);
                if (z() || x()) {
                    zuVarE = E();
                    if (zuVarE.c()) {
                        a(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "Mediation No fill", false);
                        return;
                    }
                } else {
                    zuVarE = null;
                }
                if (zuVarE == null) {
                    return;
                }
                if (this.o.getCom.ironsource.mediationsdk.d.z java.lang.String()) {
                    synchronized (this.x) {
                        if (zuVarE.b() && w() && (n7VarC = new yu(this.o).c(this.a.b())) != null) {
                            i(n7VarC);
                        }
                    }
                }
                Iterator<Smash> it = zuVarE.a().iterator();
                while (it.hasNext()) {
                    it.next().E();
                }
                return;
            }
            ironLog.error(b("onAdLoadFailed was invoked from " + n7Var.c() + " with state =" + this.p + " auctionId: " + n7Var.h() + " and the current id is " + this.a.c()));
            zt ztVar = this.s.k;
            StringBuilder sb = new StringBuilder("onAdLoadFailed was invoked with state =");
            sb.append(this.p);
            ztVar.m(sb.toString());
        }
    }

    @Override // org.json.u7
    public void a(NetworkSettings networkSettings) {
        AdapterBaseInterface adapterBaseInterfaceB = org.json.mediationsdk.c.b().b(networkSettings, this.o.getAdUnit(), k());
        if (adapterBaseInterfaceB != null) {
            this.s.h.a(b(networkSettings, adapterBaseInterfaceB));
        }
    }

    protected void a(n7<?> n7Var, AdInfo adInfo) {
        this.t.c(adInfo);
    }

    public void a(xs xsVar) {
        this.H = xsVar;
        this.G = xsVar != null;
        this.z = null;
    }

    @Override // org.json.po
    public void a(Runnable runnable) {
        vi viVar = this.J;
        if (viVar != null) {
            viVar.a(runnable);
        }
    }

    @Override // org.json.u7
    public void a(String str) {
        this.s.k.f(str);
    }

    @Override // org.json.p4
    public void a(List<j5> list, String str, j5 j5Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(i());
        if (!y()) {
            ironLog.error(b("unexpected auction success for auctionId - " + str + " state = " + this.p));
            zt ztVar = this.s.k;
            StringBuilder sb = new StringBuilder("unexpected auction success, state = ");
            sb.append(this.p);
            ztVar.i(sb.toString());
            return;
        }
        this.f = "";
        this.e = i;
        this.h = j5Var;
        this.g = jSONObject;
        if (!TextUtils.isEmpty(str2)) {
            this.s.k.a(i2, str2);
        }
        a(jSONObject2);
        if (this.u.a(this.o.getAdUnit())) {
            this.s.i.a(str);
            a(IronSourceError.ERROR_AD_FORMAT_CAPPED, "Ad unit is capped", true);
            return;
        }
        String strA = a(list, str);
        this.s.i.a(j, this.o.s());
        this.s.i.c(strA);
        a(f.LOADING);
        C();
    }

    @Override // org.json.an
    public void a(boolean z) {
        if (!this.j || this.o.getLoadingData().f()) {
            return;
        }
        IronLog.INTERNAL.verbose("network availability changed to - " + z);
        if (c(z)) {
            a(z, false, (n7<?>) null);
        }
    }

    protected void a(boolean z, boolean z2, n7<?> n7Var) {
        synchronized (this.x) {
            Boolean bool = this.z;
            if (bool == null || bool.booleanValue() != z) {
                this.z = Boolean.valueOf(z);
                long time = 0;
                if (this.y != 0) {
                    time = new Date().getTime() - this.y;
                }
                this.y = new Date().getTime();
                this.s.g.a(z, time, z2);
                AdInfo adInfoF = n7Var != null ? n7Var.f() : this.A;
                this.A = adInfoF;
                i2 i2Var = this.t;
                if (!z) {
                    adInfoF = null;
                }
                i2Var.a(z, adInfoF);
            }
        }
    }

    protected boolean a(f fVar, f fVar2) {
        boolean z;
        synchronized (this.x) {
            if (this.p == fVar) {
                IronLog.INTERNAL.verbose("expected state = " + fVar + ", state to set = " + fVar2);
                this.p = fVar2;
                z = true;
            } else {
                IronLog.INTERNAL.verbose("wrong state, current state = " + this.p + ", expected state = " + fVar);
                z = false;
            }
        }
        return z;
    }

    protected String b(String str) {
        String str2 = this.o.getAdUnit().name() + " state:" + this.p;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str2 + " - " + str;
    }

    protected abstract JSONObject b(NetworkSettings networkSettings);

    @Override // org.json.o
    public void b() {
        if (this.o.getLoadingData().e()) {
            a(f.READY_TO_LOAD);
            b(true);
            A();
        }
    }

    protected void b(j5 j5Var, String str) {
        if (j5Var == null) {
            IronLog.INTERNAL.error(b("reportImpressionDataToPublisher - no auctionResponseItem or listener"));
            b2 b2Var = this.s;
            if (b2Var != null) {
                b2Var.k.f("reportImpressionDataToPublisher - no auctionResponseItem or listener");
                return;
            }
            return;
        }
        ImpressionData impressionDataA = j5Var.a(str);
        if (impressionDataA != null) {
            for (ImpressionDataListener impressionDataListener : new HashSet(this.B.a())) {
                IronLog.CALLBACK.info(b("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + impressionDataA));
                impressionDataListener.onImpressionSuccess(impressionDataA);
            }
        }
    }

    @Override // org.json.o2
    public void b(n7<?> n7Var) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(b(n7Var.k()));
        this.s.j.g(n());
        this.a.a(n7Var);
        this.a.b(n7Var);
        this.l.a(n7Var);
        if (this.l.b(n7Var)) {
            ironLog.verbose(b(n7Var.c() + " was session capped"));
            n7Var.N();
            IronSourceUtils.sendAutomationLog(n7Var.c() + " was session capped");
        }
        this.F.a(ContextProvider.getInstance().getApplicationContext(), n(), this.o.getAdUnit());
        if (this.E.b(ContextProvider.getInstance().getApplicationContext(), this.i, this.o.getAdUnit())) {
            ironLog.verbose(b("placement " + n() + " is capped"));
            this.s.j.b(n(), null);
        }
        this.D.b(this.o.getAdUnit());
        if (this.o.r()) {
            j5 j5VarI = n7Var.i();
            this.c.a(j5VarI, n7Var.l(), this.h, n());
            this.b.put(n7Var.c(), h.a.ISAuctionPerformanceShowedSuccessfully);
            if (H()) {
                b(j5VarI, n());
            }
        }
        g(n7Var);
        if (this.o.getLoadingData().e()) {
            b(false);
        }
        this.q.h();
    }

    protected void b(boolean z) {
        a(false, z, (n7<?>) null);
    }

    @Override // org.json.po
    public boolean c() {
        vi viVar = this.J;
        if (viVar == null || viVar == Thread.currentThread()) {
            return false;
        }
        return this.o.getSharedManagersThread();
    }

    @Override // org.json.o2
    public void e(n7<?> n7Var) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(b(n7Var.k()));
        if (!n7Var.h().equals(this.a.c())) {
            ironLog.error(b("invoked from " + n7Var.c() + " with state = " + this.p + " auctionId: " + n7Var.h() + " and the current id is " + this.a.c()));
            zt ztVar = this.s.k;
            StringBuilder sb = new StringBuilder("onAdLoadSuccess invoked with state = ");
            sb.append(this.p);
            ztVar.n(sb.toString());
            return;
        }
        if (this.o.getCom.ironsource.mediationsdk.d.z java.lang.String()) {
            List<Smash> listB = this.a.b();
            yu yuVar = new yu(this.o);
            boolean zA = yuVar.a(n7Var, listB);
            synchronized (this.x) {
                if (zA) {
                    if (w()) {
                        i(n7Var);
                    }
                }
                if (yuVar.a(listB)) {
                    i(yuVar.c(listB));
                }
            }
        }
        this.b.put(n7Var.c(), h.a.ISAuctionPerformanceLoadedSuccessfully);
        if (a(f.LOADING, f.READY_TO_SHOW)) {
            long jA = xa.a(this.n);
            if (v()) {
                this.s.g.a(jA);
            } else {
                this.s.g.a(jA, q());
            }
            if (this.o.getLoadingData().e()) {
                this.r.a(0L);
            }
            if (!this.o.getCom.ironsource.mediationsdk.d.z java.lang.String()) {
                i(n7Var);
            }
            h(n7Var);
        }
    }

    @Override // org.json.o2
    public void f(n7<?> n7Var) {
        IronLog.INTERNAL.verbose(b(n7Var.k()));
        this.s.j.a(n());
        this.t.a(this.i, n7Var.f());
    }

    protected abstract i2 g();

    protected void g(n7<?> n7Var) {
        this.t.d(n7Var.f());
    }

    protected n2 h() {
        return new n2(this.o.getLoadingData(), this);
    }

    protected void h(n7<?> n7Var) {
        if (this.o.getLoadingData().f()) {
            a(n7Var, n7Var.f());
        } else {
            a(true, false, n7Var);
        }
    }

    protected String i() {
        return b((String) null);
    }

    protected void i(n7<?> n7Var) {
        if (this.o.r() && this.I.compareAndSet(false, true)) {
            j5 j5VarI = n7Var.i();
            this.c.a(j5VarI, n7Var.l(), this.h);
            ArrayList<String> arrayList = new ArrayList<>();
            ConcurrentHashMap<String, j5> concurrentHashMap = new ConcurrentHashMap<>();
            for (Smash smash : this.a.b()) {
                arrayList.add(smash.c());
                concurrentHashMap.put(smash.c(), smash.i());
            }
            this.c.a(arrayList, concurrentHashMap, n7Var.l(), this.h, j5VarI);
        }
    }

    public UUID k() {
        return this.w;
    }

    protected abstract String l();

    protected String m() {
        return "fallback_" + System.currentTimeMillis();
    }

    protected String n() {
        Placement placement = this.i;
        return placement == null ? "" : placement.getCom.ironsource.oo.d java.lang.String();
    }

    abstract String o();

    protected boolean q() {
        return false;
    }

    protected boolean t() {
        return false;
    }

    protected boolean u() {
        return false;
    }

    protected abstract boolean v();

    protected boolean w() {
        boolean z;
        synchronized (this.x) {
            f fVar = this.p;
            z = fVar == f.LOADING || fVar == f.READY_TO_SHOW;
        }
        return z;
    }

    protected boolean x() {
        boolean z;
        synchronized (this.x) {
            z = this.p == f.READY_TO_SHOW;
        }
        return z;
    }

    protected boolean y() {
        boolean z;
        synchronized (this.x) {
            z = this.p == f.AUCTION;
        }
        return z;
    }

    protected boolean z() {
        boolean z;
        synchronized (this.x) {
            z = this.p == f.LOADING;
        }
        return z;
    }
}
