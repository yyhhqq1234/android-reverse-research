package org.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import android.util.Log;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;
import org.json.c5;
import org.json.cb;
import org.json.environment.ContextProvider;
import org.json.j5;
import org.json.jl;
import org.json.l9;
import org.json.li;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.d;
import org.json.mediationsdk.e;
import org.json.mediationsdk.i;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
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
public class g extends m implements n.a, InterstitialSmashListener, x4 {
    private xa n;
    private xa o;
    private ISDemandOnlyInterstitialListener p;
    private z4 q;
    private e r;
    private p s;
    private final zg t;
    private final zg.a u;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("load timed out state=" + g.this.k());
            g.this.a(new IronSourceError(1052, "load timed out"));
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("load timed out state=" + g.this.k());
            g.this.a(new IronSourceError(1052, "load timed out"));
        }
    }

    public g(String str, String str2, NetworkSettings networkSettings, ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener, long j, AbstractAdapter abstractAdapter, e eVar) {
        super(new z2(networkSettings, networkSettings.getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), abstractAdapter);
        this.s = new p.b();
        this.t = jl.P().k();
        this.u = jl.K().e();
        this.p = iSDemandOnlyInterstitialListener;
        this.f = j;
        this.r = eVar;
        this.a.initInterstitial(str, str2, this.c, this);
    }

    private void a(int i, Object[][] objArr) {
        Map<String, Object> mapJ = j();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mapJ.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error("Exception: " + Log.getStackTraceString(e));
            }
        }
        li.i().a(new ob(i, new JSONObject(mapJ)));
    }

    private void a(IronSourceError ironSourceError, long j) {
        if (ironSourceError.getErrorCode() == 1158) {
            a(2213, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}});
        } else {
            a(2200, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        }
    }

    private void a(List<String> list, String str) {
        a(list, h(), i(), this.j, str);
    }

    private void c(o oVar) {
        this.n = new xa();
        a(new a());
        if (!n()) {
            a(new IronSourceError(2303, "loadInterstitialWithAdm: must be called by bidder instance"));
            return;
        }
        try {
            d.a aVar = (d.a) oVar.a(new cb());
            j5 j5VarA = new org.json.mediationsdk.demandOnly.a.C0094a(aVar.h()).a(h());
            if (j5VarA == null) {
                IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm invalid enriched adm");
                a(2303, (Object[][]) null);
                a(ironSourceErrorBuildLoadFailedError);
                return;
            }
            String strK = j5VarA.k();
            if (strK == null) {
                IronLog.INTERNAL.error("serverData is null");
                a(new IronSourceError(e.a.ERROR_INSTANCE_LOAD_EMPTY_SERVER_DATA, "No available ad to load"));
                return;
            }
            b(strK);
            a(aVar.a());
            a(aVar.f());
            a(82002, (Object[][]) null);
            this.q.a(j5VarA.b());
            this.o = new xa();
            this.a.loadInterstitialForBidding(this.c, null, strK, this);
        } catch (Exception e) {
            l9.d().a(e);
            a(ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm: Exception= " + e.getMessage()));
        }
    }

    private void c(String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (a(m.a.LOAD_IN_PROGRESS)) {
            if (str == null) {
                ironLog.verbose("serverData is null");
                a(new IronSourceError(e.a.ERROR_INSTANCE_LOAD_EMPTY_SERVER_DATA, "No available ad to load"));
            } else {
                a(82002, (Object[][]) null);
                this.a.loadInterstitialForBidding(this.c, null, str, this);
            }
        }
    }

    private i q() {
        String str = i() + h();
        i iVar = new i(this.m);
        iVar.b(IronSourceUtils.isEncryptedResponse());
        iVar.a(true);
        iVar.c(true);
        iVar.d(str);
        iVar.c(l());
        iVar.a(this.t.a(this.m));
        c5 c5Var = new c5(h(), false);
        c5Var.a(this.s.getPlumbus());
        Map<String, Object> interstitialBiddingData = this.a.getInterstitialBiddingData(this.c, new JSONObject());
        if (interstitialBiddingData != null) {
            c5Var.b(interstitialBiddingData);
        }
        iVar.a(c5Var);
        return iVar;
    }

    private void r() {
        this.o = new xa();
        this.a.loadInterstitial(this.c, null, this);
    }

    private void s() {
        if (!this.r.a()) {
            IronLog.INTERNAL.verbose("can't load the interstitial the auction isn't enabled");
            a(new IronSourceError(1063, "Missing server configuration"));
            return;
        }
        a(82500, (Object[][]) null);
        i iVarQ = q();
        IronLog.INTERNAL.verbose("auction waterfallString = " + iVarQ.getWaterfallString());
        a(82510, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, iVarQ.getWaterfallString()}});
        this.r.a(ContextProvider.getInstance().getApplicationContext(), iVarQ, this);
    }

    private void t() {
        this.g = null;
        this.h = null;
        this.j = null;
        this.q = new z4();
    }

    private void u() {
        this.n = new xa();
        a(new b());
        if (n()) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitial must be called by non bidder instances");
            a(2303, (Object[][]) null);
            a(ironSourceErrorBuildLoadFailedError);
        } else if (o()) {
            s();
        } else {
            r();
        }
    }

    @Override // org.json.p4
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog.INTERNAL.verbose("error " + i + " - " + str);
        this.g = null;
        this.h = null;
        a(82300, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
        if (a(m.a.LOAD_IN_PROGRESS)) {
            a(new IronSourceError(e.a.ERROR_INSTANCE_LOAD_AUCTION_FAILED, "No available ad to load"));
        }
    }

    @Override // org.json.x4
    public void a(d.a aVar, int i, long j, int i2, String str) {
        String strK;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        this.g = aVar.a();
        this.h = aVar.f();
        this.s = aVar.a(l());
        org.json.mediationsdk.demandOnly.a.C0094a c0094a = new org.json.mediationsdk.demandOnly.a.C0094a(aVar.h());
        if (c0094a.isEmpty()) {
            strK = "";
        } else {
            j5 j5Var = c0094a.get(0);
            this.q.a(j5Var.b());
            this.q.c(j5Var.h());
            this.q.b(j5Var.g());
            strK = j5Var.k();
            b(strK);
        }
        if (!TextUtils.isEmpty(str)) {
            a(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str}});
        }
        a(82301, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
        a(82302, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c0094a.b()}});
        if (a(m.a.LOAD_IN_PROGRESS)) {
            if (!c0094a.isEmpty()) {
                c(strK);
                return;
            }
            IronSourceError ironSourceError = new IronSourceError(1158, "There is no available ad to load");
            ironLog.error("interstitial - empty waterfall");
            a(ironSourceError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public void a(o oVar) {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            a(new IronSourceError(1050, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        t();
        a(2002, (Object[][]) null);
        c(oVar);
    }

    void a(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", error = " + ironSourceError.getErrorMessage());
        p();
        if (a(m.a.LOAD_IN_PROGRESS, m.a.NOT_LOADED)) {
            a(ironSourceError, xa.a(this.n));
            a(this.q.b(), IronSourceUtils.getCurrentMethodName());
            this.p.onInterstitialAdLoadFailed(l(), ironSourceError);
        }
    }

    @Override // org.json.p4
    public void a(List<j5> list, String str, j5 j5Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.error("Deprecated: Please use onAuctionSuccess(AuctionDataUtils.AuctionData auctionData, int auctionTrial, long elapsedTime, int troubleshootingErrorCode, String troubleshootingErrorMessage)");
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public boolean a() {
        boolean zIsInterstitialReady = false;
        if (!a(m.a.LOADED)) {
            a(2212, (Object[][]) null);
            return false;
        }
        try {
            zIsInterstitialReady = this.a.isInterstitialReady(this.c);
            a(zIsInterstitialReady ? 2211 : 2212, (Object[][]) null);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error("exception=" + e.getMessage());
        }
        return zIsInterstitialReady;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public void b() {
        IronSourceError ironSourceError;
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", state=" + k());
        a(2201, (Object[][]) null);
        m.a aVar = m.a.LOADED;
        m.a aVar2 = m.a.SHOW_IN_PROGRESS;
        if (a(aVar, aVar2)) {
            this.a.showInterstitial(this.c, this);
            return;
        }
        if (a(aVar2)) {
            ironSourceError = new IronSourceError(1064, "showInterstitial error: can't show ad while an ad is already showing");
        } else {
            ironSourceError = a(m.a.LOAD_IN_PROGRESS) ? new IronSourceError(1065, "showInterstitial error: can't show ad while an ad is loading") : new IronSourceError(1066, "showInterstitial error: no available ads to show");
        }
        onInterstitialAdShowFailed(ironSourceError);
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.a
    public void c() {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            this.p.onInterstitialAdLoadFailed(l(), new IronSourceError(1050, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        t();
        a(2002, (Object[][]) null);
        u();
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(2006, new Object[0][]);
        this.p.onInterstitialAdClicked(l());
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClosed() {
        b(m.a.NOT_LOADED);
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(2204, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(this.t.a(this.m))}});
        this.u.b(this.m);
        this.p.onInterstitialAdClosed(l());
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.getErrorMessage() + " instance name= " + h() + " state=" + k());
        a(e.c.TROUBLESHOOTING_INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.o))}});
        a(ironSourceError);
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(2005, new Object[0][]);
        a(this.q.a(), IronSourceUtils.getCurrentMethodName());
        this.p.onInterstitialAdOpened(l());
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdReady() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h() + " state=" + k());
        p();
        a(e.c.TROUBLESHOOTING_INSTANCE_LOAD_SUCCESS, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.o))}});
        if (a(m.a.LOAD_IN_PROGRESS, m.a.LOADED)) {
            a(2003, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.n))}});
            a(this.q.c(), IronSourceUtils.getCurrentMethodName());
            this.p.onInterstitialAdReady(l());
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.toString() + " instance name= " + h() + " state=" + k());
        b(m.a.NOT_LOADED);
        a(2203, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        this.p.onInterstitialAdShowFailed(l(), ironSourceError);
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowSucceeded() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdVisible() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(2210, new Object[0][]);
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitSuccess() {
    }
}
