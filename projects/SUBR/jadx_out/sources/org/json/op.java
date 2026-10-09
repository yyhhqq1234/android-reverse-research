package org.json;

import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\"\u0010#J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0011\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J;\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\tHÆ\u0001J\t\u0010\u0010\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\r\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/ironsource/op;", "Lcom/ironsource/r0;", "", "t", "", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "u", "Lcom/ironsource/tp;", "v", "", "w", "userId", "providerList", vf.p, "isManual", "a", "toString", "", "hashCode", "", "other", "equals", "Ljava/lang/String;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "()Ljava/lang/String;", "Ljava/util/List;", "k", "()Ljava/util/List;", "Lcom/ironsource/tp;", "x", "()Lcom/ironsource/tp;", "Z", "y", "()Z", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/tp;Z)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class op extends r0 {

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private final String userId;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    private final List<NetworkSettings> providerList;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata and from toString */
    private final tp configs;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata and from toString */
    private final boolean isManual;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public op(String str, List<? extends NetworkSettings> list, tp configs, boolean z) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
        l5 l5VarK = configs.k();
        Intrinsics.checkNotNullExpressionValue(l5VarK, "configs.rewardedVideoAuctionSettings");
        super(ad_unit, str, list, l5VarK, configs.g(), configs.h(), configs.j(), configs.b(), configs.c(), pp.b(configs, z), new f2(-1L), configs.l(), configs.m(), configs.f(), configs.p(), configs.o(), false, 65536, null);
        this.userId = str;
        this.providerList = list;
        this.configs = configs;
        this.isManual = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ op a(op opVar, String str, List list, tp tpVar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = opVar.getUserId();
        }
        if ((i & 2) != 0) {
            list = opVar.k();
        }
        if ((i & 4) != 0) {
            tpVar = opVar.configs;
        }
        if ((i & 8) != 0) {
            z = opVar.isManual;
        }
        return opVar.a(str, list, tpVar, z);
    }

    public final op a(String userId, List<? extends NetworkSettings> providerList, tp configs, boolean isManual) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new op(userId, providerList, configs, isManual);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof op)) {
            return false;
        }
        op opVar = (op) other;
        return Intrinsics.areEqual(getUserId(), opVar.getUserId()) && Intrinsics.areEqual(k(), opVar.k()) && Intrinsics.areEqual(this.configs, opVar.configs) && this.isManual == opVar.isManual;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public int hashCode() {
        int iHashCode = (((((getUserId() == null ? 0 : getUserId().hashCode()) * 31) + (k() != null ? k().hashCode() : 0)) * 31) + this.configs.hashCode()) * 31;
        boolean z = this.isManual;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
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
        return "RewardedVideoAdDataManager(userId=" + getUserId() + ", providerList=" + k() + ", configs=" + this.configs + ", isManual=" + this.isManual + ')';
    }

    public final List<NetworkSettings> u() {
        return k();
    }

    /* JADX INFO: renamed from: v, reason: from getter */
    public final tp getConfigs() {
        return this.configs;
    }

    /* JADX INFO: renamed from: w, reason: from getter */
    public final boolean getIsManual() {
        return this.isManual;
    }

    public final tp x() {
        return this.configs;
    }

    public final boolean y() {
        return this.isManual;
    }
}
