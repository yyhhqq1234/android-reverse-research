package com.unity3d.mediation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.oo;
import org.json.xk;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b-\u0010.B\u001b\b\u0016\u0012\u0006\u0010/\u001a\u00020\u0000\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b-\u00100J\t\u0010\u0003\u001a\u00020\u0002HÂ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÂ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0007HÂ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tHÂ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÂ\u0003J\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u0002J\b\u0010\u000e\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u000f\u001a\u00020\u0002J\u0006\u0010\u0010\u001a\u00020\u0002J\u0006\u0010\u0011\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\u0006\u0010\u0015\u001a\u00020\u0002J\u0006\u0010\u0016\u001a\u00020\u0002J\u0006\u0010\u0017\u001a\u00020\u0002J\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001b\u001a\u00020\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0016JM\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u00022\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010%\u001a\u00020$HÖ\u0001J\u0013\u0010(\u001a\u00020'2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0014\u0010\u001d\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010)R\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010)R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010*R\u0016\u0010 \u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010+R\u0016\u0010!\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010,R\u0016\u0010\"\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010)¨\u00061"}, d2 = {"Lcom/unity3d/mediation/LevelPlayAdInfo;", "", "", "a", "b", "Lcom/ironsource/mediationsdk/impressionData/ImpressionData;", "c", "Lcom/ironsource/xk;", "d", "Lcom/unity3d/mediation/LevelPlayAdSize;", "e", "f", "getAdUnitId", "getAdUnitName", "getAdSize", "getAdFormat", "getPlacementName", "getAuctionId", "getCountry", "getAb", "getSegmentName", "getAdNetwork", "getInstanceName", "getInstanceId", "", "getRevenue", "getPrecision", "getEncryptedCPM", "toString", "adUnitId", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "impressionData", "loadArmData", y8.h.O, oo.d, "copy", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "Lcom/ironsource/mediationsdk/impressionData/ImpressionData;", "Lcom/ironsource/xk;", "Lcom/unity3d/mediation/LevelPlayAdSize;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;Lcom/ironsource/xk;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;)V", "adInfo", "(Lcom/unity3d/mediation/LevelPlayAdInfo;Ljava/lang/String;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class LevelPlayAdInfo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String adUnitId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String adFormat;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final ImpressionData impressionData;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final xk loadArmData;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final LevelPlayAdSize adSize;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final String placementName;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LevelPlayAdInfo(LevelPlayAdInfo adInfo, String str) {
        this(adInfo.adUnitId, adInfo.adFormat, adInfo.impressionData, adInfo.loadArmData, adInfo.adSize, str);
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
    }

    public LevelPlayAdInfo(String adUnitId, String adFormat, ImpressionData impressionData, xk xkVar, LevelPlayAdSize levelPlayAdSize, String str) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.adUnitId = adUnitId;
        this.adFormat = adFormat;
        this.impressionData = impressionData;
        this.loadArmData = xkVar;
        this.adSize = levelPlayAdSize;
        this.placementName = str;
    }

    public /* synthetic */ LevelPlayAdInfo(String str, String str2, ImpressionData impressionData, xk xkVar, LevelPlayAdSize levelPlayAdSize, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : impressionData, (i & 8) != 0 ? null : xkVar, (i & 16) != 0 ? null : levelPlayAdSize, (i & 32) != 0 ? null : str3);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    private final String getAdUnitId() {
        return this.adUnitId;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    private final String getAdFormat() {
        return this.adFormat;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    private final ImpressionData getImpressionData() {
        return this.impressionData;
    }

    public static /* synthetic */ LevelPlayAdInfo copy$default(LevelPlayAdInfo levelPlayAdInfo, String str, String str2, ImpressionData impressionData, xk xkVar, LevelPlayAdSize levelPlayAdSize, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = levelPlayAdInfo.adUnitId;
        }
        if ((i & 2) != 0) {
            str2 = levelPlayAdInfo.adFormat;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            impressionData = levelPlayAdInfo.impressionData;
        }
        ImpressionData impressionData2 = impressionData;
        if ((i & 8) != 0) {
            xkVar = levelPlayAdInfo.loadArmData;
        }
        xk xkVar2 = xkVar;
        if ((i & 16) != 0) {
            levelPlayAdSize = levelPlayAdInfo.adSize;
        }
        LevelPlayAdSize levelPlayAdSize2 = levelPlayAdSize;
        if ((i & 32) != 0) {
            str3 = levelPlayAdInfo.placementName;
        }
        return levelPlayAdInfo.copy(str, str4, impressionData2, xkVar2, levelPlayAdSize2, str3);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    private final xk getLoadArmData() {
        return this.loadArmData;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    private final LevelPlayAdSize getAdSize() {
        return this.adSize;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    private final String getPlacementName() {
        return this.placementName;
    }

    public final LevelPlayAdInfo copy(String adUnitId, String adFormat, ImpressionData impressionData, xk loadArmData, LevelPlayAdSize adSize, String placementName) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return new LevelPlayAdInfo(adUnitId, adFormat, impressionData, loadArmData, adSize, placementName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LevelPlayAdInfo)) {
            return false;
        }
        LevelPlayAdInfo levelPlayAdInfo = (LevelPlayAdInfo) other;
        return Intrinsics.areEqual(this.adUnitId, levelPlayAdInfo.adUnitId) && Intrinsics.areEqual(this.adFormat, levelPlayAdInfo.adFormat) && Intrinsics.areEqual(this.impressionData, levelPlayAdInfo.impressionData) && Intrinsics.areEqual(this.loadArmData, levelPlayAdInfo.loadArmData) && Intrinsics.areEqual(this.adSize, levelPlayAdInfo.adSize) && Intrinsics.areEqual(this.placementName, levelPlayAdInfo.placementName);
    }

    public final String getAb() {
        ImpressionData impressionData = this.impressionData;
        String ab = impressionData != null ? impressionData.getAb() : null;
        return ab == null ? "" : ab;
    }

    public final String getAdFormat() {
        ImpressionData impressionData = this.impressionData;
        String adFormat = impressionData != null ? impressionData.getAdFormat() : null;
        return adFormat == null ? this.adFormat : adFormat;
    }

    public final String getAdNetwork() {
        ImpressionData impressionData = this.impressionData;
        String adNetwork = impressionData != null ? impressionData.getAdNetwork() : null;
        return adNetwork == null ? "" : adNetwork;
    }

    public final LevelPlayAdSize getAdSize() {
        return this.adSize;
    }

    public final String getAdUnitId() {
        ImpressionData impressionData = this.impressionData;
        String mediationAdUnitId = impressionData != null ? impressionData.getMediationAdUnitId() : null;
        return mediationAdUnitId == null ? this.adUnitId : mediationAdUnitId;
    }

    public final String getAdUnitName() {
        ImpressionData impressionData = this.impressionData;
        String mediationAdUnitName = impressionData != null ? impressionData.getMediationAdUnitName() : null;
        return mediationAdUnitName == null ? "" : mediationAdUnitName;
    }

    public final String getAuctionId() {
        ImpressionData impressionData = this.impressionData;
        String auctionId = impressionData != null ? impressionData.getAuctionId() : null;
        return auctionId == null ? "" : auctionId;
    }

    public final String getCountry() {
        ImpressionData impressionData = this.impressionData;
        String country = impressionData != null ? impressionData.getCountry() : null;
        return country == null ? "" : country;
    }

    public final String getEncryptedCPM() {
        ImpressionData impressionData = this.impressionData;
        String encryptedCPM = impressionData != null ? impressionData.getEncryptedCPM() : null;
        return encryptedCPM == null ? "" : encryptedCPM;
    }

    public final String getInstanceId() {
        ImpressionData impressionData = this.impressionData;
        String instanceId = impressionData != null ? impressionData.getInstanceId() : null;
        return instanceId == null ? "" : instanceId;
    }

    public final String getInstanceName() {
        ImpressionData impressionData = this.impressionData;
        String instanceName = impressionData != null ? impressionData.getInstanceName() : null;
        return instanceName == null ? "" : instanceName;
    }

    public final String getPlacementName() {
        String str = this.placementName;
        return str == null ? "" : str;
    }

    public final String getPrecision() {
        String strC;
        xk xkVar = this.loadArmData;
        if (xkVar != null && (strC = xkVar.c()) != null) {
            return strC;
        }
        ImpressionData impressionData = this.impressionData;
        String precision = impressionData != null ? impressionData.getPrecision() : null;
        return precision == null ? "" : precision;
    }

    public final double getRevenue() {
        xk xkVar = this.loadArmData;
        if (xkVar != null) {
            return xkVar.d();
        }
        ImpressionData impressionData = this.impressionData;
        Double revenue = impressionData != null ? impressionData.getRevenue() : null;
        if (revenue != null) {
            return revenue.doubleValue();
        }
        return 0.0d;
    }

    public final String getSegmentName() {
        ImpressionData impressionData = this.impressionData;
        String segmentName = impressionData != null ? impressionData.getSegmentName() : null;
        return segmentName == null ? "" : segmentName;
    }

    public int hashCode() {
        int iHashCode = ((this.adUnitId.hashCode() * 31) + this.adFormat.hashCode()) * 31;
        ImpressionData impressionData = this.impressionData;
        int iHashCode2 = (iHashCode + (impressionData == null ? 0 : impressionData.hashCode())) * 31;
        xk xkVar = this.loadArmData;
        int iHashCode3 = (iHashCode2 + (xkVar == null ? 0 : xkVar.hashCode())) * 31;
        LevelPlayAdSize levelPlayAdSize = this.adSize;
        int iHashCode4 = (iHashCode3 + (levelPlayAdSize == null ? 0 : levelPlayAdSize.hashCode())) * 31;
        String str = this.placementName;
        return iHashCode4 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "adUnitId: " + getAdUnitId() + ", adUnitName: " + getAdUnitName() + ", adSize: " + this.adSize + ", adFormat: " + getAdFormat() + ", placementName: " + getPlacementName() + ", auctionId: " + getAuctionId() + ", country: " + getCountry() + ", ab: " + getAb() + ", segmentName: " + getSegmentName() + ", adNetwork: " + getAdNetwork() + ", instanceName: " + getInstanceName() + ", instanceId: " + getInstanceId() + ", revenue: " + getRevenue() + ", precision: " + getPrecision() + ", encryptedCPM: " + getEncryptedCPM();
    }
}
