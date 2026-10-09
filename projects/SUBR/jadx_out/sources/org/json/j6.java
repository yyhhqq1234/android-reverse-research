package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0019\b\u0086\b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0007B'\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J\t\u0010\u000f\u001a\u00020\u000eHÆ\u0003J1\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\n2\b\b\u0002\u0010\u0012\u001a\u00020\f2\b\b\u0002\u0010\u0013\u001a\u00020\u000eHÆ\u0001J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0016HÖ\u0001J\u0013\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003R\u001a\u0010\u0010\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0011\u001a\u00020\n8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001f\u0010!R\u0017\u0010\u0012\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\t\u0010&\u001a\u0004\b'\u0010(R\u001a\u0010,\u001a\u00020\u00148\u0016X\u0096D¢\u0006\f\n\u0004\b\u000b\u0010)\u001a\u0004\b*\u0010+R\u001a\u0010.\u001a\u00020\u00148\u0016X\u0096D¢\u0006\f\n\u0004\b\r\u0010)\u001a\u0004\b-\u0010+¨\u00061"}, d2 = {"Lcom/ironsource/j6;", "Lcom/ironsource/t1;", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", oq.b, "Lorg/json/JSONObject;", "b", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "a", "Lcom/ironsource/g6;", "x", "", "y", "Lcom/ironsource/s1;", "z", "Lcom/ironsource/r6;", "A", "adProperties", "isPublisherLoad", "adUnitCommonData", vf.p, "", "toString", "", "hashCode", "", "other", "equals", "u", "Lcom/ironsource/g6;", "B", "()Lcom/ironsource/g6;", "v", "Z", "()Z", "w", "Lcom/ironsource/s1;", "C", "()Lcom/ironsource/s1;", "Lcom/ironsource/r6;", "D", "()Lcom/ironsource/r6;", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "adUnitPrefix", "k", "managerName", "<init>", "(Lcom/ironsource/g6;ZLcom/ironsource/s1;Lcom/ironsource/r6;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class j6 extends t1 {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    private final g6 adProperties;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final boolean isPublisherLoad;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata and from toString */
    private final s1 adUnitCommonData;

    /* JADX INFO: renamed from: x, reason: from kotlin metadata and from toString */
    private final r6 configs;

    /* JADX INFO: renamed from: y, reason: from kotlin metadata */
    private final String adUnitPrefix;

    /* JADX INFO: renamed from: z, reason: from kotlin metadata */
    private final String managerName;

    /* JADX INFO: renamed from: com.ironsource.j6$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Lcom/ironsource/j6$a;", "", "Lcom/ironsource/g6;", "adProperties", "Lcom/ironsource/ck;", "levelPlayConfig", "", "isPublisherLoad", "Lcom/ironsource/j6;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j6 a(g6 adProperties, ck levelPlayConfig, boolean isPublisherLoad) {
            List<wm> listEmptyList;
            gr grVarD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            t1.Companion companion = t1.INSTANCE;
            p8 p8VarC = (levelPlayConfig == null || (grVarD = levelPlayConfig.d()) == null) ? null : grVarD.c();
            r6 bannerConfigurations = p8VarC != null ? p8VarC.getBannerConfigurations() : null;
            if (bannerConfigurations == null) {
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
            return new j6(adProperties, isPublisherLoad, new s1(userIdForNetworks, arrayList, njVarB), bannerConfigurations);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public j6(g6 adProperties, boolean z, s1 adUnitCommonData, r6 configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        String strF = adUnitCommonData.f();
        List<NetworkSettings> listD = adUnitCommonData.d();
        nj njVarE = adUnitCommonData.e();
        l5 l5VarD = configs.d();
        Intrinsics.checkNotNullExpressionValue(l5VarD, "configs.bannerAuctionSettings");
        super(adProperties, z, strF, listD, njVarE, l5VarD, configs.a(), (int) (configs.b() / ((long) 1000)), configs.c(), configs.g(), -1, new l2(l2.a.MANUAL_WITH_AUTOMATIC_RELOAD, configs.d().j(), configs.d().b(), 1000 * ((long) configs.i())), configs.e(), configs.f(), configs.m(), configs.o(), configs.n(), false, 131072, null);
        this.adProperties = adProperties;
        this.isPublisherLoad = z;
        this.adUnitCommonData = adUnitCommonData;
        this.configs = configs;
        this.adUnitPrefix = "BN";
        this.managerName = dk.MADU_BN_MANAGER_NAME;
    }

    public static /* synthetic */ j6 a(j6 j6Var, g6 g6Var, boolean z, s1 s1Var, r6 r6Var, int i, Object obj) {
        if ((i & 1) != 0) {
            g6Var = j6Var.getAdProperties();
        }
        if ((i & 2) != 0) {
            z = j6Var.getIsPublisherLoad();
        }
        if ((i & 4) != 0) {
            s1Var = j6Var.adUnitCommonData;
        }
        if ((i & 8) != 0) {
            r6Var = j6Var.configs;
        }
        return j6Var.a(g6Var, z, s1Var, r6Var);
    }

    /* JADX INFO: renamed from: A, reason: from getter */
    public final r6 getConfigs() {
        return this.configs;
    }

    @Override // org.json.t1
    /* JADX INFO: renamed from: B, reason: from getter */
    public g6 getAdProperties() {
        return this.adProperties;
    }

    /* JADX INFO: renamed from: C, reason: from getter */
    public final s1 getAdUnitCommonData() {
        return this.adUnitCommonData;
    }

    public final r6 D() {
        return this.configs;
    }

    public final j6 a(g6 adProperties, boolean isPublisherLoad, s1 adUnitCommonData, r6 configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new j6(adProperties, isPublisherLoad, adUnitCommonData, configs);
    }

    @Override // org.json.t1
    public AdData a(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        AdData adDataCreateAdDataForNetworkAdapter = AdData.createAdDataForNetworkAdapter(b(providerSettings), getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String(), getUserId(), new IronSourceBannerLayout(ContextProvider.getInstance().getCurrentActiveActivity(), new i1().b(getAdProperties().getCom.ironsource.y8.h.O java.lang.String())));
        Intrinsics.checkNotNullExpressionValue(adDataCreateAdDataForNetworkAdapter, "createAdDataForNetworkAd…ze(adProperties.adSize)))");
        return adDataCreateAdDataForNetworkAdapter;
    }

    @Override // org.json.t1
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject bannerSettings = providerSettings.getBannerSettings();
        Intrinsics.checkNotNullExpressionValue(bannerSettings, "providerSettings.bannerSettings");
        return bannerSettings;
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
        if (!(other instanceof j6)) {
            return false;
        }
        j6 j6Var = (j6) other;
        return Intrinsics.areEqual(getAdProperties(), j6Var.getAdProperties()) && getIsPublisherLoad() == j6Var.getIsPublisherLoad() && Intrinsics.areEqual(this.adUnitCommonData, j6Var.adUnitCommonData) && Intrinsics.areEqual(this.configs, j6Var.configs);
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
        return "BannerAdUnitData(adProperties=" + getAdProperties() + ", isPublisherLoad=" + getIsPublisherLoad() + ", adUnitCommonData=" + this.adUnitCommonData + ", configs=" + this.configs + ')';
    }

    @Override // org.json.t1
    /* JADX INFO: renamed from: v, reason: from getter */
    public boolean getIsPublisherLoad() {
        return this.isPublisherLoad;
    }

    public final g6 x() {
        return getAdProperties();
    }

    public final boolean y() {
        return getIsPublisherLoad();
    }

    public final s1 z() {
        return this.adUnitCommonData;
    }
}
