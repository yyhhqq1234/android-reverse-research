package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.applovin.impl.a4;
import com.applovin.impl.ba;
import com.applovin.impl.ca;
import com.applovin.impl.d4;
import com.applovin.impl.e4;
import com.applovin.impl.em;
import com.applovin.impl.fc;
import com.applovin.impl.jn;
import com.applovin.impl.l0;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.sr;
import com.applovin.impl.tm;
import com.applovin.impl.tp;
import com.applovin.impl.uj;
import com.applovin.impl.v;
import com.applovin.impl.vi;
import com.applovin.impl.wh;
import com.applovin.impl.wp;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import com.unity3d.services.core.device.MimeTypes;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.md;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class k {
    private static String i;
    private static final AtomicReference j = new AtomicReference();
    private static final AtomicReference k = new AtomicReference();
    private final j a;
    private final n b;
    private final Context c;
    private final Map d;
    private final Map f;
    private boolean g;
    private final Object e = new Object();
    private final AtomicReference h = new AtomicReference();

    class a implements em.a {
        a() {
        }

        @Override // com.applovin.impl.em.a
        public void a(l0.a aVar) {
            k.j.set(aVar);
        }
    }

    public static class b {
        public final String a;
        public final int b;

        public b(String str, int i) {
            this.a = str;
            this.b = i;
        }
    }

    public static class c {
        public int a = -1;
        public int b = -1;
        public Boolean c = null;
    }

    protected k(j jVar) {
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = jVar;
        this.b = jVar.I();
        this.c = j.m();
        this.d = z();
        this.f = y();
    }

    private double A() {
        return Math.round((((double) TimeZone.getDefault().getOffset(new Date().getTime())) * 10.0d) / 3600000.0d) / 10.0d;
    }

    private Map F() {
        return yp.a(a(null, true, false));
    }

    private JSONArray I() {
        if (z3.f()) {
            return CollectionUtils.toJSONArray(Build.SUPPORTED_ABIS);
        }
        JSONArray jSONArray = new JSONArray();
        JsonUtils.putStringIfValid(jSONArray, Build.CPU_ABI);
        JsonUtils.putStringIfValid(jSONArray, Build.CPU_ABI2);
        return jSONArray;
    }

    private boolean J() {
        try {
            return b() || c();
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean K() {
        ConnectivityManager connectivityManager;
        if (z3.h() && (connectivityManager = (ConnectivityManager) this.c.getSystemService("connectivity")) != null) {
            try {
                return connectivityManager.getRestrictBackgroundStatus() == 3;
            } catch (Throwable th) {
                this.a.I();
                if (n.a()) {
                    this.a.I().a("DataCollector", "Unable to collect constrained network info.", th);
                }
            }
        }
        return false;
    }

    private Boolean L() {
        if (z3.i()) {
            return Boolean.valueOf(this.c.getResources().getConfiguration().isScreenHdr());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        this.h.set(o());
    }

    private String a(int i2) {
        if (i2 == 0) {
            return "landscape_right";
        }
        if (i2 == 1) {
            return "portrait_upside_down";
        }
        if (i2 != 2) {
            return i2 != 3 ? "unknown" : y8.h.D;
        }
        return "landscape_left";
    }

    private String b(int i2) {
        if (i2 == 0) {
            return y8.h.D;
        }
        if (i2 == 1) {
            return "landscape_right";
        }
        if (i2 != 2) {
            return i2 != 3 ? "unknown" : "landscape_left";
        }
        return "portrait_upside_down";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        try {
            String strD = D();
            if (StringUtils.isValidString(strD)) {
                this.a.I();
                if (n.a()) {
                    this.a.I().a("DataCollector", "Successfully retrieved bid token");
                }
                fc.a(appLovinBidTokenCollectionListener, strD);
                return;
            }
            this.a.I();
            if (n.a()) {
                this.a.I().b("DataCollector", "Empty bid token");
            }
            fc.b(appLovinBidTokenCollectionListener, "Empty bid token");
        } catch (Throwable th) {
            if (n.a()) {
                this.b.a("DataCollector", "Failed to collect bid token", th);
            }
            this.a.D().a("DataCollector", "collectBidToken", th);
            fc.b(appLovinBidTokenCollectionListener, "Failed to collect bid token");
        }
    }

    private int c(String str) {
        try {
            return Settings.Secure.getInt(this.c.getContentResolver(), str);
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:108:0x01b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:112:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:114:0x01c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:118:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:120:0x01df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:106:0x01aa, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:112:0x01c1, please report this as an issue */
    private long d() {
        long j2;
        int iC;
        int iC2;
        int iC3;
        long j3;
        long j4;
        long j5;
        List listAsList = Arrays.asList(StringUtils.emptyIfNull(Settings.Secure.getString(this.c.getContentResolver(), "enabled_accessibility_services")).split(":"));
        long j6 = listAsList.contains("AccessibilityMenuService") ? 256L : 0L;
        if (listAsList.contains("SelectToSpeakService")) {
            j6 |= 512;
        }
        if (listAsList.contains("SoundAmplifierService")) {
            j6 |= 2;
        }
        if (listAsList.contains("SpeechToTextAccessibilityService")) {
            j6 |= 128;
        }
        if (listAsList.contains("SwitchAccessService")) {
            j6 |= 4;
        }
        if ((this.c.getResources().getConfiguration().uiMode & 48) == 32) {
            j6 |= 1024;
        }
        if (a("accessibility_enabled")) {
            j6 |= 8;
        }
        if (a("touch_exploration_enabled")) {
            j6 |= 16;
        }
        if (z3.f()) {
            if (a("accessibility_display_inversion_enabled")) {
                j6 |= 32;
            }
            if (a("skip_first_use_hints")) {
                j6 |= 64;
            }
        }
        if (a("lock_screen_allow_remote_input")) {
            j6 |= 2048;
        }
        if (a("enabled_accessibility_audio_description_by_default")) {
            j6 |= 4096;
        }
        if (a("accessibility_shortcut_on_lock_screen")) {
            j6 |= 8192;
        }
        if (a("wear_talkback_enabled")) {
            j6 |= 16384;
        }
        if (a("hush_gesture_used")) {
            j6 |= 32768;
        }
        if (a("high_text_contrast_enabled")) {
            j6 |= 65536;
        }
        if (a("accessibility_display_magnification_enabled")) {
            j6 |= 131072;
        }
        if (a("accessibility_display_magnification_navbar_enabled")) {
            j6 |= 262144;
        }
        if (a("accessibility_captioning_enabled")) {
            j6 |= 524288;
        }
        if (a("accessibility_display_daltonizer_enabled")) {
            j6 |= 1048576;
        }
        if (a("accessibility_autoclick_enabled")) {
            j6 |= 2097152;
        }
        if (a("accessibility_large_pointer_icon")) {
            j6 |= 4194304;
        }
        if (a("reduce_bright_colors_activated")) {
            j6 |= 8388608;
        }
        if (a("reduce_bright_colors_persist_across_reboots")) {
            j6 |= 16777216;
        }
        if (a("tty_mode_enabled")) {
            j6 |= 33554432;
        }
        if (a("rtt_calling_mode")) {
            j6 |= 67108864;
        }
        if (a("accessibility_floating_menu_fade_enabled")) {
            j6 |= 134217728;
        }
        if (a("accessibility_show_window_magnification_prompt")) {
            j6 |= 268435456;
        }
        if (a("accessibility_floating_menu_migration_tooltip_prompt")) {
            j6 |= 536870912;
        }
        int iC4 = c("accessibility_magnification_mode");
        if (iC4 == 0) {
            j2 = 1073741824;
        } else if (iC4 == 1) {
            j2 = 2147483648L;
        } else {
            if (iC4 != 2) {
                if (iC4 == 3) {
                    j2 = 8589934592L;
                }
                iC = c("accessibility_button_mode");
                if (iC == 0) {
                    j5 = iC == 1 ? 34359738368L : 17179869184L;
                    iC2 = c("accessibility_floating_menu_size");
                    if (iC2 == 0) {
                        j4 = iC2 == 1 ? 137438953472L : 68719476736L;
                        iC3 = c("accessibility_floating_menu_icon_type");
                        if (iC3 == 0) {
                            j3 = 274877906944L;
                        } else {
                            if (iC3 == 1) {
                                return j6;
                            }
                            j3 = 549755813888L;
                        }
                        return j6 | j3;
                    }
                    j6 |= j4;
                    iC3 = c("accessibility_floating_menu_icon_type");
                    if (iC3 == 0) {
                        j3 = 274877906944L;
                    } else {
                        if (iC3 == 1) {
                            return j6;
                        }
                        j3 = 549755813888L;
                    }
                    return j6 | j3;
                }
                j6 |= j5;
                iC2 = c("accessibility_floating_menu_size");
                if (iC2 == 0) {
                    if (iC2 == 1) {
                    }
                    iC3 = c("accessibility_floating_menu_icon_type");
                    if (iC3 == 0) {
                        j3 = 274877906944L;
                    } else {
                        if (iC3 == 1) {
                            return j6;
                        }
                        j3 = 549755813888L;
                    }
                    return j6 | j3;
                }
                j6 |= j4;
                iC3 = c("accessibility_floating_menu_icon_type");
                if (iC3 == 0) {
                    j3 = 274877906944L;
                } else {
                    if (iC3 == 1) {
                        return j6;
                    }
                    j3 = 549755813888L;
                }
                return j6 | j3;
            }
            j2 = 4294967296L;
        }
        j6 |= j2;
        iC = c("accessibility_button_mode");
        if (iC == 0) {
            if (iC == 1) {
            }
            iC2 = c("accessibility_floating_menu_size");
            if (iC2 == 0) {
                if (iC2 == 1) {
                }
                iC3 = c("accessibility_floating_menu_icon_type");
                if (iC3 == 0) {
                    j3 = 274877906944L;
                } else {
                    if (iC3 == 1) {
                        return j6;
                    }
                    j3 = 549755813888L;
                }
                return j6 | j3;
            }
            j6 |= j4;
            iC3 = c("accessibility_floating_menu_icon_type");
            if (iC3 == 0) {
                j3 = 274877906944L;
            } else {
                if (iC3 == 1) {
                    return j6;
                }
                j3 = 549755813888L;
            }
            return j6 | j3;
        }
        j6 |= j5;
        iC2 = c("accessibility_floating_menu_size");
        if (iC2 == 0) {
            if (iC2 == 1) {
            }
            iC3 = c("accessibility_floating_menu_icon_type");
            if (iC3 == 0) {
                j3 = 274877906944L;
            } else {
                if (iC3 == 1) {
                    return j6;
                }
                j3 = 549755813888L;
            }
            return j6 | j3;
        }
        j6 |= j4;
        iC3 = c("accessibility_floating_menu_icon_type");
        if (iC3 == 0) {
            j3 = 274877906944L;
        } else {
            if (iC3 == 1) {
                return j6;
            }
            j3 = 549755813888L;
        }
        return j6 | j3;
    }

    private c h() {
        c cVar = new c();
        Intent intentRegisterReceiver = this.c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("level", -1) : -1;
        int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : -1;
        if (intExtra <= 0 || intExtra2 <= 0) {
            cVar.b = -1;
        } else {
            cVar.b = (int) ((intExtra / intExtra2) * 100.0f);
        }
        cVar.a = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("status", -1) : -1;
        if (z3.d()) {
            cVar.c = Boolean.valueOf(Settings.Global.getInt(this.c.getContentResolver(), "stay_on_while_plugged_in", -1) > 0);
        } else {
            cVar.c = Boolean.valueOf(((intentRegisterReceiver.getIntExtra("plugged", -1) & 1) | 14) > 0);
        }
        return cVar;
    }

    private String i() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            return telephonyManager.getNetworkOperatorName();
        } catch (Throwable th) {
            if (!n.a()) {
                return "";
            }
            this.b.a("DataCollector", "Unable to collect carrier", th);
            return "";
        }
    }

    private String k() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH) : "";
    }

    private String l() {
        Point pointB = z3.b(this.c);
        int i2 = pointB.x;
        int i3 = pointB.y;
        int iC = yp.c(this.c);
        return ((i2 <= i3 || !(iC == 0 || iC == 2)) && (i3 <= i2 || !(iC == 1 || iC == 3))) ? b(iC) : a(iC);
    }

    private String n() {
        if (!z3.h()) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            LocaleList locales = this.c.getResources().getConfiguration().getLocales();
            for (int i2 = 0; i2 < locales.size(); i2++) {
                sb.append(locales.get(i2));
                sb.append(",");
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    private Integer o() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            return null;
        }
        try {
            return Integer.valueOf((int) (audioManager.getStreamVolume(3) * ((Float) this.a.a(sj.Z3)).floatValue()));
        } catch (Throwable th) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("DataCollector", "Unable to collect device volume", th);
            }
            return null;
        }
    }

    private float p() {
        try {
            return Settings.System.getFloat(this.c.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e) {
            if (!n.a()) {
                return -1.0f;
            }
            this.b.a("DataCollector", "Error collecting font scale", e);
            return -1.0f;
        }
    }

    private boolean q() {
        SensorManager sensorManager = (SensorManager) this.c.getSystemService("sensor");
        return (sensorManager == null || sensorManager.getDefaultSensor(4) == null) ? false : true;
    }

    private Map r() {
        HashMap map = new HashMap();
        CollectionUtils.putIntegerIfValid("IABTCF_gdprApplies", this.a.j0().g(), map);
        CollectionUtils.putStringIfValid(AndroidTcfDataSource.TCF_TCSTRING_KEY, this.a.j0().k(), map);
        CollectionUtils.putStringIfValid("IABTCF_AddtlConsent", this.a.j0().c(), map);
        return map;
    }

    private Boolean s() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isMusicActive());
    }

    private Boolean t() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isSpeakerphoneOn());
    }

    private String u() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            String networkOperator = telephonyManager.getNetworkOperator();
            return networkOperator.substring(0, Math.min(3, networkOperator.length()));
        } catch (Throwable th) {
            if (!n.a()) {
                return "";
            }
            this.b.a("DataCollector", "Unable to collect mobile country code", th);
            return "";
        }
    }

    private String v() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        try {
            String networkOperator = telephonyManager.getNetworkOperator();
            return networkOperator.substring(Math.min(3, networkOperator.length()));
        } catch (Throwable th) {
            if (!n.a()) {
                return "";
            }
            this.b.a("DataCollector", "Unable to collect mobile network code", th);
            return "";
        }
    }

    private String x() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (z3.g()) {
            for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                sb.append(audioDeviceInfo.getType());
                sb.append(",");
            }
        } else {
            if (audioManager.isWiredHeadsetOn()) {
                sb.append("3,");
            }
            if (audioManager.isBluetoothScoOn()) {
                sb.append("7,");
            }
            if (audioManager.isBluetoothA2dpOn()) {
                sb.append(8);
            }
        }
        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
            sb.deleteCharAt(sb.length() - 1);
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string) && n.a()) {
            this.b.a("DataCollector", "No sound outputs detected");
        }
        return string;
    }

    private Map y() {
        PackageInfo packageInfo;
        HashMap map = new HashMap();
        PackageManager packageManager = this.c.getPackageManager();
        ApplicationInfo applicationInfo = this.c.getApplicationInfo();
        long jLastModified = new File(applicationInfo.sourceDir).lastModified();
        String installerPackageName = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.c.getPackageName(), 0);
            try {
                installerPackageName = packageManager.getInstallerPackageName(applicationInfo.packageName);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            packageInfo = null;
        }
        map.put("app_name", packageManager.getApplicationLabel(applicationInfo));
        map.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        map.put("app_version_code", Integer.valueOf(packageInfo != null ? packageInfo.versionCode : -1));
        if (installerPackageName == null) {
            installerPackageName = "";
        }
        map.put("installer_name", installerPackageName);
        map.put("tg", wp.a(this.a));
        map.put("debug", Boolean.valueOf(yp.c(this.a)));
        map.put("ia", Long.valueOf(jLastModified));
        map.put("alts_ms", Long.valueOf(j.l()));
        map.put("j8", Boolean.valueOf(j.w0()));
        map.put("ps_tpg", Boolean.valueOf(wh.d(this.c)));
        map.put("ps_apg", Boolean.valueOf(wh.b(this.c)));
        map.put("ps_capg", Boolean.valueOf(wh.c(this.c)));
        map.put("ps_aipg", Boolean.valueOf(wh.a(this.c)));
        j jVar = this.a;
        uj ujVar = uj.f;
        Long l = (Long) jVar.a(ujVar);
        if (l != null) {
            map.put("ia_v2", l);
        } else {
            this.a.b(ujVar, Long.valueOf(jLastModified));
        }
        map.put("sdk_version", AppLovinSdk.VERSION);
        map.put("omid_sdk_version", this.a.V().c());
        CollectionUtils.putStringIfValid("ad_review_sdk_version", v.b(), map);
        map.put("api_did", this.a.a(sj.g));
        map.put("first_install_v3_ms", packageInfo != null ? Long.valueOf(packageInfo.firstInstallTime) : "");
        map.put("target_sdk", Integer.valueOf(applicationInfo.targetSdkVersion));
        if (z3.h()) {
            map.put("min_sdk", Integer.valueOf(applicationInfo.minSdkVersion));
        }
        map.put("epv", Integer.valueOf(yp.f()));
        if (this.a.z0()) {
            map.put("unity_version", yp.a(this.a.f0()));
        }
        return map;
    }

    private Map z() {
        HashMap map = new HashMap(35);
        map.put("api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("brand", Build.MANUFACTURER);
        map.put("brand_name", Build.BRAND);
        map.put("hardware", Build.HARDWARE);
        map.put("sim", Boolean.valueOf(AppLovinSdkUtils.isEmulator()));
        map.put("aida", Boolean.valueOf(l0.a()));
        map.put("locale", Locale.getDefault().toString());
        map.put(md.v, Build.MODEL);
        map.put(md.y, Build.VERSION.RELEASE);
        map.put(md.A, w());
        map.put("revision", Build.DEVICE);
        map.put("tz_offset", Double.valueOf(A()));
        map.put("gy", Boolean.valueOf(q()));
        map.put("country_code", k());
        map.put("mcc", u());
        map.put("mnc", v());
        map.put(md.y0, i());
        map.put("tv", Boolean.valueOf(AppLovinSdkUtils.isTv(this.c)));
        map.put("pc", Integer.valueOf(Runtime.getRuntime().availableProcessors()));
        map.put("hdr", L());
        map.put("supported_abis", I());
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            map.put("adns", Float.valueOf(displayMetrics.density));
            map.put("adnsd", Integer.valueOf(displayMetrics.densityDpi));
            map.put("xdpi", Float.valueOf(displayMetrics.xdpi));
            map.put("ydpi", Float.valueOf(displayMetrics.ydpi));
            z3.a aVarA = z3.a(this.c, this.a);
            if (aVarA != null) {
                map.put("tl_cr", Integer.valueOf(aVarA.c()));
                map.put("tr_cr", Integer.valueOf(aVarA.d()));
                map.put("bl_cr", Integer.valueOf(aVarA.a()));
                map.put("br_cr", Integer.valueOf(aVarA.b()));
            }
        }
        map.put("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        map.put("tbalsi_ms", Long.valueOf(this.a.H() - j.l()));
        CollectionUtils.putBooleanIfValid("psase", Boolean.valueOf(wh.e(this.c)), map);
        CollectionUtils.putStringIfValid("process_name", yp.b(this.c), map);
        CollectionUtils.putBooleanIfValid("is_main_process", yp.g(this.c), map);
        try {
            PackageInfo packageInfo = this.c.getPackageManager().getPackageInfo("com.android.vending", 0);
            map.put("ps_version", packageInfo.versionName);
            map.put("ps_version_code", Integer.valueOf(packageInfo.versionCode));
        } catch (Throwable unused) {
            map.put("ps_version", "");
            map.put("ps_version_code", -1);
        }
        CollectionUtils.putBooleanIfValid("play_store_disabled", tp.a(this.c), map);
        a(map);
        return map;
    }

    public Map B() {
        Map map = CollectionUtils.map(this.f);
        String str = StringUtils.isValidString(i) ? i : this.c.getApplicationInfo().packageName;
        map.put(y8.h.V, str);
        map.put("vz", StringUtils.toShortSHA1Hash(str));
        map.put("first_install", Boolean.valueOf(this.a.t0()));
        map.put("first_install_v2", Boolean.valueOf(!this.a.r0()));
        map.put("test_ads", Boolean.valueOf(this.g));
        map.put("muted", Boolean.valueOf(this.a.f0().isMuted()));
        if (((Boolean) this.a.a(sj.B3)).booleanValue()) {
            CollectionUtils.putStringIfValid("cuid", this.a.o0().c(), map);
        }
        if (((Boolean) this.a.a(sj.E3)).booleanValue()) {
            map.put("compass_random_token", this.a.r());
        }
        if (((Boolean) this.a.a(sj.G3)).booleanValue()) {
            map.put("applovin_random_token", this.a.Z());
        }
        map.putAll(r());
        if (this.a.Y() != null) {
            CollectionUtils.putJsonArrayIfValid("ps_topics", this.a.Y().a(), map);
        }
        return map;
    }

    public b C() {
        return (b) k.get();
    }

    protected String D() {
        String strEncodeToString = Base64.encodeToString(new JSONObject(F()).toString().getBytes(Charset.defaultCharset()), 2);
        return ((Boolean) this.a.a(sj.c5)).booleanValue() ? vi.b(strEncodeToString, yp.a(this.a), vi.a.a(((Integer) this.a.a(sj.d5)).intValue()), this.a.a0(), this.a) : strEncodeToString;
    }

    public String E() {
        ActivityManager activityManager = (ActivityManager) this.c.getSystemService("activity");
        if (activityManager == null) {
            return null;
        }
        return activityManager.getDeviceConfigurationInfo().getGlEsVersion();
    }

    public Map G() {
        return CollectionUtils.map(this.f);
    }

    public Map H() {
        return CollectionUtils.map(this.d);
    }

    public boolean M() {
        return this.g;
    }

    public void O() {
        tm tmVarI0 = this.a.i0();
        em emVar = new em(this.a, new a());
        tm.b bVar = tm.b.OTHER;
        tmVarI0.a((yl) emVar, bVar);
        this.a.i0().a((yl) new jn(this.a, true, "setDeviceVolume", new Runnable() { // from class: com.applovin.impl.sdk.k$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.N();
            }
        }), bVar);
    }

    public void P() {
        synchronized (this.e) {
            a(this.d);
        }
    }

    public Map e() {
        HashMap map = new HashMap();
        map.put("sc", this.a.a(sj.m));
        map.put("sc2", this.a.a(sj.n));
        map.put("sc3", this.a.a(sj.o));
        map.put("server_installed_at", this.a.a(sj.p));
        CollectionUtils.putStringIfValid("persisted_data", (String) this.a.a(uj.H), map);
        return map;
    }

    public Map j() {
        d4.d dVarA = this.a.t().a();
        if (dVarA == null) {
            return null;
        }
        HashMap map = new HashMap(4);
        map.put("lrm_ts_ms", String.valueOf(dVarA.c()));
        map.put("lrm_url", dVarA.d());
        map.put("lrm_ct_ms", String.valueOf(dVarA.a()));
        map.put("lrm_rs", String.valueOf(dVarA.b()));
        return map;
    }

    public Map m() {
        return a(false);
    }

    public String w() {
        return AppLovinSdkUtils.isFireOS(this.c) ? "fireos" : "android";
    }

    private boolean c() {
        String[] strArr = {"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"};
        for (int i2 = 0; i2 < 9; i2++) {
            if (new File(d(strArr[i2])).exists()) {
                return true;
            }
        }
        return false;
    }

    private String g() {
        int orientation = AppLovinSdkUtils.getOrientation(this.c);
        if (orientation == 1) {
            return y8.h.D;
        }
        return orientation == 2 ? y8.h.C : "none";
    }

    protected void a(final AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        this.a.i0().a((yl) new jn(this.a, ((Boolean) this.a.a(sj.M3)).booleanValue(), "DataCollector", new Runnable() { // from class: com.applovin.impl.sdk.k$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(appLovinBidTokenCollectionListener);
            }
        }), tm.b.CORE);
    }

    public Map a(Map map, boolean z, boolean z2) {
        HashMap map2 = new HashMap(64);
        Map mapA = a(z);
        Map mapB = B();
        Map mapJ = j();
        Map mapC0 = this.a.c0();
        if (z2) {
            map2.put("device_info", mapA);
            map2.put("app_info", mapB);
            if (mapJ != null) {
                map2.put("connection_info", mapJ);
            }
            if (map != null) {
                map2.put("ad_info", map);
            }
            if (!CollectionUtils.isEmpty(mapC0)) {
                map2.put("segments", mapC0);
            }
        } else {
            map2.putAll(mapA);
            map2.putAll(mapB);
            if (mapJ != null) {
                map2.putAll(mapJ);
            }
            if (map != null) {
                map2.putAll(map);
            }
            if (!CollectionUtils.isEmpty(mapC0)) {
                map2.putAll(mapC0);
            }
        }
        map2.put("accept", "custom_size,launch_app,video");
        map2.put("format", "json");
        CollectionUtils.putStringIfValid("mediation_provider", this.a.N(), map2);
        CollectionUtils.putStringIfValid("mediation_provider_v2", this.a.y(), map2);
        CollectionUtils.putStringIfValid("plugin_version", (String) this.a.a(sj.K3), map2);
        CollectionUtils.putLongIfValid("tssf_ms", Long.valueOf(this.a.l0()), map2);
        if (!((Boolean) this.a.a(sj.a5)).booleanValue()) {
            map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
        }
        map2.putAll(e());
        if (((Boolean) this.a.a(sj.B4)).booleanValue()) {
            ca caVarC = this.a.C();
            map2.put("li", Long.valueOf(caVarC.b(ba.e)));
            map2.put("si", Long.valueOf(caVarC.b(ba.h)));
            map2.put("mad", Long.valueOf(caVarC.b(ba.f)));
            map2.put("msad", Long.valueOf(caVarC.b(ba.i)));
            map2.put("pf", Long.valueOf(caVarC.b(ba.m)));
            map2.put("mpf", Long.valueOf(caVarC.b(ba.t)));
            map2.put("gpf", Long.valueOf(caVarC.b(ba.n)));
            map2.put("asoac", Long.valueOf(caVarC.b(ba.r)));
        }
        map2.put("rid", UUID.randomUUID().toString());
        return map2;
    }

    public static void b(String str) {
        if (StringUtils.isValidString(j.m().getPackageManager().getInstallerPackageName(j.m().getApplicationInfo().packageName))) {
            return;
        }
        i = str;
    }

    private boolean b() {
        String str = Build.TAGS;
        return str != null && str.contains(d("lz}$blpz"));
    }

    public Map a(boolean z) {
        Map map;
        synchronized (this.e) {
            map = CollectionUtils.map(this.d);
        }
        return a(map, z);
    }

    private void a(Map map) {
        if (((Boolean) this.a.a(sj.T3)).booleanValue() && !map.containsKey("af")) {
            map.put("af", Long.valueOf(d()));
        }
        if (((Boolean) this.a.a(sj.U3)).booleanValue() && !map.containsKey("font")) {
            map.put("font", Float.valueOf(p()));
        }
        if (((Boolean) this.a.a(sj.b4)).booleanValue() && yp.d(this.a)) {
            sr.a(this.a);
        }
        if (((Boolean) this.a.a(sj.p4)).booleanValue()) {
            sr.b(this.a);
        }
        if (((Boolean) this.a.a(sj.a4)).booleanValue() && !map.containsKey("sua")) {
            map.put("sua", System.getProperty("http.agent"));
        }
        if (((Boolean) this.a.a(sj.W3)).booleanValue() && !map.containsKey("network_restricted")) {
            map.put("network_restricted", Boolean.valueOf(K()));
        }
        if (((Boolean) this.a.a(sj.f4)).booleanValue()) {
            boolean z = true;
            boolean z2 = this.c.getResources().getConfiguration().keyboard == 2;
            boolean zHasSystemFeature = this.c.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE");
            boolean zHasSystemFeature2 = this.c.getPackageManager().hasSystemFeature("android.hardware.type.pc");
            if (!z2 || (!zHasSystemFeature && !zHasSystemFeature2)) {
                z = false;
            }
            map.put("is_pc", Boolean.valueOf(z));
        }
        if (((Boolean) this.a.a(sj.r4)).booleanValue()) {
            CollectionUtils.putStringIfValid("oglv", E(), map);
        }
    }

    private Map a(Map map, boolean z) {
        l0.a aVarF;
        PowerManager powerManager;
        Map map2 = CollectionUtils.map(map);
        Point pointB = z3.b(this.c);
        map2.put("dx", Integer.valueOf(pointB.x));
        map2.put("dy", Integer.valueOf(pointB.y));
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            map2.put("screen_size_in", Double.valueOf(Math.sqrt(Math.pow(pointB.x, 2.0d) + Math.pow(pointB.y, 2.0d)) / ((double) displayMetrics.xdpi)));
        }
        map2.put("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.c)));
        if (z) {
            aVarF = (l0.a) j.get();
            if (aVarF != null) {
                O();
            } else if (yp.h()) {
                aVarF = new l0.a();
                map2.put("inc", Boolean.TRUE);
            } else {
                aVarF = f();
            }
        } else {
            aVarF = f();
        }
        String strA = aVarF.a();
        if (StringUtils.isValidString(strA)) {
            map2.put("idfa", strA);
        }
        map2.put("dnt", Boolean.valueOf(aVarF.c()));
        map2.put("dnt_code", aVarF.b().b());
        b bVar = (b) k.get();
        if (((Boolean) this.a.a(sj.A3)).booleanValue() && bVar != null) {
            map2.put("idfv", bVar.a);
            map2.put("idfv_scope", Integer.valueOf(bVar.b));
        }
        Boolean boolB = a4.b().b(this.c);
        if (boolB != null) {
            map2.put("huc", boolB);
        }
        Boolean boolB2 = a4.c().b(this.c);
        if (boolB2 != null) {
            map2.put("aru", boolB2);
        }
        Boolean boolB3 = a4.a().b(this.c);
        if (boolB3 != null) {
            map2.put("dns", boolB3);
        }
        if (((Boolean) this.a.a(sj.N3)).booleanValue()) {
            c cVarH = h();
            CollectionUtils.putIntegerIfValid("act", Integer.valueOf(cVarH.a), map2);
            CollectionUtils.putIntegerIfValid("acm", Integer.valueOf(cVarH.b), map2);
            CollectionUtils.putBooleanIfValid("sowpie", cVarH.c, map2);
        }
        if (((Boolean) this.a.a(sj.V3)).booleanValue()) {
            map2.put("mtl", Integer.valueOf(this.a.e0().getLastTrimMemoryLevel()));
        }
        if (((Boolean) this.a.a(sj.Y3)).booleanValue()) {
            map2.put("adr", Boolean.valueOf(J()));
        }
        Integer numO = z ? (Integer) this.h.get() : o();
        if (numO != null) {
            map2.put("volume", numO);
        }
        CollectionUtils.putBooleanIfValid("ma", s(), map2);
        CollectionUtils.putBooleanIfValid("spo", t(), map2);
        CollectionUtils.putBooleanIfValid("aif", Boolean.valueOf(!this.a.e0().isApplicationPaused()), map2);
        CollectionUtils.putLongIfValid("af_ts_ms", Long.valueOf(this.a.e0().getAppEnteredForegroundTimeMillis()), map2);
        CollectionUtils.putLongIfValid("ab_ts_ms", Long.valueOf(this.a.e0().getAppEnteredBackgroundTimeMillis()), map2);
        try {
            map2.put("sb", Integer.valueOf((int) ((Settings.System.getInt(this.c.getContentResolver(), "screen_brightness") / 255.0f) * 100.0f)));
        } catch (Settings.SettingNotFoundException e) {
            if (n.a()) {
                this.b.a("DataCollector", "Unable to collect screen brightness", e);
            }
        }
        if (((Boolean) this.a.a(sj.b4)).booleanValue() && yp.d(this.a)) {
            sr.a(this.a);
            String strA2 = sr.a();
            if (StringUtils.isValidString(strA2)) {
                map2.put(md.U, strA2);
            }
        }
        if (((Boolean) this.a.a(sj.p4)).booleanValue()) {
            sr.b(this.a);
            CollectionUtils.putIntegerIfValid("wvvc", Integer.valueOf(sr.d()), map2);
            CollectionUtils.putStringIfValid("wvv", sr.c(), map2);
            CollectionUtils.putStringIfValid("wvpn", sr.b(), map2);
        }
        if (((Boolean) this.a.a(sj.P3)).booleanValue()) {
            try {
                map2.put(md.C0, Long.valueOf(Environment.getDataDirectory().getFreeSpace()));
                map2.put("tds", Long.valueOf(Environment.getDataDirectory().getTotalSpace()));
            } catch (Throwable th) {
                map2.put(md.C0, -1);
                map2.put("tds", -1);
                if (n.a()) {
                    this.b.a("DataCollector", "Unable to collect total & free space.", th);
                }
            }
        }
        if (((Boolean) this.a.a(sj.Q3)).booleanValue()) {
            ActivityManager.MemoryInfo memoryInfoA = yp.a((ActivityManager) this.c.getSystemService("activity"));
            if (memoryInfoA != null) {
                map2.put("fm", Long.valueOf(memoryInfoA.availMem));
                map2.put("tm", Long.valueOf(memoryInfoA.totalMem));
                map2.put("lmt", Long.valueOf(memoryInfoA.threshold));
                map2.put("lm", Boolean.valueOf(memoryInfoA.lowMemory));
            } else {
                map2.put("fm", -1);
                map2.put("tm", -1);
                map2.put("lmt", -1);
            }
        }
        if (((Boolean) this.a.a(sj.R3)).booleanValue() && z3.a("android.permission.READ_PHONE_STATE", this.c) && z3.h()) {
            map2.put("rat", Integer.valueOf(((TelephonyManager) this.c.getSystemService("phone")).getDataNetworkType()));
        }
        if (((Boolean) this.a.a(sj.O3)).booleanValue()) {
            String strX = x();
            if (!TextUtils.isEmpty(strX)) {
                map2.put("so", strX);
            }
        }
        map2.put("device_orientation", l());
        map2.put("orientation_lock", g());
        if (((Boolean) this.a.a(sj.S3)).booleanValue()) {
            map2.put("vs", Boolean.valueOf(yp.j()));
        }
        if (z3.f() && (powerManager = (PowerManager) this.c.getSystemService("power")) != null) {
            map2.put(md.H0, Integer.valueOf(powerManager.isPowerSaveMode() ? 1 : 0));
        }
        if (((Boolean) this.a.a(sj.d4)).booleanValue() && this.a.d0() != null) {
            map2.put("da", Float.valueOf(this.a.d0().a()));
        }
        if (((Boolean) this.a.a(sj.e4)).booleanValue() && this.a.d0() != null) {
            map2.put("dm", Float.valueOf(this.a.d0().b()));
        }
        map2.put("mute_switch", Integer.valueOf(this.a.o().a()));
        map2.put("network", e4.g(this.a));
        String strN = n();
        if (StringUtils.isValidString(strN)) {
            map2.put("kb", strN);
        }
        ArrayService arrayServiceN = this.a.n();
        if (arrayServiceN.isAppHubInstalled()) {
            if (arrayServiceN.getIsDirectDownloadEnabled() != null) {
                map2.put("ah_dd_enabled", arrayServiceN.getIsDirectDownloadEnabled());
            }
            map2.put("ah_sdk_version_code", Long.valueOf(arrayServiceN.getAppHubVersionCode()));
            map2.put("ah_random_user_token", StringUtils.emptyIfNull(arrayServiceN.getRandomUserToken()));
            map2.put("ah_sdk_package_name", StringUtils.emptyIfNull(arrayServiceN.getAppHubPackageName()));
        }
        return map2;
    }

    private String d(String str) {
        int length = str.length();
        int[] iArr = {11, 12, 10, 3, 2, 1, 15, 10, 15, 14};
        char[] cArr = new char[length];
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = str.charAt(i2);
            for (int i3 = 9; i3 >= 0; i3--) {
                cArr[i2] = (char) (cArr[i2] ^ iArr[i3]);
            }
        }
        return new String(cArr);
    }

    public static void a(l0.a aVar) {
        j.set(aVar);
    }

    public static void a(b bVar) {
        k.set(bVar);
    }

    private boolean a(String str) {
        return c(str) == 1;
    }

    public l0.a f() {
        List<String> testDeviceAdvertisingIds;
        l0.a aVarB = l0.b(this.c);
        if (aVarB == null) {
            return new l0.a();
        }
        if (((Boolean) this.a.a(sj.z3)).booleanValue()) {
            if (aVarB.c() && !((Boolean) this.a.a(sj.y3)).booleanValue()) {
                aVarB.a("");
            }
            j.set(aVarB);
        } else {
            aVarB = new l0.a();
        }
        if (this.a.x0().get()) {
            testDeviceAdvertisingIds = this.a.f0().getTestDeviceAdvertisingIds();
        } else {
            testDeviceAdvertisingIds = this.a.G() != null ? this.a.G().getTestDeviceAdvertisingIds() : null;
        }
        if (testDeviceAdvertisingIds != null) {
            String strA = aVarB.a();
            if (StringUtils.isValidString(strA)) {
                this.g = testDeviceAdvertisingIds.contains(strA);
            }
            b bVarC = C();
            String str = bVarC != null ? bVarC.a : null;
            if (StringUtils.isValidString(str)) {
                this.g = testDeviceAdvertisingIds.contains(str) | this.g;
            }
        } else {
            this.g = false;
        }
        return aVarB;
    }
}
