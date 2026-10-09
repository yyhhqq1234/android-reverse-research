package org.json.mediationsdk;

import android.content.Context;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
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
import org.json.cf;
import org.json.e7;
import org.json.environment.ContextProvider;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.j5;
import org.json.jl;
import org.json.l9;
import org.json.li;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.impressionData.ImpressionDataListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.ob;
import org.json.p4;
import org.json.q5;
import org.json.ro;
import org.json.st;
import org.json.t7;
import org.json.tk;
import org.json.w7;
import org.json.x7;
import org.json.xa;
import org.json.xe;
import org.json.y7;
import org.json.ye;
import org.json.zg;

/* JADX INFO: loaded from: classes3.dex */
public class w extends m implements ro, p4 {
    private ConcurrentHashMap<String, com.ironsource.mediationsdk.h.a> A;
    private long B;
    private final Object C;
    private xa D;
    private boolean E;
    private final boolean F;
    private final long G;
    private final Runnable H;
    private final zg e;
    private final zg.a f;
    private final cf g;
    private final cf.a h;
    private k i;
    private i j;
    private tk k;
    private IronSourceBannerLayout l;
    private e7 m;
    private int n;
    private x o;
    private int p;
    private final ConcurrentHashMap<String, x> q;
    private CopyOnWriteArrayList<x> r;
    private String s;
    private JSONObject t;
    private String u;
    private int v;
    private org.json.mediationsdk.e w;
    private j5 x;
    private org.json.mediationsdk.h y;
    private ConcurrentHashMap<String, j5> z;

    class a implements l.b {
        final /* synthetic */ e7 a;
        final /* synthetic */ IronSourceBannerLayout b;

