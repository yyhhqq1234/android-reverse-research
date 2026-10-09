package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\u0010\u0011\u001a\u00060\rj\u0002`\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u0016\u0010\f\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0018\u0010\u0011\u001a\u00060\rj\u0002`\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/ironsource/o7;", "Lcom/ironsource/b3;", "Lcom/ironsource/to;", "providerName", "Lcom/ironsource/rh;", "a", "Lcom/ironsource/p8;", "Lcom/ironsource/p8;", "adFormatConfigurations", "Lcom/ironsource/xo;", "b", "Lcom/ironsource/xo;", "providerSettingsHolder", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Lcom/unity3d/ironsourceads/internal/AdFormat;", "c", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "<init>", "(Lcom/ironsource/p8;Lcom/ironsource/xo;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class o7 implements b3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final p8 adFormatConfigurations;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final xo providerSettingsHolder;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final IronSource.AD_UNIT adFormat;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IronSource.AD_UNIT.values().length];
            try {
                iArr[IronSource.AD_UNIT.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public o7(p8 adFormatConfigurations, xo xoVar, IronSource.AD_UNIT adFormat) {
        Intrinsics.checkNotNullParameter(adFormatConfigurations, "adFormatConfigurations");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.adFormatConfigurations = adFormatConfigurations;
        this.providerSettingsHolder = xoVar;
        this.adFormat = adFormat;
    }

    @Override // org.json.b3
    public rh a(to providerName) {
        NetworkSettings networkSettingsB;
        tp rewardedVideoConfigurations;
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        xo xoVar = this.providerSettingsHolder;
        if (xoVar == null || (networkSettingsB = xoVar.b(providerName.value())) == null) {
            return null;
        }
        int i = a.a[this.adFormat.ordinal()];
        if (i == 1) {
            r6 bannerConfigurations = this.adFormatConfigurations.getBannerConfigurations();
            if (bannerConfigurations != null) {
                return new w6(new z2(networkSettingsB, networkSettingsB.getBannerSettings(), this.adFormat), bannerConfigurations);
            }
            return null;
        }
        if (i != 2) {
            if (i == 3 && (rewardedVideoConfigurations = this.adFormatConfigurations.getRewardedVideoConfigurations()) != null) {
                return new gp(new z2(networkSettingsB, networkSettingsB.getRewardedVideoSettings(), this.adFormat), rewardedVideoConfigurations);
            }
            return null;
        }
        ji interstitialConfigurations = this.adFormatConfigurations.getInterstitialConfigurations();
        if (interstitialConfigurations != null) {
            return new mi(new z2(networkSettingsB, networkSettingsB.getInterstitialSettings(), this.adFormat), interstitialConfigurations);
        }
        return null;
    }
}
