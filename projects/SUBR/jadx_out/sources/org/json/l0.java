package org.json;

import java.util.Date;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.sdk.controller.f;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b0\u00101J\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\t\u0010\n\u001a\u00020\tHÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\tHÆ\u0001R\u0017\u0010\u000b\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\n\u0010\u0014R\"\u0010\u001b\u001a\u00020\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\n\u0010\u001aR\"\u0010!\u001a\u00020\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b\n\u0010 R\"\u0010'\u001a\u00020\"8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010#\u001a\u0004\b$\u0010%\"\u0004\b\n\u0010&R\u0011\u0010(\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0019R\u0011\u0010*\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b)\u0010\u0019R\u0011\u0010-\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010,R\u0011\u0010/\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b.\u0010\u0019¨\u00062"}, d2 = {"Lcom/ironsource/l0;", "", "other", "", "equals", "", "hashCode", "", "toString", "Lcom/ironsource/oi;", "a", y8.h.p0, "Lcom/ironsource/oi;", "d", "()Lcom/ironsource/oi;", "Lcom/ironsource/jf;", "b", "Lcom/ironsource/jf;", "e", "()Lcom/ironsource/jf;", "(Lcom/ironsource/jf;)V", "adProvider", "c", "Ljava/lang/String;", "h", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "advertiserBundleId", "Lcom/ironsource/k1;", "Lcom/ironsource/k1;", "f", "()Lcom/ironsource/k1;", "(Lcom/ironsource/k1;)V", "adStatus", "", "D", "j", "()D", "(D)V", "lastStatusUpdateTimeStamp", f.b.c, "g", "adUnitId", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "i", "instanceId", "<init>", "(Lcom/ironsource/oi;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class l0 {
    public static final String g = "0";
    public static final String h = "0";
    public static final String i = "0";
    public static final String j = "0";

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final oi adInstance;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private jf adProvider;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private String advertiserBundleId;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private k1 adStatus;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private double lastStatusUpdateTimeStamp;

    public l0(oi adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        this.adInstance = adInstance;
        this.adProvider = jf.UnknownProvider;
        this.advertiserBundleId = "0";
        this.adStatus = k1.LOAD_REQUEST;
        this.lastStatusUpdateTimeStamp = new Date().getTime() / 1000.0d;
    }

    public static /* synthetic */ l0 a(l0 l0Var, oi oiVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            oiVar = l0Var.adInstance;
        }
        return l0Var.a(oiVar);
    }

    public final l0 a(oi adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        return new l0(adInstance);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final oi getAdInstance() {
        return this.adInstance;
    }

    public final void a(double d) {
        this.lastStatusUpdateTimeStamp = d;
    }

    public final void a(jf jfVar) {
        Intrinsics.checkNotNullParameter(jfVar, "<set-?>");
        this.adProvider = jfVar;
    }

    public final void a(k1 k1Var) {
        Intrinsics.checkNotNullParameter(k1Var, "<set-?>");
        this.adStatus = k1Var;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.advertiserBundleId = str;
    }

    public final IronSource.AD_UNIT b() {
        if (this.adInstance.i()) {
            return IronSource.AD_UNIT.BANNER;
        }
        return this.adInstance.n() ? IronSource.AD_UNIT.REWARDED_VIDEO : IronSource.AD_UNIT.INTERSTITIAL;
    }

    public final String c() {
        String strE = this.adInstance.e();
        Intrinsics.checkNotNullExpressionValue(strE, "adInstance.id");
        return strE;
    }

    public final oi d() {
        return this.adInstance;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final jf getAdProvider() {
        return this.adProvider;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) other;
        return Intrinsics.areEqual(c(), l0Var.c()) && Intrinsics.areEqual(g(), l0Var.g()) && b() == l0Var.b() && Intrinsics.areEqual(i(), l0Var.i()) && this.adProvider == l0Var.adProvider && Intrinsics.areEqual(this.advertiserBundleId, l0Var.advertiserBundleId) && this.adStatus == l0Var.adStatus;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final k1 getAdStatus() {
        return this.adStatus;
    }

    public final String g() {
        String strC = this.adInstance.c();
        return strC == null ? "0" : strC;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getAdvertiserBundleId() {
        return this.advertiserBundleId;
    }

    public int hashCode() {
        return Objects.hash(c(), g(), b(), i(), this.adProvider, this.advertiserBundleId, this.adStatus, Double.valueOf(this.lastStatusUpdateTimeStamp));
    }

    public final String i() {
        String strG = this.adInstance.g();
        Intrinsics.checkNotNullExpressionValue(strG, "adInstance.name");
        return strG;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final double getLastStatusUpdateTimeStamp() {
        return this.lastStatusUpdateTimeStamp;
    }

    public String toString() {
        String string = new JSONObject().put(f.b.c, c()).put("advertiserBundleId", this.advertiserBundleId).put("adProvider", this.adProvider.ordinal()).put("adStatus", this.adStatus.ordinal()).put("lastStatusUpdateTimeStamp", (long) this.lastStatusUpdateTimeStamp).put("adUnitId", g()).put(ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, b().toString()).put("instanceId", i()).toString();
        Intrinsics.checkNotNullExpressionValue(string, "JSONObject()\n        .pu…ceId)\n        .toString()");
        return string;
    }
}
