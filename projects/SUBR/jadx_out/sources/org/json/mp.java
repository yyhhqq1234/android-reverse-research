package org.json;

import com.unity3d.ironsourceads.rewarded.RewardedAdLoaderListener;
import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/ironsource/mp;", "Lcom/ironsource/bl;", "Lcom/ironsource/yk;", "a", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;", "adRequest", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;", "b", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;", "publisherListener", "Lcom/ironsource/b3;", "c", "Lcom/ironsource/b3;", "adapterConfigProvider", "Lcom/ironsource/m3;", "d", "Lcom/ironsource/m3;", "analyticsFactory", "<init>", "(Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;Lcom/ironsource/b3;Lcom/ironsource/m3;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class mp implements bl {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final RewardedAdRequest adRequest;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final RewardedAdLoaderListener publisherListener;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final b3 adapterConfigProvider;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final m3 analyticsFactory;

    public mp(RewardedAdRequest adRequest, RewardedAdLoaderListener publisherListener, b3 adapterConfigProvider, m3 analyticsFactory) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        Intrinsics.checkNotNullParameter(adapterConfigProvider, "adapterConfigProvider");
        Intrinsics.checkNotNullParameter(analyticsFactory, "analyticsFactory");
        this.adRequest = adRequest;
        this.publisherListener = publisherListener;
        this.adapterConfigProvider = adapterConfigProvider;
        this.analyticsFactory = analyticsFactory;
    }

    public /* synthetic */ mp(RewardedAdRequest rewardedAdRequest, RewardedAdLoaderListener rewardedAdLoaderListener, b3 b3Var, m3 m3Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(rewardedAdRequest, rewardedAdLoaderListener, b3Var, (i & 8) != 0 ? new l3(IronSource.AD_UNIT.REWARDED_VIDEO) : m3Var);
    }

    @Override // org.json.bl
    public yk a() throws Exception {
        IronSourceError ironSourceErrorD;
        String instanceId = this.adRequest.getInstanceId();
        String sDKVersion = SDKUtils.getSDKVersion();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
        Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion()");
        n3 n3VarA = this.analyticsFactory.a(new h3(sDKVersion, instanceId, ad_unit, false, false, false, 56, null));
        try {
            zk zkVarA = new al(this.adRequest.getAdm(), this.adRequest.getProviderName(), this.adapterConfigProvider, hm.INSTANCE.a().getInitialized().get()).a();
            new kp(zkVarA).a();
            tm tmVar = new tm();
            h5 h5Var = new h5(this.adRequest.getAdm(), this.adRequest.getProviderName());
            RewardedAdRequest rewardedAdRequest = this.adRequest;
            Intrinsics.checkNotNull(zkVarA);
            Cif cif = Cif.a;
            return new jp(rewardedAdRequest, zkVarA, new lp(cif, this.publisherListener), h5Var, tmVar, n3VarA, new ep(n3VarA, cif.c()), null, null, 384, null);
        } catch (Exception e) {
            l9.d().a(e);
            if (e instanceof jq) {
                ironSourceErrorD = ((jq) e).getError();
            } else {
                lb lbVar = lb.a;
                String message = e.getMessage();
                if (message == null) {
                    message = "Unknown error";
                }
                ironSourceErrorD = lbVar.d(message);
            }
            return new nb(this.adRequest, new lp(Cif.a, this.publisherListener), n3VarA, ironSourceErrorD);
        }
    }
}
