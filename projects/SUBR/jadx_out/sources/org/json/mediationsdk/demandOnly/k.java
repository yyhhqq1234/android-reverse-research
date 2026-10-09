package org.json.mediationsdk.demandOnly;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.bb;
import org.json.ha;
import org.json.l9;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.c;
import org.json.mediationsdk.e;
import org.json.mediationsdk.f;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceAES;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.nf;
import org.json.tp;

/* JADX INFO: loaded from: classes3.dex */
public class k implements i.c {
    private final ha a;
    private final ConcurrentHashMap<String, l> b;
    private final nf<ISDemandOnlyRewardedVideoListener> c;

    public k(List<NetworkSettings> list, tp tpVar, c cVar, nf<ISDemandOnlyRewardedVideoListener> nfVar, String str, String str2, ha haVar) {
        String sessionId = IronSourceUtils.getSessionId();
        boolean zD = tpVar.d();
        f fVar = new f(tpVar.k(), sessionId);
        this.b = new ConcurrentHashMap<>();
        this.a = haVar;
        this.c = nfVar;
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.isIronSource()) {
                AbstractAdapter abstractAdapterA = cVar.a(networkSettings, networkSettings.getRewardedVideoSettings(), true);
                if (abstractAdapterA != null) {
                    l lVar = new l(str, str2, networkSettings, this.c.a(networkSettings.getSubProviderId()), tpVar.i(), abstractAdapterA, new e(fVar));
                    lVar.a(zD);
                    this.b.put(networkSettings.getSubProviderId(), lVar);
                }
            } else {
                IronLog.INTERNAL.error("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    public ConcurrentHashMap<String, l> a() {
        return this.b;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.c
    public void a(h.d dVar) {
        String instanceId = dVar.getInstanceId();
        try {
            l lVar = this.b.get(instanceId);
            if (lVar == null) {
                this.a.a(1503, instanceId);
                IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
                IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
                this.c.a(instanceId).onRewardedVideoAdLoadFailed(instanceId, ironSourceErrorBuildNonExistentInstanceError);
                return;
            }
            if (dVar.getBidding()) {
                lVar.b(new o.a(IronSourceAES.decode(bb.b().c(), dVar.getAdMarkup())));
            } else {
                lVar.d();
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideo exception " + e.getMessage());
            IronLog.API.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
            this.c.a(instanceId).onRewardedVideoAdLoadFailed(instanceId, ironSourceErrorBuildLoadFailedError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.c
    public boolean a(String str) {
        l lVar = this.b.get(str);
        if (lVar != null) {
            return lVar.a();
        }
        this.a.a(1500, str);
        return false;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.c
    public void b(String str) {
        try {
            l lVar = this.b.get(str);
            if (lVar != null) {
                lVar.e();
                return;
            }
            this.a.a(1507, str);
            IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
            IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
            this.c.a(str).onRewardedVideoAdShowFailed(str, ironSourceErrorBuildNonExistentInstanceError);
        } catch (Exception e) {
            l9.d().a(e);
            IronSourceError ironSourceErrorBuildShowFailedError = ErrorBuilder.buildShowFailedError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT, "showRewardedVideo exception " + e.getMessage());
            IronLog.API.error(ironSourceErrorBuildShowFailedError.getErrorMessage());
            this.c.a(str).onRewardedVideoAdShowFailed(str, ironSourceErrorBuildShowFailedError);
        }
    }
}
