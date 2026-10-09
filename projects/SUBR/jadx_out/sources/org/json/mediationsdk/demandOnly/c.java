package org.json.mediationsdk.demandOnly;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.bb;
import org.json.ha;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.e;
import org.json.mediationsdk.f;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceAES;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.r6;

/* JADX INFO: loaded from: classes3.dex */
public class c implements i.a {
    private ConcurrentHashMap<String, d> a = new ConcurrentHashMap<>();
    private ha b;

    public c(List<NetworkSettings> list, r6 r6Var, String str, String str2, ha haVar) {
        String sessionId = IronSourceUtils.getSessionId();
        boolean zL = r6Var.l();
        this.b = haVar;
        e eVar = new e(new f(r6Var.d(), sessionId));
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.isIronSource()) {
                AbstractAdapter abstractAdapterA = org.json.mediationsdk.c.b().a(networkSettings, networkSettings.getBannerSettings(), true);
                if (abstractAdapterA != null) {
                    d dVar = new d(str, str2, networkSettings, r6Var.b(), abstractAdapterA, eVar);
                    dVar.a(zL);
                    this.a.put(dVar.l(), dVar);
                }
            } else {
                IronLog.INTERNAL.error("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.a
    public void a(ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, String str) {
        d dVar = this.a.get(str);
        if (dVar != null) {
            dVar.a(iSDemandOnlyBannerLayout);
            return;
        }
        this.b.a(3503, str);
        IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError("Banner");
        IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
        iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorBuildNonExistentInstanceError);
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.a
    public void a(ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, String str, String str2) {
        d dVar = this.a.get(str);
        if (dVar != null) {
            dVar.a(iSDemandOnlyBannerLayout, new o.a(IronSourceAES.decode(bb.b().c(), str2)));
            return;
        }
        this.b.a(3503, str);
        IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError("Banner");
        IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
        iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorBuildNonExistentInstanceError);
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.a
    public synchronized void a(String str) {
        d dVar = this.a.get(str);
        if (dVar != null) {
            dVar.r();
            return;
        }
        this.b.a(IronSourceConstants.BN_DO_INSTANCE_NOT_FOUND_IN_DESTROY, str);
        IronLog.API.error(ErrorBuilder.buildNonExistentInstanceError("Banner").getErrorMessage());
    }
}
