package org.json;

import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0011\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J1\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\t\u0010\r\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u000b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/ironsource/yl;", "Lcom/ironsource/r0;", "", "t", "", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "u", "Lcom/ironsource/ol;", "v", "userId", "providerList", vf.p, "a", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "()Ljava/lang/String;", "Ljava/util/List;", "k", "()Ljava/util/List;", "Lcom/ironsource/ol;", "w", "()Lcom/ironsource/ol;", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/ol;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class yl extends r0 {

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private final String userId;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    private final List<NetworkSettings> providerList;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata and from toString */
    private final ol configs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public yl(String str, List<? extends NetworkSettings> list, ol configs) {
        super(IronSource.AD_UNIT.NATIVE_AD, str, list, configs.getAuctionSettings(), configs.getAdaptersSmartLoadAmount(), (int) (configs.getAdaptersSmartLoadTimeoutInMills() / ((long) 1000)), configs.getAdapterAdvancedLoading(), configs.getDelayLoadFailure(), -1, new l2(l2.a.MANUAL, configs.getAuctionSettings().j(), configs.getAuctionSettings().b(), -1L), new f2(-1L), configs.getMCollectBiddingDataAsyncEnabled(), configs.getMCollectBiddingDataTimeout(), configs.getMProvidersParallelInit(), configs.getMWaitUntilAllProvidersFinishInit(), configs.getMSharedManagersThread(), false, 65536, null);
        Intrinsics.checkNotNullParameter(configs, "configs");
        this.userId = str;
        this.providerList = list;
        this.configs = configs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ yl a(yl ylVar, String str, List list, ol olVar, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ylVar.getUserId();
        }
        if ((i & 2) != 0) {
            list = ylVar.k();
        }
        if ((i & 4) != 0) {
            olVar = ylVar.configs;
        }
        return ylVar.a(str, list, olVar);
    }

    public final yl a(String userId, List<? extends NetworkSettings> providerList, ol configs) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new yl(userId, providerList, configs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof yl)) {
            return false;
        }
        yl ylVar = (yl) other;
        return Intrinsics.areEqual(getUserId(), ylVar.getUserId()) && Intrinsics.areEqual(k(), ylVar.k()) && Intrinsics.areEqual(this.configs, ylVar.configs);
    }

    public int hashCode() {
        return ((((getUserId() == null ? 0 : getUserId().hashCode()) * 31) + (k() != null ? k().hashCode() : 0)) * 31) + this.configs.hashCode();
    }

    @Override // org.json.r0
    public List<NetworkSettings> k() {
        return this.providerList;
    }

    @Override // org.json.r0
    /* JADX INFO: renamed from: p, reason: from getter */
    public String getUserId() {
        return this.userId;
    }

    public final String t() {
        return getUserId();
    }

    public String toString() {
        return "NativeAdManagerData(userId=" + getUserId() + ", providerList=" + k() + ", configs=" + this.configs + ')';
    }

    public final List<NetworkSettings> u() {
        return k();
    }

    /* JADX INFO: renamed from: v, reason: from getter */
    public final ol getConfigs() {
        return this.configs;
    }

    public final ol w() {
        return this.configs;
    }
}
