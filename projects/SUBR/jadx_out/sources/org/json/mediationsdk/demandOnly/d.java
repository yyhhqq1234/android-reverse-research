package org.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;
import org.json.cb;
import org.json.environment.ContextProvider;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.j5;
import org.json.jl;
import org.json.l9;
import org.json.li;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.e;
import org.json.mediationsdk.i;
import org.json.mediationsdk.l;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.ob;
import org.json.x4;
import org.json.xa;
import org.json.z2;
import org.json.z4;
import org.json.zg;

/* JADX INFO: loaded from: classes3.dex */
public class d extends m implements BannerSmashListener, x4 {
    private xa n;
    private xa o;
    private String p;
    private String q;
    private z4 r;
    private e s;
    private ISDemandOnlyBannerLayout t;
    private final zg u;
    private final zg.a v;

    class a implements Runnable {
        final /* synthetic */ i a;

        a(i iVar) {
            this.a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.a(83500, (Object[][]) null);
            IronLog.INTERNAL.verbose("auction waterfallString = " + this.a.getWaterfallString());
            d.this.a(83510, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, this.a.getWaterfallString()}});
            d.this.s.a(ContextProvider.getInstance().getApplicationContext(), this.a, d.this);
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("load timed out state=" + d.this.k());
            d.this.a(new IronSourceError(608, "load timed out"));
        }
    }

    public d(String str, String str2, NetworkSettings networkSettings, long j, AbstractAdapter abstractAdapter, e eVar) {
        super(new z2(networkSettings, networkSettings.getBannerSettings(), IronSource.AD_UNIT.BANNER), abstractAdapter);
        this.u = jl.P().k();
        this.v = jl.K().e();
        this.f = j;
        this.p = str;
        this.q = str2;
        this.r = new z4();
        this.a.initBannerForBidding(str, str2, this.c, this);
        this.s = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object[][] objArr) {
        Map<String, Object> mapJ = j();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    if (objArr2[1] != null) {
                        mapJ.put(objArr2[0].toString(), objArr2[1]);
                    }
                }
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
        li.i().a(new ob(i, new JSONObject(mapJ)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("error = " + ironSourceError.getErrorMessage() + " smash - " + s());
        if (a(m.a.LOAD_IN_PROGRESS, m.a.NOT_LOADED)) {
            p();
            a(ironSourceError, xa.a(this.n));
            a(this.r.b(), IronSourceUtils.getCurrentMethodName());
            if (t()) {
                return;
            }
            this.t.getListener().a(l(), ironSourceError);
        }
    }

    private void a(IronSourceError ironSourceError, long j) {
        if (ironSourceError.getErrorCode() == 606) {
            a(3306, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
        } else {
            a(3300, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
        }
    }

    private void a(List<String> list, String str) {
        a(list, h(), i(), this.j, str);
    }

    private void c(String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (a(m.a.LOAD_IN_PROGRESS)) {
            if (str == null) {
                ironLog.verbose("serverData is null");
                a(new IronSourceError(618, "No available ad to load"));
            } else {
                a(83302, (Object[][]) null);
                this.o = new xa();
                this.a.initBannerForBidding(this.p, this.q, this.c, this);
                this.a.loadBannerForDemandOnlyForBidding(this.c, str, this.t, this);
            }
        }
    }

    private boolean t() {
        ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout = this.t;
        return iSDemandOnlyBannerLayout == null || iSDemandOnlyBannerLayout.isDestroyed();
    }

    private void u() {
        IronLog.INTERNAL.verbose();
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(q()));
    }

    private void v() {
        this.g = null;
        this.h = null;
        this.r = new z4();
    }

    private void w() {
        IronLog.INTERNAL.verbose();
        a(new b());
    }

    @Override // org.json.p4
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog.INTERNAL.verbose("Auction failed. error " + i + " - " + str);
        this.g = null;
        this.h = null;
        a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
        if (a(m.a.LOAD_IN_PROGRESS)) {
            a(new IronSourceError(621, "No available ad to load"));
        }
    }

    @Override // org.json.x4
    public void a(com.ironsource.mediationsdk.d.a aVar, int i, long j, int i2, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        this.g = aVar.a();
        this.h = aVar.f();
        org.json.mediationsdk.demandOnly.a.C0094a c0094a = new org.json.mediationsdk.demandOnly.a.C0094a(aVar.h());
        if (!TextUtils.isEmpty(str)) {
            a(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str}});
        }
        a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_AUCTION_SUCCESS, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
        a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c0094a.b()}});
        if (a(m.a.LOAD_IN_PROGRESS)) {
            if (c0094a.isEmpty()) {
                IronSourceError ironSourceError = new IronSourceError(3306, "There is no available ad to load");
                ironLog.error("loadBanner - empty waterfall");
                a(ironSourceError);
                return;
            }
            j5 j5Var = c0094a.get(0);
            this.r.a(j5Var.b());
            this.r.c(j5Var.h());
            this.r.b(j5Var.g());
            String strK = j5Var.k();
            b(strK);
            c(strK);
        }
    }

    public void a(ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("state=" + k());
        if (iSDemandOnlyBannerLayout == null) {
            a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is null | state: " + k()}});
            return;
        }
        m.a[] aVarArr = {m.a.NOT_LOADED, m.a.LOADED};
        m.a aVar = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(aVarArr, aVar);
        if (aVarA == aVar || aVarA == m.a.SHOW_IN_PROGRESS) {
            if (iSDemandOnlyBannerLayout.isDestroyed()) {
                a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is destroyed | state: " + k()}});
                return;
            } else {
                String str = "banner layout in blocking state | state: " + k();
                iSDemandOnlyBannerLayout.getListener().a(l(), new IronSourceError(619, str));
                a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", str}});
                return;
            }
        }
        v();
        a(3002, (Object[][]) null);
        if (!o()) {
            ironLog.verbose("can't load banner when isOneFlow = false");
            a(new IronSourceError(1063, "Missing configuration settings"));
            return;
        }
        this.t = iSDemandOnlyBannerLayout;
        this.n = new xa();
        w();
        if (this.s.a()) {
            u();
        } else {
            ironLog.verbose("can't load the banner the auction isn't enabled");
            a(new IronSourceError(1063, "Missing server configuration"));
        }
    }

    public void a(ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, o oVar) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("state=" + k());
        if (iSDemandOnlyBannerLayout == null) {
            a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is null | state: " + k()}});
            return;
        }
        m.a[] aVarArr = {m.a.NOT_LOADED, m.a.LOADED};
        m.a aVar = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(aVarArr, aVar);
        if (aVarA == aVar || aVarA == m.a.SHOW_IN_PROGRESS) {
            if (iSDemandOnlyBannerLayout.isDestroyed()) {
                a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", "bannerLayout is destroyed | state: " + k()}});
                return;
            } else {
                String str = "banner layout in blocking state | state: " + k();
                iSDemandOnlyBannerLayout.getListener().a(l(), new IronSourceError(619, str));
                a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_UNABLE_TO_START_LOADING, new Object[][]{new Object[]{"reason", str}});
                return;
            }
        }
        v();
        a(3002, (Object[][]) null);
        if (iSDemandOnlyBannerLayout.isDestroyed()) {
            a(new IronSourceError(610, "bannerLayout is destroyed"));
            return;
        }
        this.t = iSDemandOnlyBannerLayout;
        if (!n()) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadBannerForBidder in IAB flow must be called by bidder instances");
            a(3300, (Object[][]) null);
            a(ironSourceErrorBuildLoadFailedError);
            return;
        }
        try {
            com.ironsource.mediationsdk.d.a aVar2 = (com.ironsource.mediationsdk.d.a) oVar.a(new cb());
            j5 j5VarA = new org.json.mediationsdk.demandOnly.a.C0094a(aVar2.h()).a(h());
            if (j5VarA == null) {
                IronSourceError ironSourceErrorBuildLoadFailedError2 = ErrorBuilder.buildLoadFailedError("loadBannerForBidder invalid enriched ADM");
                a(3300, (Object[][]) null);
                a(ironSourceErrorBuildLoadFailedError2);
                return;
            }
            String strK = j5VarA.k();
            if (strK == null) {
                ironLog.error("serverData is null");
                a(new IronSourceError(618, "No available ad to load"));
                return;
            }
            b(strK);
            a(aVar2.a());
            a(aVar2.f());
            a(83302, (Object[][]) null);
            this.r.a(j5VarA.b());
            this.n = new xa();
            w();
            this.a.initBannerForBidding(this.p, this.q, this.c, this);
            this.a.loadBannerForDemandOnlyForBidding(this.c, strK, iSDemandOnlyBannerLayout, this);
        } catch (Exception e) {
            l9.d().a(e);
            a(ErrorBuilder.buildLoadFailedError("loadBannerForBidder: Exception= " + e.getMessage()));
        }
    }

    @Override // org.json.p4
    public void a(List<j5> list, String str, j5 j5Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.error("onAuctionSuccess - Deprecated: Please use onAuctionSuccess(AuctionDataUtils.AuctionData auctionData, int auctionTrial, long elapsedTime, int troubleshootingErrorCode, String troubleshootingErrorMessage)");
    }

    @Override // org.json.mediationsdk.demandOnly.m
    public Map<String, Object> j() {
        HashMap map = new HashMap();
        try {
            if (t()) {
                map.put("reason", "banner is destroyed");
            } else {
                l.a(map, this.t.getSize());
            }
            AbstractAdapter abstractAdapter = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            map.put("spId", this.b.i());
            map.put(IronSourceConstants.EVENTS_PROVIDER, this.b.a());
            map.put(IronSourceConstants.EVENTS_DEMAND_ONLY, 1);
            if (o()) {
                map.put("isOneFlow", 1);
            }
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
            map.put("instanceType", Integer.valueOf(this.b.d()));
            if (!TextUtils.isEmpty(this.g)) {
                map.put("auctionId", this.g);
            }
            JSONObject jSONObject = this.h;
            if (jSONObject != null && jSONObject.length() > 0) {
                map.put("genericParams", this.h);
            }
            if (!TextUtils.isEmpty(this.j)) {
                map.put("dynamicDemandSource", this.j);
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error("Instance: " + h() + " " + e.getMessage());
        }
        return map;
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdClicked() {
        IronLog.INTERNAL.verbose("smash - " + s());
        a(3008, (Object[][]) null);
        if (t()) {
            return;
        }
        this.t.getListener().a(l());
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLeftApplication() {
        IronLog.INTERNAL.verbose("smash - " + s());
        a(3304, (Object[][]) null);
        if (t()) {
            return;
        }
        this.t.getListener().b(l());
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("smash - " + s());
        a(83300, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.o))}});
        a(ironSourceError);
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose("smash = " + s());
        zg zgVar = this.u;
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        int iA = zgVar.a(ad_unit);
        a(com.ironsource.mediationsdk.demandOnly.b.c.TROUBLESHOOTING_INSTANCE_LOAD_SUCCESS, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(iA)}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.o))}});
        if (a(m.a.LOAD_IN_PROGRESS, m.a.LOADED)) {
            p();
            if (!t()) {
                this.t.a(view, layoutParams);
            }
            a(3005, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(iA)}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.n))}});
            this.v.b(ad_unit);
            a(this.r.c(), IronSourceUtils.getCurrentMethodName());
            if (t()) {
                return;
            }
            this.t.getListener().c(l());
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenDismissed() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenPresented() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdShown() {
        if (a(m.a.LOADED, m.a.SHOW_IN_PROGRESS)) {
            IronLog.INTERNAL.verbose("smash - " + s());
            a(3009, (Object[][]) null);
            a(this.r.a(), IronSourceUtils.getCurrentMethodName());
            if (t()) {
                return;
            }
            this.t.getListener().d(l());
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("smash - " + s() + " " + ironSourceError.toString());
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitSuccess() {
        IronLog.INTERNAL.verbose("smash - " + s());
    }

    i q() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(h());
        String str = "" + i() + h();
        i iVar = new i(IronSource.AD_UNIT.BANNER);
        iVar.a(arrayList);
        iVar.d(str);
        iVar.c(l());
        iVar.b(IronSourceUtils.isEncryptedResponse());
        iVar.a(true);
        iVar.c(true);
        iVar.a(this.t.getSize());
        return iVar;
    }

    public void r() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        a(new m.a[]{m.a.LOADED, m.a.LOAD_IN_PROGRESS, m.a.SHOW_IN_PROGRESS}, m.a.NOT_LOADED);
        if (t()) {
            ironLog.error("Banner is null or already destroyed and can't be used anymore");
            return;
        }
        p();
        ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout = this.t;
        if (iSDemandOnlyBannerLayout != null) {
            iSDemandOnlyBannerLayout.a();
        }
        this.t = null;
        AbstractAdapter abstractAdapter = this.a;
        if (abstractAdapter == null) {
            ironLog.error("can't destroy adapter. mAdapter == null");
        } else {
            abstractAdapter.destroyBanner(this.c);
        }
        a(3305, (Object[][]) null);
        ironLog.verbose("banner layout was destroyed. bannerId: " + l());
    }

    public String s() {
        return this.b.h().isMultipleInstances() ? this.b.h().getProviderTypeForReflection() : this.b.h().getProviderName();
    }
}
