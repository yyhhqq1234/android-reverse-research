package org.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.bb;
import org.json.ha;
import org.json.ji;
import org.json.l9;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.c;
import org.json.mediationsdk.e;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceAES;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.nf;

/* JADX INFO: loaded from: classes3.dex */
public class f implements i.b {
    private final ha a;
    private final ConcurrentHashMap<String, g> b;
    private final nf<ISDemandOnlyInterstitialListener> c;

    public f(List<NetworkSettings> list, ji jiVar, c cVar, nf<ISDemandOnlyInterstitialListener> nfVar, String str, String str2, ha haVar) {
        String sessionId = IronSourceUtils.getSessionId();
        boolean zK = jiVar.k();
        org.json.mediationsdk.f fVar = new org.json.mediationsdk.f(jiVar.g(), sessionId);
        this.b = new ConcurrentHashMap<>();
        this.a = haVar;
        this.c = nfVar;
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.isIronSource()) {
                AbstractAdapter abstractAdapterA = cVar.a(networkSettings, networkSettings.getInterstitialSettings(), true);
                if (abstractAdapterA != null) {
                    g gVar = new g(str, str2, networkSettings, this.c.a(networkSettings.getSubProviderId()), jiVar.e(), abstractAdapterA, new e(fVar));
                    gVar.a(zK);
                    this.b.put(networkSettings.getSubProviderId(), gVar);
                }
            } else {
                IronLog.INTERNAL.error("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    public ConcurrentHashMap<String, g> a() {
        return this.b;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.b
    public void a(h.d dVar) {
        String instanceId = dVar.getInstanceId();
        String adMarkup = dVar.getAdMarkup();
        try {
            g gVar = this.b.get(instanceId);
            if (gVar == null) {
                this.a.a(2503, instanceId);
                IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError("Interstitial");
                IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
                this.c.a(instanceId).onInterstitialAdLoadFailed(instanceId, ironSourceErrorBuildNonExistentInstanceError);
                return;
            }
            if (TextUtils.isEmpty(adMarkup)) {
                gVar.c();
            } else {
                gVar.a(new o.a(IronSourceAES.decode(bb.b().c(), adMarkup)));
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitial exception " + e.getMessage());
            IronLog.API.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
            this.c.a(instanceId).onInterstitialAdLoadFailed(instanceId, ironSourceErrorBuildLoadFailedError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.b
    public void a(String str) {
        try {
            g gVar = this.b.get(str);
            if (gVar != null) {
                gVar.b();
                return;
            }
            this.a.a(2507, str);
            IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError("Interstitial");
            IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
            this.c.a(str).onInterstitialAdShowFailed(str, ironSourceErrorBuildNonExistentInstanceError);
        } catch (Exception e) {
            l9.d().a(e);
            IronSourceError ironSourceErrorBuildShowFailedError = ErrorBuilder.buildShowFailedError("Interstitial", "showInterstitial exception " + e.getMessage());
            IronLog.API.error(ironSourceErrorBuildShowFailedError.getErrorMessage());
            this.c.a(str).onInterstitialAdShowFailed(str, ironSourceErrorBuildShowFailedError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.b
    public boolean b(String str) {
        g gVar = this.b.get(str);
        if (gVar != null) {
            return gVar.a();
        }
        this.a.a(e.b.INSTANCE_NOT_FOUND_IN_AVAILABILITY_CHECK, str);
        return false;
    }
}
