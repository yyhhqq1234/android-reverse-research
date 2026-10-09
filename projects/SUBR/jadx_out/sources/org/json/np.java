package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0018\b\u0086\b\u0018\u0000 \r2\u00020\u0001:\u0001\u0012B'\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\n2\b\b\u0002\u0010\u0011\u001a\u00020\fHÆ\u0001J\t\u0010\u0014\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0015HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003R\u001a\u0010\u000e\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0005\u0010\u001cR\u001a\u0010\u000f\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001fR\u0017\u0010\u0010\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0007\u0010$\u001a\u0004\b%\u0010&R\u001a\u0010*\u001a\u00020\u00138\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010'\u001a\u0004\b(\u0010)R\u001a\u0010,\u001a\u00020\u00138\u0016X\u0096D¢\u0006\f\n\u0004\b\u000b\u0010'\u001a\u0004\b+\u0010)¨\u0006/"}, d2 = {"Lcom/ironsource/np;", "Lcom/ironsource/t1;", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", oq.b, "Lorg/json/JSONObject;", "b", "Lcom/ironsource/c1;", "x", "", "y", "Lcom/ironsource/s1;", "z", "Lcom/ironsource/tp;", "A", "adProperties", "isPublisherLoad", "adUnitCommonData", vf.p, "a", "", "toString", "", "hashCode", "", "other", "equals", "u", "Lcom/ironsource/c1;", "()Lcom/ironsource/c1;", "v", "Z", "()Z", "w", "Lcom/ironsource/s1;", "B", "()Lcom/ironsource/s1;", "Lcom/ironsource/tp;", "C", "()Lcom/ironsource/tp;", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "adUnitPrefix", "k", "managerName", "<init>", "(Lcom/ironsource/c1;ZLcom/ironsource/s1;Lcom/ironsource/tp;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class np extends t1 {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    private final c1 adProperties;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final boolean isPublisherLoad;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata and from toString */
    private final s1 adUnitCommonData;

    /* JADX INFO: renamed from: x, reason: from kotlin metadata and from toString */
    private final tp configs;

    /* JADX INFO: renamed from: y, reason: from kotlin metadata */
    private final String adUnitPrefix;

    /* JADX INFO: renamed from: z, reason: from kotlin metadata */
    private final String managerName;

    /* JADX INFO: renamed from: com.ironsource.np$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Lcom/ironsource/np$a;", "", "Lcom/ironsource/c1;", "adProperties", "Lcom/ironsource/ck;", "levelPlayConfig", "", "isPublisherLoad", "Lcom/ironsource/np;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final np a(c1 adProperties, ck levelPlayConfig, boolean isPublisherLoad) {
            List<wm> listEmptyList;
            gr grVarD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            t1.Companion companion = t1.INSTANCE;
            p8 p8VarC = (levelPlayConfig == null || (grVarD = levelPlayConfig.d()) == null) ? null : grVarD.c();
            tp rewardedVideoConfigurations = p8VarC != null ? p8VarC.getRewardedVideoConfigurations() : null;
            if (rewardedVideoConfigurations == null) {
                throw new IllegalStateException("Error getting " + adProperties.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String() + " configurations");
            }
            if (levelPlayConfig == null || (listEmptyList = levelPlayConfig.b(adProperties.c(), adProperties.getAdUnitId())) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            String userIdForNetworks = IronSourceUtils.getUserIdForNetworks();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listEmptyList, 10));
            Iterator<T> it = listEmptyList.iterator();
            while (it.hasNext()) {
                arrayList.add(((wm) it.next()).f());
            }
            nj njVarB = nj.b();
            Intrinsics.checkNotNullExpressionValue(njVarB, "getInstance()");
            return new np(adProperties, isPublisherLoad, new s1(userIdForNetworks, arrayList, njVarB), rewardedVideoConfigurations);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public np(c1 adProperties, boolean z, s1 adUnitCommonData, tp configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        String strF = adUnitCommonData.f();
        List<NetworkSettings> listD = adUnitCommonData.d();
        nj njVarE = adUnitCommonData.e();
        l5 l5VarK = configs.k();
        Intrinsics.checkNotNullExpressionValue(l5VarK, "configs.rewardedVideoAuctionSettings");
        super(adProperties, z, strF, listD, njVarE, l5VarK, configs.g(), configs.h(), configs.j(), configs.b(), configs.c(), new l2(l2.a.MANUAL, configs.k().j(), configs.k().b(), -1L), configs.l(), configs.m(), configs.f(), configs.p(), configs.o(), false, 131072, null);
        this.adProperties = adProperties;
        this.isPublisherLoad = z;
        this.adUnitCommonData = adUnitCommonData;
        this.configs = configs;
        this.adUnitPrefix = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.managerName = dk.MADU_RV_MANAGER_NAME;
    }

    public static /* synthetic */ np a(np npVar, c1 c1Var, boolean z, s1 s1Var, tp tpVar, int i, Object obj) {
        if ((i & 1) != 0) {
            c1Var = npVar.getAdProperties();
        }
        if ((i & 2) != 0) {
            z = npVar.getIsPublisherLoad();
        }
        if ((i & 4) != 0) {
            s1Var = npVar.adUnitCommonData;
        }
        if ((i & 8) != 0) {
            tpVar = npVar.configs;
        }
        return npVar.a(c1Var, z, s1Var, tpVar);
    }

    /* JADX INFO: renamed from: A, reason: from getter */
    public final tp getConfigs() {
        return this.configs;
    }

    /* JADX INFO: renamed from: B, reason: from getter */
    public final s1 getAdUnitCommonData() {
        return this.adUnitCommonData;
    }

    public final tp C() {
        return this.configs;
    }

    public final np a(c1 adProperties, boolean isPublisherLoad, s1 adUnitCommonData, tp configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new np(adProperties, isPublisherLoad, adUnitCommonData, configs);
    }

    @Override // org.json.t1
    /* JADX INFO: renamed from: b, reason: from getter */
    public c1 getAdProperties() {
        return this.adProperties;
    }

    @Override // org.json.t1
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject rewardedVideoSettings = providerSettings.getRewardedVideoSettings();
        Intrinsics.checkNotNullExpressionValue(rewardedVideoSettings, "providerSettings.rewardedVideoSettings");
        return rewardedVideoSettings;
    }

    @Override // org.json.t1
    /* JADX INFO: renamed from: c, reason: from getter */
    public String getAdUnitPrefix() {
        return this.adUnitPrefix;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof np)) {
            return false;
        }
        np npVar = (np) other;
        return Intrinsics.areEqual(getAdProperties(), npVar.getAdProperties()) && getIsPublisherLoad() == npVar.getIsPublisherLoad() && Intrinsics.areEqual(this.adUnitCommonData, npVar.adUnitCommonData) && Intrinsics.areEqual(this.configs, npVar.configs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = getAdProperties().hashCode() * 31;
        boolean isPublisherLoad = getIsPublisherLoad();
        ?? r1 = isPublisherLoad;
        if (isPublisherLoad) {
            r1 = 1;
        }
        return ((((iHashCode + r1) * 31) + this.adUnitCommonData.hashCode()) * 31) + this.configs.hashCode();
    }

    @Override // org.json.t1
    /* JADX INFO: renamed from: k, reason: from getter */
    public String getManagerName() {
        return this.managerName;
    }

    public String toString() {
        return "RewardedAdUnitData(adProperties=" + getAdProperties() + ", isPublisherLoad=" + getIsPublisherLoad() + ", adUnitCommonData=" + this.adUnitCommonData + ", configs=" + this.configs + ')';
    }

    @Override // org.json.t1
    /* JADX INFO: renamed from: v, reason: from getter */
    public boolean getIsPublisherLoad() {
        return this.isPublisherLoad;
    }

    public final c1 x() {
        return getAdProperties();
    }

    public final boolean y() {
        return getIsPublisherLoad();
    }

    public final s1 z() {
        return this.adUnitCommonData;
    }
}
