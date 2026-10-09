package com.applovin.mediation;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.impl.sdk.n;
import com.applovin.impl.ze;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.nearby.messages.Strategy;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.oq;
import org.json.s;

/* JADX INFO: loaded from: classes.dex */
public class MaxAdFormat {
    private final String a;
    private final String b;
    public static final MaxAdFormat BANNER = new MaxAdFormat("BANNER", "Banner");
    public static final MaxAdFormat MREC = new MaxAdFormat("MREC", "MREC");
    public static final MaxAdFormat LEADER = new MaxAdFormat("LEADER", "Leader");
    public static final MaxAdFormat INTERSTITIAL = new MaxAdFormat("INTER", "Interstitial");
    public static final MaxAdFormat APP_OPEN = new MaxAdFormat("APPOPEN", "App Open");
    public static final MaxAdFormat REWARDED = new MaxAdFormat("REWARDED", "Rewarded");
    public static final MaxAdFormat REWARDED_INTERSTITIAL = new MaxAdFormat("REWARDED_INTER", "Rewarded Interstitial");
    public static final MaxAdFormat NATIVE = new MaxAdFormat("NATIVE", "Native");

    private MaxAdFormat(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static MaxAdFormat formatFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equalsIgnoreCase(oq.h)) {
            return BANNER;
        }
        if (str.equalsIgnoreCase("mrec")) {
            return MREC;
        }
        if (str.equalsIgnoreCase("native")) {
            return NATIVE;
        }
        if (str.equalsIgnoreCase("leaderboard") || str.equalsIgnoreCase("leader")) {
            return LEADER;
        }
        if (str.equalsIgnoreCase("interstitial") || str.equalsIgnoreCase("inter")) {
            return INTERSTITIAL;
        }
        if (str.equalsIgnoreCase("appopen") || str.equalsIgnoreCase("app_open")) {
            return APP_OPEN;
        }
        if (str.equalsIgnoreCase("rewarded") || str.equalsIgnoreCase(s.i)) {
            return REWARDED;
        }
        if (str.equalsIgnoreCase("rewarded_inter") || str.equalsIgnoreCase("rewarded_interstitial")) {
            return REWARDED_INTERSTITIAL;
        }
        n.h("AppLovinSdk", "Unknown ad format: " + str);
        return null;
    }

    public AppLovinSdkUtils.Size getAdaptiveSize(Context context) {
        return getAdaptiveSize(-1, context);
    }

    @Deprecated
    public String getDisplayName() {
        return this.b;
    }

    public String getLabel() {
        return this.a;
    }

    public AppLovinSdkUtils.Size getSize() {
        if (this == BANNER) {
            return new AppLovinSdkUtils.Size(320, 50);
        }
        if (this == LEADER) {
            return new AppLovinSdkUtils.Size(728, 90);
        }
        return this == MREC ? new AppLovinSdkUtils.Size(Strategy.TTL_SECONDS_DEFAULT, IronSourceConstants.INTERSTITIAL_DAILY_CAPPED) : new AppLovinSdkUtils.Size(0, 0);
    }

    public boolean isAdViewAd() {
        return this == BANNER || this == MREC || this == LEADER;
    }

    public boolean isBannerOrLeaderAd() {
        return this == BANNER || this == LEADER;
    }

    public boolean isFullscreenAd() {
        return this == INTERSTITIAL || this == APP_OPEN || this == REWARDED || this == REWARDED_INTERSTITIAL;
    }

    public String toString() {
        return "MaxAdFormat{label='" + this.a + "'}";
    }

    public AppLovinSdkUtils.Size getAdaptiveSize(int i, Context context) {
        return (this == BANNER || this == LEADER) ? ze.a(i, this, context) : getSize();
    }
}
