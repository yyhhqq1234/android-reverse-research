package org.json;

import com.unity3d.mediation.LevelPlay;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b!\u0010\"J\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000fR\u0017\u0010\u0015\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\n\u0010\u0019R#\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00070\u001b8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u0006\u0010\u001f¨\u0006#"}, d2 = {"Lcom/ironsource/q8;", "", "Lorg/json/JSONObject;", "configurations", "", "adFormatKey", "a", "Lcom/ironsource/s;", "Lcom/ironsource/s;", "rewardedConfigurations", "b", "interstitialConfigurations", "Lcom/ironsource/q6;", "c", "Lcom/ironsource/q6;", "()Lcom/ironsource/q6;", "bannerConfigurations", "Lcom/ironsource/pl;", "d", "Lcom/ironsource/pl;", "()Lcom/ironsource/pl;", "nativeAdConfigurations", "Lcom/ironsource/w3;", "e", "Lcom/ironsource/w3;", "()Lcom/ironsource/w3;", "applicationConfigurations", "", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "f", "Ljava/util/Map;", "()Ljava/util/Map;", "adFormatsConfigurations", "<init>", "(Lorg/json/JSONObject;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class q8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final s rewardedConfigurations;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final s interstitialConfigurations;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final q6 bannerConfigurations;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final pl nativeAdConfigurations;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final w3 applicationConfigurations;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final Map<LevelPlay.AdFormat, s> adFormatsConfigurations;

    public q8(JSONObject configurations) {
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        s sVar = new s(a(configurations, "rewarded"));
        this.rewardedConfigurations = sVar;
        s sVar2 = new s(a(configurations, "interstitial"));
        this.interstitialConfigurations = sVar2;
        this.bannerConfigurations = new q6(a(configurations, oq.h));
        this.nativeAdConfigurations = new pl(a(configurations, oq.i));
        JSONObject jSONObjectOptJSONObject = configurations.optJSONObject("application");
        this.applicationConfigurations = new w3(jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject);
        this.adFormatsConfigurations = MapsKt.mapOf(TuplesKt.to(LevelPlay.AdFormat.INTERSTITIAL, sVar2), TuplesKt.to(LevelPlay.AdFormat.REWARDED, sVar));
    }

    private final JSONObject a(JSONObject configurations, String adFormatKey) {
        JSONObject jSONObjectOptJSONObject = configurations.optJSONObject("adFormats");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject(adFormatKey) : null;
        return jSONObjectOptJSONObject2 == null ? new JSONObject() : jSONObjectOptJSONObject2;
    }

    public final Map<LevelPlay.AdFormat, s> a() {
        return this.adFormatsConfigurations;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final w3 getApplicationConfigurations() {
        return this.applicationConfigurations;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final q6 getBannerConfigurations() {
        return this.bannerConfigurations;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final pl getNativeAdConfigurations() {
        return this.nativeAdConfigurations;
    }
}