        a(e7 e7Var, IronSourceBannerLayout ironSourceBannerLayout) {
            this.a = e7Var;
            this.b = ironSourceBannerLayout;
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a() {
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("placement = " + this.a.getCom.ironsource.oo.d java.lang.String());
            l.b(this.b);
            w.this.l = this.b;
            w.this.m = this.a;
            cf cfVar = w.this.g;
            Context applicationContext = ContextProvider.getInstance().getApplicationContext();
            e7 e7Var = this.a;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
            if (!cfVar.b(applicationContext, e7Var, ad_unit)) {
                w.this.b(false);
                return;
            }
            ironLog.verbose("placement is capped");
            n.a().b(ad_unit, new IronSourceError(IronSourceError.ERROR_BN_LOAD_PLACEMENT_CAPPED, "placement " + this.a.getCom.ironsource.oo.d java.lang.String() + " is capped"));
            w.this.a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_BN_LOAD_PLACEMENT_CAPPED)}});
            w.this.a(i.READY_TO_LOAD);
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a(String str) {
            IronLog.API.error("can't load banner - errorMessage = " + str);
        }
    }

    class b implements l.b {
        final /* synthetic */ IronSourceBannerLayout a;

        b(IronSourceBannerLayout ironSourceBannerLayout) {
            this.a = ironSourceBannerLayout;
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a() {
            IronLog.INTERNAL.verbose("destroying banner");
            w.this.k.b();
            w.this.a(IronSourceConstants.BN_DESTROY, (Object[][]) null, w.this.o != null ? w.this.o.n() : w.this.p);
            w.this.h();
            this.a.a();
            w.this.l = null;
            w.this.m = null;
            w.this.a(i.READY_TO_LOAD);
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a(String str) {
            IronLog.API.error("destroy banner failed - errorMessage = " + str);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (w.this.l == null) {
                    IronLog.INTERNAL.verbose("mIronSourceBanner is null");
                    w.this.a(IronSourceConstants.BN_SKIP_RELOAD, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_BN_RELOAD_SKIP_BANNER_LAYOUT_IS_NULL)}});
                } else {
                    if (w.this.o()) {
                        w.this.v();
                        return;
                    }
                    IronLog.INTERNAL.verbose("banner is not visible, reload skipped");
                    w.this.a(IronSourceConstants.BN_SKIP_RELOAD, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_BN_RELOAD_SKIP_INVISIBLE)}});
                    w.this.k.a(TimeUnit.SECONDS.toMillis(w.this.i.f()));
                }
            } catch (Throwable th) {
                l9.d().a(th);
                w.this.a(IronSourceConstants.TROUBLESHOOTING_BN_RELOAD_EXCEPTION, new Object[][]{new Object[]{"reason", th.getMessage()}});
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.w();
            if (w.this.y()) {
                return;
            }
            w.this.a(IronSourceConstants.BN_AUCTION_REQUEST);
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            w.this.b(map, arrayList, sb, arrayList2);
            if (w.this.F) {
                w.this.a(map, arrayList, sb, arrayList2);
            } else {
                w.this.a(map, arrayList, sb);
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
            w.this.a(IronSourceConstants.BN_COLLECT_TOKENS_COMPLETED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
            for (x7 x7Var : list) {
                if (x7Var.a() != null) {
                    this.a.put(x7Var.c(), x7Var.a());
                    StringBuilder sb = this.b;
                    sb.append(x7Var.d());
                    sb.append(x7Var.c());
                    sb.append(",");
                    ((x) w.this.q.get(x7Var.c())).a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN_SUCCESS, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(x7Var.e())}});
                } else {
                    ((x) w.this.q.get(x7Var.c())).a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(x7Var.e())}, new Object[]{"reason", x7Var.b()}});
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                ((x) w.this.q.get(it.next())).a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN_TIMED_OUT, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
            }
            w.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b);
        }

        @Override // com.ironsource.w7.b
        public void onFailure(String str) {
            w.this.a(IronSourceConstants.BN_COLLECT_TOKENS_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, str}});
            w.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b);
        }
    }

    class f implements Runnable {
        final /* synthetic */ NetworkSettings a;

        f(NetworkSettings networkSettings) {
            this.a = networkSettings;
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.a(this.a);
        }
    }

    class g implements y7 {
        final /* synthetic */ x a;

        g(x xVar) {
            this.a = xVar;
        }

        @Override // org.json.y7
        public void a() {
            this.a.D();
        }
    }

    class h extends TimerTask {
        h() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            w.this.u();
        }
    }

    enum i {
        NONE,
        READY_TO_LOAD,
        STARTED_LOADING,
        FIRST_AUCTION,
        AUCTION,
        LOADING,
        RELOADING,
        LOADED
    }

    w(ye yeVar, xe xeVar, List<NetworkSettings> list, k kVar, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.j = i.NONE;
        this.u = "";
        this.C = new Object();
        this.E = false;
        c cVar = new c();
        this.H = cVar;
        zg zgVarK = yeVar.k();
        this.e = zgVarK;
        this.f = xeVar.e();
        this.g = yeVar.z();
        this.h = xeVar.m();
        long time = new Date().getTime();
        a(IronSourceConstants.BN_MANAGER_INIT_STARTED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.PROG_BN_MANAGER_NAME}});
        IronLog.INTERNAL.verbose("isAuctionEnabled = " + kVar.k());
        this.i = kVar;
        this.q = new ConcurrentHashMap<>();
        this.r = new CopyOnWriteArrayList<>();
        this.z = new ConcurrentHashMap<>();
        this.A = new ConcurrentHashMap<>();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        this.p = zgVarK.a(ad_unit);
        n.a().a(ad_unit, this.i.d());
        if (this.i.k()) {
            this.w = new org.json.mediationsdk.e(ad_unit, this.i.b(), this);
        }
        this.y = new org.json.mediationsdk.h(list, this.i.b().c());
        a(list, kVar);
        this.B = new Date().getTime();
        a(i.READY_TO_LOAD);
        this.F = kVar.g();
        this.G = kVar.h();
        this.k = new tk(cVar, org.json.lifecycle.b.d(), new st());
        a(IronSourceConstants.BN_MANAGER_INIT_ENDED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(new Date().getTime() - time)}});
    }

    public w(List<NetworkSettings> list, k kVar, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        this(jl.P(), jl.K(), list, kVar, hashSet, ironSourceSegment);
    }

    private String a(List<j5> list) {
        IronLog.INTERNAL.verbose("waterfall.size() = " + list.size());
        this.r.clear();
        this.z.clear();
        this.A.clear();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            j5 j5Var = list.get(i2);
            a(j5Var);
            sb.append(b(j5Var));
            if (i2 != list.size() - 1) {
                sb.append(",");
            }
        }
        IronLog.INTERNAL.verbose("updateWaterfall() - next waterfall is " + sb.toString());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        a(i2, (Object[][]) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, Object[][] objArr) {
        a(i2, objArr, this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, Object[][] objArr, int i3) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
        try {
            ISBannerSize iSBannerSizeK = k();
            if (iSBannerSizeK != null) {
                a(mediationAdditionalData, iSBannerSizeK);
            }
            if (this.m != null) {
                mediationAdditionalData.put("placement", l());
            }
            mediationAdditionalData.put("sessionDepth", i3);
            if (!TextUtils.isEmpty(this.s)) {
                mediationAdditionalData.put("auctionId", this.s);
            }
            JSONObject jSONObject = this.t;
            if (jSONObject != null && jSONObject.length() > 0) {
                mediationAdditionalData.put("genericParams", this.t);
            }
            if (b(i2)) {
                mediationAdditionalData.put(IronSourceConstants.AUCTION_TRIALS, this.v);
                if (!TextUtils.isEmpty(this.u)) {
                    mediationAdditionalData.put(IronSourceConstants.AUCTION_FALLBACK, this.u);
                }
            }
            if (objArr != null) {
                for (Object[] objArr2 : objArr) {
                    mediationAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
        li.i().a(new ob(i2, mediationAdditionalData));
    }

    private void a(j5 j5Var) {
        x xVar = this.q.get(j5Var.c());
        if (xVar == null) {
            IronLog.INTERNAL.error("could not find matching smash for auction response item - item = " + j5Var.c());
            return;
        }
        AbstractAdapter abstractAdapterA = org.json.mediationsdk.c.b().a(xVar.b.h());
        if (abstractAdapterA != null) {
            x xVar2 = new x(this.i, this, xVar.b.h(), abstractAdapterA, this.p, this.s, this.t, this.v, this.u, p());
            xVar2.a(true);
            this.r.add(xVar2);
            this.z.put(xVar2.c(), j5Var);
            this.A.put(j5Var.c(), com.ironsource.mediationsdk.h.a.ISAuctionPerformanceDidntAttemptToLoad);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NetworkSettings networkSettings) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
        AbstractAdapter abstractAdapterA = org.json.mediationsdk.c.b().a(networkSettings, networkSettings.getBannerSettings(), false);
        if (abstractAdapterA != null) {
            x xVar = new x(this.i, this, networkSettings, abstractAdapterA, this.p, p());
            this.q.put(xVar.c(), xVar);
        } else {
            ironLog.verbose(networkSettings.getProviderInstanceName() + " can't load adapter");
        }
        ironLog.verbose(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(i iVar) {
        IronLog.INTERNAL.verbose("from '" + this.j + "' to '" + iVar + "'");
        synchronized (this.C) {
            this.j = iVar;
        }
    }

    private void a(x xVar, j5 j5Var) {
        this.w.a(j5Var, xVar.g(), this.x, l());
        a(this.z.get(xVar.c()), l());
    }

    private void a(List<NetworkSettings> list, k kVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<NetworkSettings> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new f(it.next()));
        }
        IronSourceThreadManager.INSTANCE.executeTasks(kVar.c().m(), kVar.c().o(), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, StringBuilder sb) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("auction waterfallString = " + ((Object) sb));
        if (map.size() != 0 || list.size() != 0) {
            a(IronSourceConstants.BN_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}});
            org.json.mediationsdk.e eVar = this.w;
            if (eVar != null) {
                eVar.a(ContextProvider.getInstance().getApplicationContext(), map, list, this.y, this.p, this.c, j());
                return;
            } else {
                ironLog.error("mAuctionHandler is null");
                return;
            }
        }
        a(IronSourceConstants.BN_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{IronSourceConstants.EVENTS_DURATION, 0}});
        if (a(i.AUCTION, i.LOADED)) {
            this.k.a(TimeUnit.SECONDS.toMillis(this.i.f()));
            return;
        }
        n.a().b(IronSource.AD_UNIT.BANNER, new IronSourceError(1005, "No candidates available for auctioning"));
        a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}});
        a(i.READY_TO_LOAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, StringBuilder sb, List<t7> list2) {
        if (list2.isEmpty()) {
            a(map, list, sb);
            return;
        }
        w7 w7Var = new w7();
        e eVar = new e(map, sb, list);
        a(IronSourceConstants.BN_COLLECT_TOKENS);
        w7Var.a(list2, eVar, this.G, TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void a(JSONObject jSONObject, ISBannerSize iSBannerSize) {
        byte b2;
        try {
            String description = iSBannerSize.getDescription();
            switch (description.hashCode()) {
                case -387072689:
                    if (!description.equals("RECTANGLE")) {
                        b2 = -1;
                    } else {
                        b2 = 2;
                    }
                    break;
                case 72205083:
                    if (!description.equals("LARGE")) {
                        b2 = -1;
                    } else {
                        b2 = 1;
                    }
                    break;
                case 79011241:
                    if (!description.equals("SMART")) {
                        b2 = -1;
                    } else {
                        b2 = 3;
                    }
                    break;
                case 1951953708:
                    if (!description.equals("BANNER")) {
                        b2 = -1;
                    } else {
                        b2 = 0;
                    }
                    break;
                case 1999208305:
                    if (!description.equals("CUSTOM")) {
                        b2 = -1;
                    } else {
                        b2 = 4;
                    }
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 == 0) {
                jSONObject.put(l.h, 1);
            } else if (b2 == 1) {
                jSONObject.put(l.h, 2);
            } else if (b2 == 2) {
                jSONObject.put(l.h, 3);
            } else if (b2 == 3) {
                jSONObject.put(l.h, 5);
            } else if (b2 == 4) {
                jSONObject.put(l.h, 6);
                jSONObject.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
            }
            if (iSBannerSize.isAdaptive()) {
                String str = l.q;
                if (jSONObject.has(IronSourceConstants.EVENTS_EXT1)) {
                    str = jSONObject.optString(IronSourceConstants.EVENTS_EXT1) + " , Adaptive=true";
                }
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, str);
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
    }

    private boolean a(i iVar, i iVar2) {
        boolean z;
        synchronized (this.C) {
            if (this.j == iVar) {
                IronLog.INTERNAL.verbose("set state from '" + this.j + "' to '" + iVar2 + "'");
                this.j = iVar2;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private String b(j5 j5Var) {
        x xVar = this.q.get(j5Var.c());
        return ((xVar == null ? !TextUtils.isEmpty(j5Var.k()) : xVar.p()) ? CommonGetHeaderBiddingToken.HB_TOKEN_VERSION : "1") + j5Var.c();
    }

    private void b(x xVar, View view, FrameLayout.LayoutParams layoutParams) {
        if (this.l != null) {
            xVar.E();
            l.a(this.l, view, layoutParams, new g(xVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map, List<String> list, StringBuilder sb, List<t7> list2) {
        if (this.g.b(ContextProvider.getInstance().getApplicationContext(), this.m, IronSource.AD_UNIT.BANNER)) {
            return;
        }
        for (x xVar : this.q.values()) {
            AdData adDataCreateAdDataForNetworkAdapter = AdData.createAdDataForNetworkAdapter(xVar.d, IronSource.AD_UNIT.BANNER, null, this.l);
            if (xVar.p()) {
                if (this.F) {
                    list2.add(new t7(xVar.g(), xVar.c(), adDataCreateAdDataForNetworkAdapter, xVar, null, null));
                } else {
                    try {
                        Map<String, Object> mapA = xVar.a(adDataCreateAdDataForNetworkAdapter);
                        if (mapA != null) {
                            map.put(xVar.c(), mapA);
                            sb.append(xVar.g() + xVar.c() + ",");
                        } else {
                            xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_BIDDING_DATA_MISSING, new Object[][]{new Object[]{"reason", "Missing bidding data"}});
                        }
                    } catch (Exception e2) {
                        l9.d().a(e2);
                        String str = "prepareAuctionCandidates - exception while calling smash.getBiddingData - " + e2.getMessage();
                        IronLog.INTERNAL.error(str);
                        xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str}});
                    } catch (NoClassDefFoundError e3) {
                        l9.d().a(e3);
                        String str2 = "prepareAuctionCandidates - error while calling smash.getBiddingData - " + e3.getMessage();
                        IronLog.INTERNAL.error(str2);
                        xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str2}});
                    }
                }
            } else if (!xVar.p()) {
                list.add(xVar.c());
                sb.append(xVar.g() + xVar.c() + ",");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        i iVar;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("current state = " + this.j);
        if (this.i.k()) {
            iVar = z ? i.AUCTION : i.FIRST_AUCTION;
        } else {
            iVar = z ? i.RELOADING : i.LOADING;
        }
        if (!a(i.STARTED_LOADING, iVar)) {
            ironLog.error("wrong state - " + this.j);
            return;
        }
        this.D = new xa();
        this.s = "";
        this.t = null;
        this.n = 0;
        this.p = this.e.a(IronSource.AD_UNIT.BANNER);
        a(z ? IronSourceConstants.BN_RELOAD : 3001);
        if (this.i.k()) {
            u();
        } else {
            x();
            t();
        }
    }

    private boolean b(int i2) {
        return i2 == 3201 || i2 == 3110 || i2 == 3111 || i2 == 3116 || i2 == 3119 || i2 == 3112 || i2 == 3115 || i2 == 3501 || i2 == 3502 || i2 == 3506;
    }

    private void f(x xVar) {
        String strK;
        IronSourceBannerLayout ironSourceBannerLayout = this.l;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            return;
        }
        IronSourceBannerLayout ironSourceBannerLayoutB = null;
        if (xVar.p()) {
            strK = this.z.get(xVar.c()).k();
            xVar.c(strK);
        } else {
            strK = null;
        }
        JSONObject jSONObjectA = this.z.get(xVar.c()).a();
        try {
            ironSourceBannerLayoutB = this.l.b();
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.verbose("Failed to make copy of banner layout: " + e2.getMessage());
        }
        xVar.a(ironSourceBannerLayoutB, this.m, strK, jSONObjectA);
    }

    private boolean g() {
        IronSourceBannerLayout ironSourceBannerLayout = this.l;
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.o != null) {
            IronLog.INTERNAL.verbose("mActiveSmash = " + this.o.f());
            this.o.t();
            this.o = null;
        }
    }

    private List<j5> i() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (x xVar : this.q.values()) {
            if (!xVar.p() && !this.g.b(ContextProvider.getInstance().getApplicationContext(), this.m, IronSource.AD_UNIT.BANNER)) {
                copyOnWriteArrayList.add(new j5(xVar.c()));
            }
        }
        return copyOnWriteArrayList;
    }

    private ISBannerSize j() {
        IronSourceBannerLayout ironSourceBannerLayout = this.l;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.getSize() == null) {
            return null;
        }
        if (this.l.getSize().isSmart()) {
            return AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? ISBannerSize.e : ISBannerSize.BANNER;
        }
        return this.l.getSize();
    }

    private ISBannerSize k() {
        IronSourceBannerLayout ironSourceBannerLayout = this.l;
        if (ironSourceBannerLayout != null) {
            return ironSourceBannerLayout.getSize();
        }
        return null;
    }

    private String l() {
        e7 e7Var = this.m;
        return e7Var != null ? e7Var.getCom.ironsource.oo.d java.lang.String() : "";
    }

    private void m() {
        String str = this.r.isEmpty() ? "Empty waterfall" : "Mediation No fill";
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("errorReason = ".concat(str));
        g((x) null);
        i iVar = i.LOADING;
        i iVar2 = i.READY_TO_LOAD;
        if (a(iVar, iVar2)) {
            a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 606}, new Object[]{"reason", str}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.D))}});
            n.a().b(IronSource.AD_UNIT.BANNER, new IronSourceError(606, str));
        } else if (a(i.RELOADING, i.LOADED)) {
            a(IronSourceConstants.BN_CALLBACK_RELOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.D))}});
            n.a().b(IronSource.AD_UNIT.BANNER, new IronSourceError(606, str));
            this.k.a(TimeUnit.SECONDS.toMillis(this.i.f()));
        } else {
            a(iVar2);
            ironLog.error("wrong state = " + this.j);
        }
    }

    private void n() {
        String strL = l();
        cf.a aVar = this.h;
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        aVar.a(applicationContext, strL, ad_unit);
        if (this.g.b(ContextProvider.getInstance().getApplicationContext(), this.m, ad_unit)) {
            a(IronSourceConstants.BN_PLACEMENT_CAPPED);
        }
    }

    private boolean p() {
        i iVar = this.j;
        return iVar == i.RELOADING || iVar == i.AUCTION;
    }

    private boolean q() {
        boolean z;
        synchronized (this.C) {
            z = this.j == i.LOADED;
        }
        return z;
    }

    private boolean r() {
        boolean z;
        synchronized (this.C) {
            i iVar = this.j;
            z = iVar == i.FIRST_AUCTION || iVar == i.AUCTION;
        }
        return z;
    }

    private boolean s() {
        boolean z;
        synchronized (this.C) {
            i iVar = this.j;
            z = iVar == i.LOADING || iVar == i.RELOADING;
        }
        return z;
    }

    private void t() {
        try {
            for (int i2 = this.n; i2 < this.r.size(); i2++) {
                x xVar = this.r.get(i2);
                if (xVar.h()) {
                    IronLog.INTERNAL.verbose("loading smash - " + xVar.f());
                    this.n = i2 + 1;
                    f(xVar);
                    return;
                }
            }
            m();
        } catch (Exception e2) {
            l9.d().a(e2);
            a(IronSourceConstants.TROUBLESHOOTING_BN_INTERNAL_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, "loadNextSmash"}, new Object[]{"reason", Log.getStackTraceString(e2)}});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        IronLog.INTERNAL.verbose();
        AsyncTask.execute(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("");
        if (a(i.LOADED, i.STARTED_LOADING)) {
            b(true);
            return;
        }
        ironLog.error("wrong state = " + this.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.A.isEmpty()) {
            return;
        }
        this.y.a(this.A);
        this.A.clear();
    }

    private void x() {
        List<j5> listI = i();
        this.s = e();
        a(listI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        long jA = l.a(this.B, this.i.i());
        if (jA <= 0) {
            return false;
        }
        IronLog.INTERNAL.verbose("waiting before auction - timeToWaitBeforeAuction = " + jA);
        new Timer().schedule(new h(), jA);
        return true;
    }

    @Override // org.json.p4
    public void a(int i2, String str, int i3, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i2 + " - " + str + ")";
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(str3);
        IronSourceUtils.sendAutomationLog("BN: " + str3);
        if (!r()) {
            ironLog.warning("wrong state - mCurrentState = " + this.j);
            return;
        }
        this.u = str2;
        this.v = i3;
        this.t = null;
        x();
        a(IronSourceConstants.BN_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str}});
        a(this.j == i.FIRST_AUCTION ? i.LOADING : i.RELOADING);
        t();
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout) {
        IronLog.INTERNAL.verbose();
        l.a(ironSourceBannerLayout, new b(ironSourceBannerLayout));
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout, e7 e7Var) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        a(ad_unit);
        f();
        if (!a(i.READY_TO_LOAD, i.STARTED_LOADING)) {
            IronLog.API.error("can't load banner - loadBanner already called and still in progress");
        } else if (n.a().b(ad_unit)) {
            ironLog.verbose("can't load banner - already has pending invocation");
        } else {
            l.a(ironSourceBannerLayout, e7Var, new a(e7Var, ironSourceBannerLayout));
        }
    }

    @Override // org.json.ro
    public void a(IronSourceError ironSourceError, x xVar, boolean z) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("error = " + ironSourceError);
        if (xVar.x() == this.s) {
            if (s()) {
                this.A.put(xVar.c(), com.ironsource.mediationsdk.h.a.ISAuctionPerformanceFailedToLoad);
                t();
                return;
            } else {
                ironLog.warning("wrong state - mCurrentState = " + this.j);
                return;
            }
        }
        ironLog.error("invoked with auctionId: " + xVar.x() + " and the current id is " + this.s);
        xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 3}, new Object[]{"reason", "Wrong auction " + xVar.x() + " State - " + this.j}, new Object[]{IronSourceConstants.EVENTS_EXT1, xVar.c()}});
    }

    @Override // org.json.ro
    public void a(x xVar) {
        j5 j5Var;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(xVar.f());
        if (q()) {
            if (this.i.k() && this.i.b().p() && (j5Var = this.z.get(xVar.c())) != null) {
                a(xVar, j5Var);
            }
            a(IronSourceConstants.BN_CALLBACK_SHOW);
            return;
        }
        ironLog.warning("wrong state - mCurrentState = " + this.j);
        String strC = xVar.c();
        a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1}, new Object[]{"reason", "Wrong State - " + this.j}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}});
    }

    @Override // org.json.ro
    public void a(x xVar, View view, FrameLayout.LayoutParams layoutParams) {
        Object[][] objArr;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("smash = " + xVar.f());
        if (xVar.x() != this.s) {
            ironLog.error("invoked with auctionId: " + xVar.x() + " and the current id is " + this.s);
            xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 2}, new Object[]{"reason", "Wrong auction id " + xVar.x() + " State - " + this.j}, new Object[]{IronSourceConstants.EVENTS_EXT1, xVar.c()}});
            return;
        }
        if (!s()) {
            ironLog.warning("wrong state - mCurrentState = " + this.j);
            return;
        }
        x xVar2 = this.o;
        if (xVar2 != null) {
            xVar2.q();
        }
        g(xVar);
        this.o = xVar;
        b(xVar, view, layoutParams);
        this.A.put(xVar.c(), com.ironsource.mediationsdk.h.a.ISAuctionPerformanceShowedSuccessfully);
        if (this.i.k()) {
            j5 j5Var = this.z.get(xVar.c());
            if (j5Var != null) {
                a(j5Var.a(l()), j5Var.d());
                this.w.a(j5Var, xVar.g(), this.x);
                this.w.a(this.r, this.z, xVar.g(), this.x, j5Var);
                if (!this.i.b().p()) {
                    a(xVar, j5Var);
                }
            } else {
                String strC = xVar.c();
                ironLog.error("onLoadSuccess winner instance " + strC + " missing from waterfall. auctionId = " + this.s);
                a(IronSourceConstants.TROUBLESHOOTING_BN_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{"reason", "Loaded missing"}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}});
            }
        }
        if (this.j == i.LOADING) {
            if (g()) {
                q5.a().d(this.d);
                objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.D))}};
            } else {
                objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.D))}};
            }
            a(IronSourceConstants.BN_CALLBACK_LOAD_SUCCESS, objArr);
        } else {
            if (g()) {
                q5.a().d(this.d);
            }
            IronSourceUtils.sendAutomationLog("bannerReloadSucceeded");
            a(IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.D))}});
        }
        n();
        this.f.b(IronSource.AD_UNIT.BANNER);
        a(i.LOADED);
        this.k.a(TimeUnit.SECONDS.toMillis(this.i.f()));
    }

    @Override // org.json.p4
    public void a(List<j5> list, String str, j5 j5Var, JSONObject jSONObject, JSONObject jSONObject2, int i2, long j, int i3, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("auctionId = " + str);
        if (!r()) {
            ironLog.warning("wrong state - mCurrentState = " + this.j);
            return;
        }
        this.u = "";
        this.s = str;
        this.v = i2;
        this.x = j5Var;
        this.t = jSONObject;
        if (!TextUtils.isEmpty(str2)) {
            a(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i3)}, new Object[]{"reason", str2}});
        }
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        a(jSONObject2, ad_unit);
        if (!this.b.a(ad_unit)) {
            a(IronSourceConstants.BN_AUCTION_SUCCESS, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
            a(this.j == i.FIRST_AUCTION ? i.LOADING : i.RELOADING);
            a(IronSourceConstants.BN_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, a(list)}});
            t();
            return;
        }
        a(IronSourceConstants.BN_AD_UNIT_CAPPED, new Object[][]{new Object[]{"auctionId", str}});
        i iVar = this.j;
        a(i.READY_TO_LOAD);
        if (iVar == i.FIRST_AUCTION) {
            n.a().b(ad_unit, new IronSourceError(IronSourceError.ERROR_AD_FORMAT_CAPPED, "Ad unit is capped"));
        }
    }

    @Override // org.json.ro
    public void b(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (g()) {
            q5.a().b(this.d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_CLICK, objArr, xVar.n());
    }

    @Override // org.json.ro
    public void c(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (g()) {
            q5.a().c(this.d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_LEAVE_APP, objArr, xVar.n());
    }

    @Override // org.json.ro
    public void d(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (g()) {
            q5.a().f(this.d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_PRESENT_SCREEN, objArr, xVar.n());
    }

    @Override // org.json.ro
    public void e(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (g()) {
            q5.a().e(this.d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_DISMISS_SCREEN, objArr, xVar.n());
    }

    public void g(x xVar) {
        for (x xVar2 : this.r) {
            if (!xVar2.equals(xVar)) {
                xVar2.q();
            }
        }
    }

    public boolean o() {
        IronLog ironLog;
        String str;
        if (!this.l.isShown()) {
            ironLog = IronLog.INTERNAL;
            str = "banner or one of its parents are INVISIBLE or GONE";
        } else {
            if (this.l.hasWindowFocus()) {
                boolean globalVisibleRect = this.l.getGlobalVisibleRect(new Rect());
                IronLog.INTERNAL.verbose("visible = " + globalVisibleRect);
                return globalVisibleRect;
            }
            ironLog = IronLog.INTERNAL;
            str = "banner has no window focus";
        }
        ironLog.verbose(str);
        return false;
    }
}
