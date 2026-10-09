package org.json.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.json.an;
import org.json.cc;
import org.json.cf;
import org.json.ef;
import org.json.environment.ContextProvider;
import org.json.environment.NetworkStateReceiver;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.j5;
import org.json.jl;
import org.json.l5;
import org.json.l9;
import org.json.lr;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.impressionData.ImpressionDataListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.mj;
import org.json.o;
import org.json.ob;
import org.json.p4;
import org.json.t7;
import org.json.tp;
import org.json.vp;
import org.json.w7;
import org.json.wj;
import org.json.x7;
import org.json.xj;
import org.json.xp;
import org.json.yo;
import org.json.yp;

/* JADX INFO: loaded from: classes3.dex */
class q extends m implements wj, yp, p4, ef, an, o {
    private long A;
    private Boolean B;
    private final Object C;
    private cc D;
    private final boolean E;
    private final long F;
    private final cf.a G;
    private final cf H;
    private xj e;
    private ConcurrentHashMap<String, j5> f;
    private ConcurrentHashMap<String, h.a> g;
    private j5 h;
    private h i;
    private org.json.mediationsdk.e j;
    private JSONObject k;
    private xp l;
    private boolean m;
    private long n;
    private String o;
    private int p;
    private NetworkStateReceiver q;
    private boolean r;
    private final ConcurrentHashMap<String, r> s;
    private lr t;
    private int u;
    private String v;
    private int w;
    private boolean x;
    private boolean y;
    private e z;

    class a implements Runnable {
        final /* synthetic */ NetworkSettings a;
        final /* synthetic */ tp b;
        final /* synthetic */ String c;
        final /* synthetic */ String d;

        a(NetworkSettings networkSettings, tp tpVar, String str, String str2) {
            this.a = networkSettings;
            this.b = tpVar;
            this.c = str;
            this.d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.a(this.a, this.b, this.c, this.d);
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            q.this.j();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.d("makeAuction()");
            q.this.n = new Date().getTime();
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            q.this.b(map, arrayList, sb, arrayList2);
            if (q.this.E) {
                q.this.a(map, arrayList, sb, arrayList2);
            } else {
                q.this.a(map, arrayList, sb.toString());
            }
        }
    }

