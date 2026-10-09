package com.applovin.sdk;

import android.content.Context;
import com.applovin.impl.a4;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinPrivacySettings {
    public static Boolean getAdditionalConsentStatus(int i) {
        j jVar = j.u0;
        if (jVar != null) {
            return jVar.j0().a(i);
        }
        n.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getAdditionalConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
        return null;
    }

    public static Boolean getPurposeConsentStatus(int i) {
        j jVar = j.u0;
        if (jVar != null) {
            return jVar.j0().b(i);
        }
        n.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getPurposeConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
        return null;
    }

    public static Boolean getSpecialFeatureOptInStatus(int i) {
        j jVar = j.u0;
        if (jVar != null) {
            return jVar.j0().c(i);
        }
        n.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getSpecialFeatureOptInStatus(...) called when AppLovin MAX SDK is not initialized yet");
        return null;
    }

    public static Boolean getTcfVendorConsentStatus(int i) {
        j jVar = j.u0;
        if (jVar != null) {
            return jVar.j0().d(i);
        }
        n.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getTcfVendorConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
        return null;
    }

    public static boolean hasUserConsent(Context context) {
        Boolean boolB = a4.b().b(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSell(Context context) {
        Boolean boolB = a4.a().b(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSellSet(Context context) {
        return a4.a().b(context) != null;
    }

    public static boolean isUserConsentSet(Context context) {
        return a4.b().b(context) != null;
    }

    public static void setDoNotSell(boolean z, Context context) {
        n.g("AppLovinPrivacySettings", "setDoNotSell()");
        if (a4.a(z, context)) {
            AppLovinSdk.reinitializeAll(null, Boolean.valueOf(z));
        }
    }

    public static void setHasUserConsent(boolean z, Context context) {
        n.g("AppLovinPrivacySettings", "setHasUserConsent()");
        if (a4.b(z, context)) {
            AppLovinSdk.reinitializeAll(Boolean.valueOf(z), null);
        }
    }
}
