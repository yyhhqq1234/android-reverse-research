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
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.d;
import org.json.mediationsdk.e;
import org.json.mediationsdk.i;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.p;
import org.json.mediationsdk.sdk.RewardedVideoSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.ob;
import org.json.vp;
import org.json.x4;
import org.json.xa;
import org.json.z2;
import org.json.z4;
import org.json.zg;

/* JADX INFO: loaded from: classes3.dex */
public class l extends m implements n.b, RewardedVideoSmashListener, x4 {
    private xa n;
    private xa o;
    private ISDemandOnlyRewardedVideoListener p;
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
            IronLog.INTERNAL.verbose("load timed out state=" + l.this.k());
            l.this.a(new IronSourceError(1055, "load timed out"));
        }
    }

    l(String str, String str2, NetworkSettings networkSettings, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener, long j, AbstractAdapter abstractAdapter, e eVar) {
        super(new z2(networkSettings, networkSettings.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), abstractAdapter);
        this.s = new p.b();
        this.t = jl.P().k();
        this.u = jl.K().e();
        this.p = iSDemandOnlyRewardedVideoListener;
        this.f = j;
        this.r = eVar;
        this.a.initRewardedVideoForDemandOnly(str, str2, this.c, this);
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
        vp.i().a(new ob(i, new JSONObject(mapJ)));
    }

    private void a(IronSourceError ironSourceError, long j) {
        if (ironSourceError.getErrorCode() == 1058) {
            a(1213, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}});
        } else {
            a(1200, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        }
    }

    private void a(List<String> list, String str) {
        a(list, h(), i(), this.j, str);
    }

    private void c(o oVar) {
        this.n = new xa();
        a(s());
        if (!n()) {
            a(new IronSourceError(j.a.LOAD_ERROR, "loadRewardedVideoWithAdm: must be called by bidder instance"));
            return;
        }
        try {
            d.a aVar = (d.a) oVar.a(new cb());
            j5 j5VarA = new org.json.mediationsdk.demandOnly.a.C0094a(aVar.h()).a(h());
            if (j5VarA == null) {
                IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm invalid enriched adm");
                a(j.a.LOAD_ERROR, (Object[][]) null);
                a(ironSourceErrorBuildLoadFailedError);
                return;
            }
            String strK = j5VarA.k();
            if (strK == null) {
                IronLog.INTERNAL.error("serverData is null");
                a(new IronSourceError(1062, "No available ad to load"));
                return;
            }
            b(strK);
            a(aVar.a());
            a(aVar.f());
            a(81002, (Object[][]) null);
            this.q.a(j5VarA.b());
            this.o = new xa();
            this.a.loadRewardedVideoForBidding(this.c, null, strK, this);
        } catch (Exception e) {
            l9.d().a(e);
            a(ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm: Exception= " + e.getMessage()));
        }
    }

    private void c(String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (a(m.a.LOAD_IN_PROGRESS)) {
            if (str == null) {
                ironLog.verbose("serverData is null");
                a(new IronSourceError(1062, "No available ad to load"));
            } else {
                a(81002, (Object[][]) null);
                this.a.loadRewardedVideoForBidding(this.c, null, str, this);
            }
        }
    }

    private IronSourceError q() {
        if (a(m.a.SHOW_IN_PROGRESS)) {
            return new IronSourceError(1067, "showRewardedVideo error: can't show ad while an ad is already showing");
        }
        return a(m.a.LOAD_IN_PROGRESS) ? new IronSourceError(1068, "showRewardedVideo error: can't show ad while an ad is loading") : new IronSourceError(1069, "showRewardedVideo error: no available ads to show");
    }

    private i r() {
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
        Map<String, Object> rewardedVideoBiddingData = this.a.getRewardedVideoBiddingData(this.c, new JSONObject());
        if (rewardedVideoBiddingData != null) {
            c5Var.b(rewardedVideoBiddingData);
        }
        iVar.a(c5Var);
        return iVar;
    }

    private TimerTask s() {
        return new a();
    }

    private void t() {
        this.o = new xa();
        this.a.loadRewardedVideo(this.c, null, this);
    }

    private void u() {
        if (!this.r.a()) {
            IronLog.INTERNAL.verbose("can't load the rewarded video the auction isn't enabled");
            a(new IronSourceError(1063, "Missing server configuration"));
            return;
        }
        a(81500, (Object[][]) null);
        i iVarR = r();
        IronLog.INTERNAL.verbose("auction waterfallString = " + iVarR.getWaterfallString());
        a(81510, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, iVarR.getWaterfallString()}});
        this.r.a(ContextProvider.getInstance().getApplicationContext(), iVarR, this);
    }

    private void v() {
        this.g = null;
        this.h = null;
        this.j = null;
        this.q = new z4();
    }

    private void w() {
        this.n = new xa();
        a(s());
        if (n()) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideo must be called by non bidder instances");
            a(j.a.LOAD_ERROR, (Object[][]) null);
            a(ironSourceErrorBuildLoadFailedError);
        } else if (o()) {
            u();
        } else {
            t();
        }
    }

    @Override // org.json.p4
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog.INTERNAL.verbose("Auction failed. error " + i + " - " + str);
        this.g = null;
        this.h = null;
        a(81300, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
        if (a(m.a.LOAD_IN_PROGRESS)) {
            a(new IronSourceError(j.a.INSTANCE_LOAD_AUCTION_FAILED, "No available ad to load"));
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
        a(81301, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(j)}});
        a(81302, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c0094a.b()}});
        if (a(m.a.LOAD_IN_PROGRESS)) {
            if (!c0094a.isEmpty()) {
                c(strK);
                return;
            }
            IronSourceError ironSourceError = new IronSourceError(1058, "There is no available ad to load");
            ironLog.error("rewardedVideo - empty waterfall");
            a(ironSourceError);
        }
    }

    void a(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", error = " + ironSourceError.getErrorMessage());
        p();
        if (a(m.a.LOAD_IN_PROGRESS, m.a.NOT_LOADED)) {
            a(ironSourceError, xa.a(this.n));
            a(this.q.b(), IronSourceUtils.getCurrentMethodName());
            this.p.onRewardedVideoAdLoadFailed(l(), ironSourceError);
        }
    }

    @Override // org.json.p4
    public void a(List<j5> list, String str, j5 j5Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.error("Deprecated: Please use onAuctionSuccess(AuctionDataUtils.AuctionData auctionData, int auctionTrial, long elapsedTime, int troubleshootingErrorCode, String troubleshootingErrorMessage)");
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public boolean a() {
        boolean zIsRewardedVideoAvailable = false;
        if (!a(m.a.LOADED)) {
            a(1211, (Object[][]) null);
            return false;
        }
        try {
            zIsRewardedVideoAvailable = this.a.isRewardedVideoAvailable(this.c);
            a(zIsRewardedVideoAvailable ? 1210 : 1211, (Object[][]) null);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error("exception=" + e.getMessage());
        }
        return zIsRewardedVideoAvailable;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public void b(o oVar) {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            a(new IronSourceError(1053, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        v();
        a(1001, (Object[][]) null);
        c(oVar);
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public void d() {
        IronLog.INTERNAL.verbose("state=" + k());
        m.a aVar = m.a.NOT_LOADED;
        m.a aVar2 = m.a.LOADED;
        m.a aVar3 = m.a.LOAD_IN_PROGRESS;
        m.a aVarA = a(new m.a[]{aVar, aVar2}, aVar3);
        if (aVarA != aVar && aVarA != aVar2) {
            this.p.onRewardedVideoAdLoadFailed(l(), new IronSourceError(1053, aVarA == aVar3 ? "load already in progress" : "cannot load because show is in progress"));
            return;
        }
        v();
        a(1001, (Object[][]) null);
        w();
    }

    @Override // com.ironsource.mediationsdk.demandOnly.n.b
    public void e() {
        IronLog.INTERNAL.verbose("instanceName = " + h() + ", state=" + k());
        a(1201, (Object[][]) null);
        if (a(m.a.LOADED, m.a.SHOW_IN_PROGRESS)) {
            this.a.showRewardedVideo(this.c, this);
        } else {
            onRewardedVideoAdShowFailed(q());
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(1006, new Object[0][]);
        this.p.onRewardedVideoAdClicked(l());
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClosed() {
        b(m.a.NOT_LOADED);
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(1203, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(this.t.a(this.m))}});
        this.u.b(this.m);
        this.p.onRewardedVideoAdClosed(l());
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdEnded() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(1005, new Object[0][]);
        a(this.q.a(), IronSourceUtils.getCurrentMethodName());
        this.p.onRewardedVideoAdOpened(l());
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdRewarded() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        Map<String, Object> mapJ = j();
        if (!TextUtils.isEmpty(p.m().l())) {
            mapJ.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, p.m().l());
        }
        if (p.m().s() != null) {
            for (String str : p.m().s().keySet()) {
                mapJ.put("custom_" + str, p.m().s().get(str));
            }
        }
        Placement placementA = p.m().h().c().getRewardedVideoConfigurations().a();
        if (placementA != null) {
            mapJ.put("placement", placementA.getCom.ironsource.oo.d java.lang.String());
            mapJ.put(IronSourceConstants.EVENTS_REWARD_NAME, placementA.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String());
            mapJ.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(placementA.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_AMOUNT java.lang.String()));
        } else {
            IronLog.INTERNAL.error("defaultPlacement is null");
        }
        ob obVar = new ob(1010, new JSONObject(mapJ));
        obVar.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(obVar.d(), h()));
        vp.i().a(obVar);
        this.p.onRewardedVideoAdRewarded(l());
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.toString() + " instance name= " + h() + " state=" + k());
        b(m.a.NOT_LOADED);
        a(1202, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
        this.p.onRewardedVideoAdShowFailed(l(), ironSourceError);
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdStarted() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdVisible() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h());
        a(1206, new Object[0][]);
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitSuccess() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose("error=" + ironSourceError.getErrorMessage() + "instance name= " + h() + " state=" + k());
        a(j.c.INSTANCE_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.o))}});
        a(ironSourceError);
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose("instance name= " + h() + " state=" + k());
        p();
        a(j.c.INSTANCE_LOAD_SUCCESS, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.o))}});
        if (a(m.a.LOAD_IN_PROGRESS, m.a.LOADED)) {
            a(1002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_DURATION, Long.valueOf(xa.a(this.n))}});
            a(this.q.c(), IronSourceUtils.getCurrentMethodName());
            this.p.onRewardedVideoAdLoadSuccess(l());
        }
    }
}