    class d implements w7.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        d(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.w7.b
        public void a(List<x7> list, long j, List<String> list2) {
            q.this.c(IronSourceConstants.RV_COLLECT_TOKENS_COMPLETED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}}));
            for (x7 x7Var : list) {
                r rVar = (r) q.this.s.get(x7Var.c());
                if (x7Var.a() != null) {
                    this.a.put(x7Var.c(), x7Var.a());
                    StringBuilder sb = this.b;
                    sb.append(x7Var.d());
                    sb.append(x7Var.c());
                    sb.append(",");
                    if (rVar != null) {
                        rVar.a(1021, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(x7Var.e())}});
                    }
                } else if (rVar != null) {
                    rVar.a(1022, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(x7Var.e())}, new Object[]{"reason", x7Var.b()}});
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                r rVar2 = (r) q.this.s.get(it.next());
                if (rVar2 != null) {
                    rVar2.a(1023, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
                }
            }
            q.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b.toString());
        }

        @Override // com.ironsource.w7.b
        public void onFailure(String str) {
            q.this.c(IronSourceConstants.RV_COLLECT_TOKENS_FAILED, mj.a(new Object[][]{new Object[]{"reason", str}}));
            q.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b.toString());
        }
    }

    private enum e {
        RV_STATE_INITIATING,
        RV_STATE_AUCTION_IN_PROGRESS,
        RV_STATE_NOT_LOADED,
        RV_STATE_LOADING_SMASHES,
        RV_STATE_READY_TO_SHOW
    }

    public q(List<NetworkSettings> list, tp tpVar, String str, String str2, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.o = "";
        this.r = false;
        this.u = 1;
        this.C = new Object();
        this.G = jl.K().m();
        this.H = jl.P().z();
        long time = new Date().getTime();
        c(IronSourceConstants.RV_MANAGER_INIT_STARTED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.LWS_RV_MANAGER_NAME}}));
        a(e.RV_STATE_INITIATING);
        this.B = null;
        this.w = tpVar.g();
        this.x = tpVar.j();
        this.v = "";
        this.k = null;
        l5 l5VarK = tpVar.k();
        this.y = false;
        this.e = new xj(tpVar.k().f(), tpVar.k().i());
        this.f = new ConcurrentHashMap<>();
        this.g = new ConcurrentHashMap<>();
        this.A = new Date().getTime();
        boolean z = l5VarK.g() > 0;
        this.m = z;
        if (z) {
            this.j = new org.json.mediationsdk.e(IronSource.AD_UNIT.REWARDED_VIDEO, l5VarK, this);
        }
        this.l = new xp(l5VarK, this);
        ConcurrentHashMap<String, r> concurrentHashMap = new ConcurrentHashMap<>();
        this.s = concurrentHashMap;
        a(list, tpVar, str, str2);
        this.i = new h(list, l5VarK.c());
        lr lrVar = new lr();
        this.t = lrVar;
        lrVar.a(new ArrayList(concurrentHashMap.values()));
        this.D = new cc(tpVar.c(), this);
        this.E = tpVar.l();
        this.F = tpVar.m();
        c(IronSourceConstants.RV_MANAGER_INIT_ENDED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(new Date().getTime() - time)}}));
        a(l5VarK.k());
    }

    private String a(j5 j5Var) {
        String string;
        r rVar = this.s.get(j5Var.c());
        if (rVar != null) {
            string = Integer.toString(rVar.g());
        } else {
            string = TextUtils.isEmpty(j5Var.k()) ? "1" : CommonGetHeaderBiddingToken.HB_TOKEN_VERSION;
        }
        return string + j5Var.c();
    }

    private void a(int i) {
        a(i, (Map<String, Object>) null, true, true);
    }

    private void a(int i, Map<String, Object> map) {
        a(i, map, false, true);
    }

    private void a(int i, Map<String, Object> map, boolean z, boolean z2) {
        HashMap map2 = new HashMap();
        map2.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        map2.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 2);
        if (z2 && !TextUtils.isEmpty(this.e.d())) {
            map2.put("auctionId", this.e.d());
        }
        JSONObject jSONObject = this.k;
        if (jSONObject != null && jSONObject.length() > 0) {
            map2.put("genericParams", this.k);
        }
        if (z && !TextUtils.isEmpty(this.v)) {
            map2.put("placement", this.v);
        }
        if (c(i)) {
            vp.i().a(map2, this.p, this.o);
        }
        map2.put("sessionDepth", Integer.valueOf(this.u));
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    map2.putAll(map);
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: RV sendMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        vp.i().a(new ob(i, new JSONObject(map2)));
    }

    private void a(long j) {
        Map<String, Object> mapA;
        if (this.t.a()) {
            d("all smashes are capped");
            mapA = mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED)}, new Object[]{"reason", "all smashes are capped"}});
        } else {
            a(IronSource.AD_UNIT.REWARDED_VIDEO);
            if (this.m) {
                if (!this.g.isEmpty()) {
                    this.i.a(this.g);
                    this.g.clear();
                }
                new Timer().schedule(new b(), j);
                return;
            }
            d("auction fallback flow starting");
            k();
            if (!this.e.c().isEmpty()) {
                b(1000);
                i();
                return;
            } else {
                d("loadSmashes -  waterfall is empty");
                mapA = mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{"reason", "waterfall is empty"}});
            }
        }
        a(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, mapA);
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NetworkSettings networkSettings, tp tpVar, String str, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
        AbstractAdapter abstractAdapterA = org.json.mediationsdk.c.b().a(networkSettings, networkSettings.getRewardedVideoSettings(), false);
        if (abstractAdapterA != null) {
            r rVar = new r(str, str2, networkSettings, this, tpVar.h(), abstractAdapterA, this.u);
            this.s.put(rVar.c(), rVar);
        }
        ironLog.verbose(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
    }

    private void a(e eVar) {
        d("current state=" + this.z + ", new state=" + eVar);
        this.z = eVar;
    }

    private void a(r rVar, String str) {
        String str2 = rVar.c() + " : " + str;
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "LWSProgRvManager: " + str2, 0);
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 3);
    }

    private void a(List<NetworkSettings> list, tp tpVar, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<NetworkSettings> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new a(it.next(), tpVar, str, str2));
        }
        IronSourceThreadManager.INSTANCE.executeTasks(tpVar.f(), tpVar.p(), arrayList);
    }

    private void a(List<j5> list, String str, JSONObject jSONObject) {
        this.f.clear();
        this.g.clear();
        CopyOnWriteArrayList<r> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        StringBuilder sb = new StringBuilder();
        for (j5 j5Var : list) {
            sb.append(a(j5Var) + ",");
            r rVar = this.s.get(j5Var.c());
            if (rVar != null) {
                AbstractAdapter abstractAdapterA = org.json.mediationsdk.c.b().a(rVar.b.h());
                if (abstractAdapterA != null) {
                    r rVar2 = new r(rVar, this, abstractAdapterA, this.u, str, jSONObject, this.p, this.o);
                    rVar2.a(true);
                    copyOnWriteArrayList.add(rVar2);
                    this.f.put(rVar2.c(), j5Var);
                    this.g.put(j5Var.c(), h.a.ISAuctionPerformanceDidntAttemptToLoad);
                }
            } else {
                d("updateWaterfall() - could not find matching smash for auction response item " + j5Var.c());
            }
        }
        this.e.a(copyOnWriteArrayList, str);
        if (this.e.a()) {
            a(IronSourceConstants.TROUBLESHOOTING_RV_WATERFALL_OVERHEAD, mj.a(new Object[][]{new Object[]{"reason", "waterfalls hold too many with size=" + this.e.e()}}));
        }
        d("updateWaterfall() - next waterfall is " + sb.toString());
        if (sb.length() == 0) {
            d("Updated waterfall is empty");
        }
        a(IronSourceConstants.RV_AUCTION_RESPONSE_WATERFALL, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, String str) {
        if (map.keySet().size() == 0 && list.size() == 0) {
            c(1301, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{IronSourceConstants.EVENTS_DURATION, 0}}));
            d("makeAuction() failed - No candidates available for auctioning");
            h();
            return;
        }
        d("makeAuction() - request waterfall is: " + str);
        b(1000);
        b(IronSourceConstants.RV_AUCTION_REQUEST);
        c(IronSourceConstants.RV_AUCTION_REQUEST_WATERFALL, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, str.toString()}}));
        this.j.a(ContextProvider.getInstance().getApplicationContext(), map, list, this.i, this.u, this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, StringBuilder sb, List<t7> list2) {
        if (list2.isEmpty()) {
            a(map, list, sb.toString());
            return;
        }
        w7 w7Var = new w7();
        d dVar = new d(map, sb, list);
        b(IronSourceConstants.RV_COLLECT_TOKENS);
        w7Var.a(list2, dVar, this.F, TimeUnit.MILLISECONDS);
    }

    private void a(boolean z, Map<String, Object> map) {
        synchronized (this.C) {
            Boolean bool = this.B;
            if (bool == null || bool.booleanValue() != z) {
                this.B = Boolean.valueOf(z);
                long time = new Date().getTime() - this.A;
                this.A = new Date().getTime();
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put(IronSourceConstants.EVENTS_DURATION, Long.valueOf(time));
                a(z ? IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE : IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, map);
                yo yoVarA = yo.a();
                xj xjVar = this.e;
                yoVarA.a(z, xjVar.a(xjVar.d()));
            }
        }
    }

    private void b(int i) {
        a(i, (Map<String, Object>) null, false, false);
    }

    private void b(int i, Map<String, Object> map) {
        a(i, map, true, true);
    }

    private void b(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void b(Map<String, Object> map, List<String> list, StringBuilder sb, List<t7> list2) {
        for (r rVar : this.s.values()) {
            if (!this.t.b(rVar) && this.e.b(rVar)) {
                if (!rVar.p()) {
                    list.add(rVar.c());
                    sb.append(rVar.g() + rVar.c() + ",");
                } else if (this.E) {
                    list2.add(new t7(rVar.g(), rVar.c(), null, rVar, null, null));
                } else {
                    try {
                        Map<String, Object> mapA = rVar.a((AdData) null);
                        if (mapA != null) {
                            map.put(rVar.c(), mapA);
                            sb.append(rVar.g() + rVar.c() + ",");
                        } else {
                            rVar.a(IronSourceConstants.TROUBLESHOOTING_RV_BIDDING_DATA_MISSING, new Object[][]{new Object[]{"reason", "Missing bidding data"}});
                        }
                    } catch (Exception e2) {
                        l9.d().a(e2);
                        String str = "prepareAuctionCandidates - exception while calling smash.getBiddingData - " + e2.getMessage();
                        IronLog.INTERNAL.error(str);
                        rVar.a(IronSourceConstants.TROUBLESHOOTING_RV_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str}});
                    } catch (NoClassDefFoundError e3) {
                        l9.d().a(e3);
                        String str2 = "prepareAuctionCandidates - error while calling smash.getBiddingData - " + e3.getMessage();
                        IronLog.INTERNAL.error(str2);
                        rVar.a(IronSourceConstants.TROUBLESHOOTING_RV_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str2}});
                    }
                }
            }
        }
    }

    private void b(boolean z) {
        a(z, (Map<String, Object>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i, Map<String, Object> map) {
        a(i, map, false, false);
    }

    private void c(r rVar, Placement placement) {
        d("showVideo()");
        this.t.a(rVar);
        if (this.t.b(rVar)) {
            rVar.B();
            IronSourceUtils.sendAutomationLog(rVar.c() + " rewarded video is now session capped");
        }
        cf.a aVar = this.G;
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        String str = placement.getCom.ironsource.oo.d java.lang.String();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
        aVar.a(applicationContext, str, ad_unit);
        if (this.H.b(ContextProvider.getInstance().getApplicationContext(), placement, ad_unit)) {
            a(IronSourceConstants.RV_CAP_PLACEMENT);
        }
        this.D.a();
        rVar.a(placement);
    }

    private void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: " + str, 3);
    }

    private boolean c(int i) {
        return i == 1003 || i == 1302 || i == 1301 || i == 1303;
    }

    private boolean c(boolean z) {
        Boolean bool = this.B;
        if (bool == null) {
            return false;
        }
        return (z && !bool.booleanValue() && d()) || (!z && this.B.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: " + str, 0);
    }

    private List<j5> g() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (r rVar : this.s.values()) {
            if (!rVar.p() && !this.t.b(rVar) && this.e.b(rVar)) {
                copyOnWriteArrayList.add(new j5(rVar.c()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void g(r rVar) {
        String strK = this.f.get(rVar.c()).k();
        JSONObject jSONObjectA = this.f.get(rVar.c()).a();
        rVar.c(strK);
        rVar.a(strK, jSONObjectA);
    }

    private void h() {
        a(e.RV_STATE_NOT_LOADED);
        if (!this.y) {
            b(false);
        }
        this.l.a();
    }

    private void i() {
        if (this.e.c().isEmpty()) {
            d("loadSmashes -  waterfall is empty");
            a(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{"reason", "waterfall is empty"}}));
            h();
            return;
        }
        a(e.RV_STATE_LOADING_SMASHES);
        int i = 0;
        for (int i2 = 0; i2 < this.e.c().size() && i < this.w; i2++) {
            r rVar = this.e.c().get(i2);
            if (rVar.h()) {
                if (this.x && rVar.p()) {
                    if (i != 0) {
                        String str = "Advanced Loading: Won't start loading bidder " + rVar.c() + " as a non bidder is being loaded";
                        d(str);
                        IronSourceUtils.sendAutomationLog(str);
                        return;
                    }
                    String str2 = "Advanced Loading: Starting to load bidder " + rVar.c() + ". No other instances will be loaded at the same time.";
                    d(str2);
                    IronSourceUtils.sendAutomationLog(str2);
                    g(rVar);
                    return;
                }
                g(rVar);
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        synchronized (this.C) {
            e eVar = this.z;
            e eVar2 = e.RV_STATE_AUCTION_IN_PROGRESS;
            if (eVar != eVar2) {
                a(eVar2);
                AsyncTask.execute(new c());
            }
        }
    }

    private void k() {
        a(g(), "fallback_" + System.currentTimeMillis(), this.k);
    }

    @Override // org.json.yp
    public void a() {
        d("onLoadTriggered: RV load was triggered in " + this.z + " state");
        a(0L);
    }

    @Override // org.json.p4
    public void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        d(str3);
        IronSourceUtils.sendAutomationLog("RV: " + str3);
        this.p = i2;
        this.o = str2;
        this.k = null;
        k();
        a(1301, TextUtils.isEmpty(str) ? mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}}) : mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}}));
        i();
    }

    @Override // org.json.ef
    public void a(Activity activity, Placement placement) {
        synchronized (this.C) {
            try {
                if (placement == null) {
                    a("showRewardedVideo error: empty default placement");
                    IronSourceError ironSourceError = new IronSourceError(1021, "showRewardedVideo error: empty default placement");
                    yo yoVarA = yo.a();
                    xj xjVar = this.e;
                    yoVarA.a(ironSourceError, xjVar.a(xjVar.d()));
                    a(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1021}, new Object[]{"reason", "showRewardedVideo error: empty default placement"}}), false, true);
                    return;
                }
                this.v = placement.getCom.ironsource.oo.d java.lang.String();
                b("showRewardedVideo(" + placement + ")");
                r rVar = null;
                b(IronSourceConstants.RV_API_SHOW_CALLED, activity != null ? mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW}}) : null);
                if (this.y) {
                    a("showRewardedVideo error: can't show ad while an ad is already showing");
                    IronSourceError ironSourceError2 = new IronSourceError(1022, "showRewardedVideo error: can't show ad while an ad is already showing");
                    yo yoVarA2 = yo.a();
                    xj xjVar2 = this.e;
                    yoVarA2.a(ironSourceError2, xjVar2.a(xjVar2.d()));
                    b(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1022}, new Object[]{"reason", "showRewardedVideo error: can't show ad while an ad is already showing"}}));
                    return;
                }
                if (this.z != e.RV_STATE_READY_TO_SHOW) {
                    a("showRewardedVideo error: show called while no ads are available");
                    IronSourceError ironSourceError3 = new IronSourceError(1023, "showRewardedVideo error: show called while no ads are available");
                    yo yoVarA3 = yo.a();
                    xj xjVar3 = this.e;
                    yoVarA3.a(ironSourceError3, xjVar3.a(xjVar3.d()));
                    b(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1023}, new Object[]{"reason", "showRewardedVideo error: show called while no ads are available"}}));
                    return;
                }
                if (this.H.b(ContextProvider.getInstance().getApplicationContext(), placement, IronSource.AD_UNIT.REWARDED_VIDEO)) {
                    String str = "showRewardedVideo error: placement " + this.v + " is capped";
                    a(str);
                    IronSourceError ironSourceError4 = new IronSourceError(IronSourceError.ERROR_PLACEMENT_CAPPED, str);
                    yo yoVarA4 = yo.a();
                    xj xjVar4 = this.e;
                    yoVarA4.a(ironSourceError4, xjVar4.a(xjVar4.d()));
                    b(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_PLACEMENT_CAPPED)}, new Object[]{"reason", str}}));
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                for (r rVar2 : this.e.c()) {
                    if (rVar2.A()) {
                        this.y = true;
                        rVar2.b(true);
                        a(e.RV_STATE_NOT_LOADED);
                        rVar = rVar2;
                        break;
                    }
                    if (rVar2.e() != null) {
                        stringBuffer.append(rVar2.c() + ":" + rVar2.e() + ",");
                    }
                    rVar2.b(false);
                }
                if (rVar != null) {
                    c(rVar, placement);
                    return;
                }
                d("showRewardedVideo(): No ads to show");
                yo yoVarA5 = yo.a();
                IronSourceError ironSourceErrorBuildNoAdsToShowError = ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
                xj xjVar5 = this.e;
                yoVarA5.a(ironSourceErrorBuildNoAdsToShowError, xjVar5.a(xjVar5.d()));
                HashMap map = new HashMap();
                map.put(IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW));
                map.put("reason", "showRewardedVideo(): No ads to show");
                if (stringBuffer.length() != 0) {
                    map.put(IronSourceConstants.EVENTS_EXT1, stringBuffer.toString());
                }
                b(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, map);
                this.l.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.json.ef
    public void a(Context context, boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager Should Track Network State: " + z, 0);
        try {
            this.r = z;
            if (z) {
                if (this.q == null) {
                    this.q = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.q, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.q != null) {
                context.getApplicationContext().unregisterReceiver(this.q);
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    @Override // org.json.wj
    public void a(IronSourceError ironSourceError, r rVar) {
        j5 j5Var;
        if (this.m && (j5Var = this.f.get(rVar.c())) != null) {
            xj xjVar = this.e;
            xjVar.a(xjVar.d(), j5Var.a(this.v), j5Var.d());
        }
        a(rVar, "onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
        this.y = false;
        b(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}}));
        yo.a().a(ironSourceError, this.e.a(rVar.u()));
        this.g.put(rVar.c(), h.a.ISAuctionPerformanceFailedToShow);
        if (this.z != e.RV_STATE_READY_TO_SHOW) {
            b(false);
        }
        this.l.b();
    }

    @Override // org.json.wj
    public void a(r rVar) {
        a(rVar, "onRewardedVideoAdStarted");
        yo.a().c();
    }

    @Override // org.json.wj
    public void a(r rVar, Placement placement) {
        a(rVar, "onRewardedVideoAdRewarded");
        yo.a().b(placement, this.e.a(rVar.u()));
    }

    @Override // org.json.p4
    public void a(List<j5> list, String str, j5 j5Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        d("makeAuction(): success");
        this.h = j5Var;
        this.p = i;
        this.k = jSONObject;
        this.o = "";
        if (!TextUtils.isEmpty(str2)) {
            a(88002, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str2}}));
        }
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
        a(jSONObject2, ad_unit);
        if (this.b.a(ad_unit)) {
            a(IronSourceConstants.RV_AD_UNIT_CAPPED, mj.a(new Object[][]{new Object[]{"auctionId", str}}));
            h();
        } else {
            a(list, str, this.k);
            a(IronSourceConstants.RV_AUCTION_SUCCESS, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}}));
            i();
        }
    }

    @Override // org.json.an
    public void a(boolean z) {
        if (this.r) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Network Availability Changed To: " + z, 0);
            if (c(z)) {
                b(z);
            }
        }
    }

    @Override // org.json.o
    public void b() {
        a(e.RV_STATE_NOT_LOADED);
        a(false, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_RV_EXPIRED_ADS)}, new Object[]{"reason", "loaded ads are expired"}}));
        a(0L);
    }

    @Override // org.json.wj
    public void b(r rVar) {
        a(rVar, "onRewardedVideoAdClosed, mediation state: " + this.z.name());
        yo.a().b(this.e.a(rVar.u()));
        this.y = false;
        boolean z = this.z == e.RV_STATE_READY_TO_SHOW;
        StringBuilder sb = new StringBuilder();
        if (z) {
            for (r rVar2 : this.e.c()) {
                if (rVar2.y()) {
                    sb.append(rVar2.c() + ";");
                }
            }
        }
        Object[][] objArr = new Object[1][];
        Object[] objArr2 = new Object[2];
        objArr2[0] = IronSourceConstants.EVENTS_EXT1;
        StringBuilder sb2 = new StringBuilder("otherRVAvailable = ");
        sb2.append(sb.length() > 0 ? "true|" + ((Object) sb) : "false");
        objArr2[1] = sb2.toString();
        objArr[0] = objArr2;
        rVar.b(1203, objArr);
        if (rVar.equals(this.e.f())) {
            this.e.a((r) null);
            if (this.z != e.RV_STATE_READY_TO_SHOW) {
                b(false);
            }
        }
    }

    @Override // org.json.wj
    public void b(r rVar, Placement placement) {
        a(rVar, "onRewardedVideoAdClicked");
        yo.a().a(placement, this.e.a(rVar.u()));
    }

    /* JADX WARN: Code duplicated, block: B:70:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0059 A[SYNTHETIC] */
    @Override // org.json.wj
    public void c(r rVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        synchronized (this.C) {
            a(rVar, "onLoadError mState=" + this.z);
            if (rVar.u() == this.e.d() && this.z != e.RV_STATE_AUCTION_IN_PROGRESS) {
                this.g.put(rVar.c(), h.a.ISAuctionPerformanceFailedToLoad);
                e eVar = this.z;
                if (eVar == e.RV_STATE_LOADING_SMASHES || eVar == e.RV_STATE_READY_TO_SHOW) {
                    boolean z = false;
                    boolean z2 = false;
                    for (r rVar2 : this.e.c()) {
                        if (rVar2.h()) {
                            if (this.x && rVar2.p()) {
                                if (z || z2) {
                                    String str = "Advanced Loading: Won't start loading bidder " + rVar2.c() + " as " + (z ? "a non bidder is being loaded" : "a non bidder was already loaded successfully");
                                    d(str);
                                    IronSourceUtils.sendAutomationLog(str);
                                    break;
                                }
                                String str2 = "Advanced Loading: Starting to load bidder " + rVar2.c() + ". No other instances will be loaded at the same time.";
                                d(str2);
                                IronSourceUtils.sendAutomationLog(str2);
                                if (this.f.get(rVar2.c()) != null) {
                                    copyOnWriteArrayList.add(rVar2);
                                    if (this.x) {
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                                continue;
                            } else if (this.f.get(rVar2.c()) != null) {
                                copyOnWriteArrayList.add(rVar2);
                                if (this.x || !rVar.p() || rVar2.p() || copyOnWriteArrayList.size() >= this.w) {
                                    break;
                                } else {
                                    z = true;
                                }
                            } else {
                                continue;
                            }
                        } else if (rVar2.z()) {
                            z = true;
                        } else if (rVar2.A()) {
                            z2 = true;
                        }
                    }
                    if (copyOnWriteArrayList.size() == 0 && !z2 && !z) {
                        d("onLoadError(): No other available smashes");
                        if (!this.y) {
                            b(false);
                        }
                        a(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW)}, new Object[]{"reason", "Mediation No fill"}}));
                        a(e.RV_STATE_NOT_LOADED);
                        this.l.a();
                    }
                    Iterator it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        g((r) it.next());
                    }
                    return;
                }
                return;
            }
            d("onLoadError was invoked with auctionId:" + rVar.u() + " and the current id is " + this.e.d());
            Object[] objArr = {IronSourceConstants.EVENTS_ERROR_CODE, 4};
            StringBuilder sb = new StringBuilder("loadError wrong auction ID ");
            sb.append(this.z);
            rVar.a(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{objArr, new Object[]{"reason", sb.toString()}});
        }
    }

    @Override // org.json.wj
    public void d(r rVar) {
        this.e.a(rVar);
        this.u++;
        a(rVar, "onRewardedVideoAdOpened");
        if (this.m) {
            j5 j5Var = this.f.get(rVar.c());
            if (j5Var != null) {
                xj xjVar = this.e;
                xjVar.a(xjVar.d(), j5Var.a(this.v), j5Var.d());
                this.j.a(j5Var, rVar.g(), this.h, this.v);
                this.g.put(rVar.c(), h.a.ISAuctionPerformanceShowedSuccessfully);
                a(j5Var, this.v);
            } else {
                String strC = rVar.c();
                c("onRewardedVideoAdOpened showing instance " + strC + " missing from waterfall");
                a(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1011}, new Object[]{"reason", "Showing missing " + this.z}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}}));
            }
        }
        yo.a().c(this.e.a(rVar.u()));
        b(false);
        this.l.c();
    }

    @Override // org.json.ef
    public boolean d() {
        if ((!this.r || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) && this.z == e.RV_STATE_READY_TO_SHOW && !this.y) {
            Iterator<r> it = this.e.c().iterator();
            while (it.hasNext()) {
                if (it.next().A()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.json.wj
    public void e(r rVar) {
        synchronized (this.C) {
            a(rVar, "onLoadSuccess mState=" + this.z);
            if (rVar.u() == this.e.d() && this.z != e.RV_STATE_AUCTION_IN_PROGRESS) {
                this.g.put(rVar.c(), h.a.ISAuctionPerformanceLoadedSuccessfully);
                e eVar = this.z;
                e eVar2 = e.RV_STATE_LOADING_SMASHES;
                if (eVar == eVar2) {
                    a(e.RV_STATE_READY_TO_SHOW);
                    a(1003, mj.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(new Date().getTime() - this.n)}}));
                    this.D.a(0L);
                    if (this.m) {
                        j5 j5Var = this.f.get(rVar.c());
                        if (j5Var != null) {
                            xj xjVar = this.e;
                            xjVar.a(xjVar.d(), j5Var.a(""), j5Var.d());
                            this.j.a(j5Var, rVar.g(), this.h);
                            this.j.a(this.e.c(), this.f, rVar.g(), this.h, j5Var);
                        } else {
                            String strC = rVar.c();
                            c("onLoadSuccess winner instance " + strC + " missing from waterfall. auctionId: " + rVar.u() + " and the current id is " + this.e.d());
                            Object[] objArr = {IronSourceConstants.EVENTS_ERROR_CODE, 1010};
                            StringBuilder sb = new StringBuilder("Loaded missing ");
                            sb.append(eVar2);
                            a(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, mj.a(new Object[][]{objArr, new Object[]{"reason", sb.toString()}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}}));
                        }
                    }
                    b(true);
                }
                return;
            }
            d("onLoadSuccess was invoked with auctionId: " + rVar.u() + " and the current id is " + this.e.d());
            Object[] objArr2 = {IronSourceConstants.EVENTS_ERROR_CODE, 2};
            StringBuilder sb2 = new StringBuilder("onLoadSuccess wrong auction ID ");
            sb2.append(this.z);
            rVar.a(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{objArr2, new Object[]{"reason", sb2.toString()}});
        }
    }

    @Override // org.json.wj
    public void f(r rVar) {
        a(rVar, "onRewardedVideoAdEnded");
        yo.a().b();
    }
}
