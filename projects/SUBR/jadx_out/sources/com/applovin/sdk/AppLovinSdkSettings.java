package com.applovin.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.impl.h4;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.yp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinSdkSettings {
    private boolean a;
    private boolean b;
    private String f;
    private String g;
    private final AppLovinTermsAndPrivacyPolicyFlowSettings k;
    private j l;
    private String m;
    private boolean e = true;
    private final Map<String, Object> localSettings = new HashMap();
    private List h = Collections.emptyList();
    private List i = Collections.emptyList();
    private final Map j = Collections.synchronizedMap(new HashMap());
    private boolean c = true;
    private boolean d = true;

    public AppLovinSdkSettings(Context context) {
        this.m = "";
        if (context == null) {
            n.h("AppLovinSdkSettings", "context cannot be null. Please provide a valid context.");
        }
        Context contextD = yp.d(context);
        this.a = yp.k(contextD);
        this.k = h4.a(contextD);
        this.m = contextD.getPackageName();
        a(contextD);
    }

    private void a(Context context) {
        int identifier = context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName());
        if (identifier == 0) {
            return;
        }
        String strA = yp.a(identifier, context, (j) null);
        this.j.putAll(JsonUtils.tryToStringMap(StringUtils.isValidString(strA) ? JsonUtils.jsonObjectFromJsonString(strA, new JSONObject()) : new JSONObject()));
    }

    public void attachAppLovinSdk(j jVar) {
        this.l = jVar;
        if (StringUtils.isValidString(this.f)) {
            jVar.k0().a(Arrays.asList(this.f.split(",")));
            this.f = null;
        }
        if (this.g != null) {
            jVar.I();
            if (n.a()) {
                jVar.I().a("AppLovinSdkSettings", "Setting user id: " + this.g);
            }
            jVar.o0().a(this.g);
            this.g = null;
        }
    }

    public Map<String, String> getExtraParameters() {
        Map<String, String> map;
        synchronized (this.j) {
            map = CollectionUtils.map(this.j);
        }
        return map;
    }

    @Deprecated
    public List<String> getInitializationAdUnitIds() {
        return this.i;
    }

    public AppLovinTermsAndPrivacyPolicyFlowSettings getTermsAndPrivacyPolicyFlowSettings() {
        return this.k;
    }

    @Deprecated
    public List<String> getTestDeviceAdvertisingIds() {
        return this.h;
    }

    public String getUserIdentifier() {
        j jVar = this.l;
        return jVar == null ? this.g : jVar.o0().c();
    }

    public boolean isCreativeDebuggerEnabled() {
        return this.c;
    }

    @Deprecated
    public boolean isExceptionHandlerEnabled() {
        return this.d;
    }

    public boolean isMuted() {
        return this.b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.a;
    }

    public void setCreativeDebuggerEnabled(boolean z) {
        n.e("AppLovinSdkSettings", "setCreativeDebuggerEnabled(creativeDebuggerEnabled=" + z + ")");
        if (this.c == z) {
            return;
        }
        this.c = z;
        j jVar = this.l;
        if (jVar == null) {
            return;
        }
        if (z) {
            jVar.v().l();
        } else {
            jVar.v().k();
        }
    }

    @Deprecated
    public void setExceptionHandlerEnabled(boolean z) {
        n.e("AppLovinSdkSettings", "setExceptionHandlerEnabled(exceptionHandlerEnabled=" + z + ")");
        this.d = z;
    }

    public void setExtraParameter(String str, String str2) {
        n.e("AppLovinSdkSettings", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        if (TextUtils.isEmpty(str)) {
            n.h("AppLovinSdkSettings", "Failed to set extra parameter for null or empty key: " + str);
            return;
        }
        String strTrim = str2 != null ? str2.trim() : null;
        if ("test_mode_network".equalsIgnoreCase(str)) {
            if (this.l == null) {
                this.f = strTrim;
            } else if (StringUtils.isValidString(strTrim)) {
                this.l.k0().a(Arrays.asList(strTrim.split(",")));
            } else {
                this.l.k0().a((String) null);
            }
        } else if ("fan".equals(str) || "esc".equals(str)) {
            if (!this.m.startsWith("com.unity.")) {
                return;
            }
        } else if ("disable_all_logs".equals(str)) {
            n.a(Boolean.parseBoolean(strTrim));
        } else if ("package_name_override".equals(str)) {
            k.b(strTrim);
        }
        this.j.put(str, strTrim);
    }

    @Deprecated
    public void setInitializationAdUnitIds(List<String> list) {
        n.e("AppLovinSdkSettings", "setInitializationAdUnitIds(initializationAdUnitIds=" + list + ")");
        if (list == null) {
            this.i = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (StringUtils.isValidString(str) && str.length() > 0) {
                if (str.length() == 16) {
                    arrayList.add(str);
                } else {
                    n.h("AppLovinSdkSettings", "Unable to set initialization ad unit id (" + str + ") - please make sure it is in the format of XXXXXXXXXXXXXXXX");
                }
            }
        }
        this.i = arrayList;
    }

    public void setMuted(boolean z) {
        n.e("AppLovinSdkSettings", "setMuted(muted=" + z + ")");
        this.b = z;
    }

    public void setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(boolean z) {
        n.e("AppLovinSdkSettings", "setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(shouldFailAdDisplayIfDontKeepActivitiesIsEnabled=" + z + ")");
        this.e = z;
    }

    @Deprecated
    public void setTestDeviceAdvertisingIds(List<String> list) {
        n.e("AppLovinSdkSettings", "setTestDeviceAdvertisingIds(testDeviceAdvertisingIds=" + list + ")");
        if (list == null) {
            this.h = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (str == null || str.length() != 36) {
                n.h("AppLovinSdkSettings", "Unable to set test device advertising id (" + str + ") - please make sure it is in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
            } else {
                arrayList.add(str);
            }
        }
        this.h = arrayList;
    }

    public void setUserIdentifier(String str) {
        n.e("AppLovinSdkSettings", "setUserIdentifier(userIdentifier=" + str + ")");
        if (StringUtils.isValidString(str) && str.length() > yp.b(8)) {
            n.h("AppLovinSdk", "Provided user id longer than supported (" + str.length() + " bytes, " + yp.b(8) + " maximum)");
        }
        j jVar = this.l;
        if (jVar == null) {
            this.g = str;
            return;
        }
        jVar.I();
        if (n.a()) {
            this.l.I().a("AppLovinSdkSettings", "Setting user id: " + str);
        }
        this.l.o0().a(str);
    }

    public void setVerboseLogging(boolean z) {
        n.e("AppLovinSdkSettings", "setVerboseLogging(isVerboseLoggingEnabled=" + z + ")");
        if (!yp.k()) {
            this.a = z;
            return;
        }
        n.h("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already.");
        if (yp.k(null) != z) {
            n.h("AppLovinSdkSettings", "Attempted to programmatically set verbose logging flag to value different from value configured in Android Manifest.");
        }
    }

    public boolean shouldFailAdDisplayIfDontKeepActivitiesIsEnabled() {
        return this.e;
    }

    public String toString() {
        return "AppLovinSdkSettings{isVerboseLoggingEnabled=" + this.a + ", muted=" + this.b + ", testDeviceAdvertisingIds=" + this.h.toString() + ", initializationAdUnitIds=" + this.i.toString() + ", creativeDebuggerEnabled=" + this.c + ", exceptionHandlerEnabled=" + this.d + '}';
    }
}
