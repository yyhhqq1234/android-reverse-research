package org.json;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.core.device.MimeTypes;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import org.json.environment.ContextProvider;
import org.json.environment.IronSourceSharedPreferencesUtilities;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class qa implements oe, oe.a {
    private static final String A = "IABTCF_TCString";
    private static final String B = "IABTCF_AddtlConsent";
    private static final String i = "android";
    private static final String j = "com.google.android.gms.permission.AD_ID";
    private static final String k = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private static final String l = "com.google.android.gms.appset.AppSet";
    private static final String m = "com.google.android.gms.tasks.OnSuccessListener";
    private static final String n = "getAdvertisingIdInfo";
    private static final String o = "getClient";
    private static final String p = "getAppSetIdInfo";
    private static final String q = "addOnSuccessListener";
    private static final String r = "getId";
    private static final String s = "isLimitAdTrackingEnabled";
    private static final String t = "Mediation_Shared_Preferences";
    private static final String u = "supersonic_shared_preferen";
    private static final String v = "cachedUUID";
    private static final String w = "auid";
    private static final String x = "browser_user_agent";
    private static final String y = "browser_user_agent_time";
    private static final String z = "IABTCF_gdprApplies";
    private String b = null;
    private String c = null;
    private String d = "";
    private boolean e = false;
    private String f = "";
    private volatile String g;
    private volatile String h;

    class a implements InvocationHandler {
        a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            if (objArr == null) {
                return null;
            }
            try {
                if (objArr.length <= 0 || (obj2 = objArr[0]) == null) {
                    return null;
                }
                String string = obj2.getClass().getMethod(qa.r, new Class[0]).invoke(objArr[0], new Object[0]).toString();
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                qa.this.f = string;
                return null;
            } catch (Exception e) {
                l9.d().a(e);
                return null;
            }
        }
    }

    private String L(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objN = N(context);
        return objN.getClass().getMethod(r, new Class[0]).invoke(objN, new Object[0]).toString();
    }

    private void M(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = Class.forName(l);
        Object objInvoke = cls.getMethod(o, Context.class).invoke(cls, context);
        Object objInvoke2 = objInvoke.getClass().getMethod(p, new Class[0]).invoke(objInvoke, new Object[0]);
        Class<?> cls2 = Class.forName(m);
        objInvoke2.getClass().getMethod(q, cls2).invoke(objInvoke2, Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls2}, new a()));
    }

    private Object N(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = Class.forName(k);
        return cls.getMethod(n, Context.class).invoke(cls, context);
    }

    private String O(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objN = N(context);
        return String.valueOf(((Boolean) objN.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(objN, new Object[0])).booleanValue());
    }

    private String P(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, t, x, "");
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return "";
        }
    }

    private long Q(Context context) {
        try {
            return Long.parseLong(IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, t, y, String.valueOf(-1L)));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return -1L;
        }
    }

    private long a(File file) {
        StatFs statFs = new StatFs(file.getPath());
        return (statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong()) / 1048576;
    }

    private void a(Context context, String str) {
        try {
            IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, t, x, str);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void b(Context context, long j2) {
        try {
            IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, t, y, String.valueOf(j2));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private boolean b(String str) {
        try {
            String[] strArr = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};
            for (int i2 = 0; i2 < 8; i2++) {
                if (new File(strArr[i2] + str).exists()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            l9.d().a(e);
            return false;
        }
    }

    @Override // org.json.oe
    public String A(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getStringFromDefaultSharedPrefs(context, "IABTCF_TCString", null);
        } catch (Exception e) {
            l9.d().a(e);
            return null;
        }
    }

    @Override // org.json.oe
    public boolean B(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation", 0) != 1;
    }

    @Override // org.json.oe
    public String C(Context context) {
        return Locale.getDefault().toString();
    }

    @Override // org.json.oe
    public String D(Context context) {
        if (na.a.c()) {
            try {
                M(context);
                if (!TextUtils.isEmpty(this.f)) {
                    return this.f;
                }
            } catch (Exception e) {
                l9.d().a(e);
            }
        }
        return "";
    }

    @Override // org.json.oe
    public int E(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    @Override // org.json.oe
    public String F(Context context) throws Exception {
        return context.getResources().getConfiguration().locale.getCountry();
    }

    @Override // org.json.oe
    public boolean G(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("status", -1) : -1;
        return intExtra == 2 || intExtra == 5;
    }

    @Override // org.json.oe
    public String H(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getStringFromDefaultSharedPrefs(context, B, null);
        } catch (Exception e) {
            l9.d().a(e);
            return null;
        }
    }

    @Override // org.json.oe
    public int I(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @Override // org.json.oe
    public synchronized String J(Context context) {
        if (!TextUtils.isEmpty(this.b)) {
            return this.b;
        }
        if (IronSourceSharedPreferencesUtilities.getBooleanFromSharedPrefs(context, t, oe.a, true)) {
            String stringFromSharedPrefs = IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, t, v, "");
            if (TextUtils.isEmpty(stringFromSharedPrefs)) {
                String string = UUID.randomUUID().toString();
                this.b = string;
                IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, t, v, string);
            } else {
                this.b = stringFromSharedPrefs;
            }
        }
        return this.b;
    }

    @Override // org.json.oe
    public int K(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getRequestedOrientation();
        }
        return -1;
    }

    @Override // org.json.oe
    public int a() {
        return j();
    }

    @Override // org.json.oe
    public long a(String str) {
        return a(new File(str));
    }

    @Override // org.json.oe
    public String a(Context context) {
        String strO;
        try {
            if (!na.a.a()) {
                strO = O(context);
            } else {
                if (this.g == null) {
                    String strO2 = O(context);
                    if (TextUtils.isEmpty(strO2)) {
                        return strO2;
                    }
                    this.g = strO2;
                    return strO2;
                }
                strO = this.g;
            }
            return strO;
        } catch (Exception e) {
            l9.d().a(e);
            return null;
        }
    }

    @Override // com.ironsource.oe.a
    public void a(Context context, long j2) {
        if (context != null) {
            if (!new bu(new n9.a()).a(Q(context), j2)) {
                String strP = P(context);
                this.d = strP;
                this.e = !strP.isEmpty();
            }
            if (this.d.isEmpty()) {
                try {
                    String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
                    this.d = defaultUserAgent;
                    a(context, defaultUserAgent);
                    if (j2 > 0) {
                        b(context, System.currentTimeMillis());
                    }
                } catch (Exception e) {
                    l9.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }
    }

    @Override // org.json.oe
    public boolean a(Activity activity) {
        int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        return (systemUiVisibility | 4096) == systemUiVisibility || (systemUiVisibility | 2048) == systemUiVisibility;
    }

    @Override // org.json.oe
    public String b() {
        String id = TimeZone.getDefault().getID();
        return id != null ? id : "";
    }

    @Override // org.json.oe
    public String b(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage();
    }

    @Override // org.json.oe
    public boolean c() {
        try {
            return "mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable();
        } catch (Exception e) {
            l9.d().a(e);
            return false;
        }
    }

    @Override // org.json.oe
    public boolean c(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    @Override // org.json.oe
    public int d() {
        return Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    @Override // org.json.oe
    public boolean d(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "stay_on_while_plugged_in", 0) != 0;
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    @Override // org.json.oe
    public File e(Context context) {
        return context.getExternalCacheDir();
    }

    @Override // org.json.oe
    public String e() {
        return Build.MODEL;
    }

    @Override // org.json.oe
    public String f(Context context) {
        if (context == null) {
            return "";
        }
        int iK = K(context);
        if (iK != 0) {
            if (iK != 1) {
                if (iK != 11) {
                    if (iK != 12) {
                        switch (iK) {
                            case 6:
                            case 8:
                                break;
                            case 7:
                            case 9:
                                break;
                            default:
                                return "none";
                        }
                    }
                }
            }
            return y8.h.D;
        }
        return y8.h.C;
    }

    @Override // org.json.oe
    public boolean f() {
        return b(AndroidStaticDeviceInfoDataSource.BINARY_SU);
    }

    @Override // org.json.oe
    public String g() {
        return Build.MANUFACTURER;
    }

    @Override // org.json.oe
    public boolean g(Context context) {
        return context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    @Override // org.json.oe
    public float h() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    @Override // org.json.oe
    public long h(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        if (activityManager == null) {
            return -1L;
        }
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    @Override // org.json.oe
    public long i() {
        return Calendar.getInstance(TimeZone.getDefault()).getTime().getTime();
    }

    @Override // org.json.oe
    public String i(Context context) {
        return r(context) ? "Tablet" : "Phone";
    }

    @Override // org.json.oe
    public int j() {
        return Resources.getSystem().getDisplayMetrics().heightPixels;
    }

    @Override // org.json.oe
    public String j(Context context) {
        TelephonyManager telephonyManager;
        return (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : telephonyManager.getNetworkOperatorName();
    }

    @Override // org.json.oe
    public int k() {
        return Build.VERSION.SDK_INT;
    }

    @Override // org.json.oe
    public File k(Context context) {
        return context.getCacheDir();
    }

    @Override // org.json.oe
    public int l(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getIntExtra("plugged", -1);
        }
        return -1;
    }

    @Override // org.json.oe
    public String l() {
        return "android";
    }

    @Override // org.json.oe
    public float m(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        try {
            return audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return -1.0f;
        }
    }

    @Override // org.json.oe
    public long m() {
        if (c()) {
            return a(Environment.getExternalStorageDirectory());
        }
        return 0L;
    }

    @Override // org.json.oe
    public long n() {
        return a(Environment.getDataDirectory());
    }

    @Override // org.json.oe
    public String n(Context context) {
        TelephonyManager telephonyManager;
        return (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : telephonyManager.getNetworkCountryIso();
    }

    @Override // org.json.oe
    public String o() {
        return Build.VERSION.RELEASE;
    }

    @Override // org.json.oe
    public List<ApplicationInfo> o(Context context) {
        return context.getPackageManager().getInstalledApplications(0);
    }

    @Override // org.json.oe
    public int p() {
        return -(TimeZone.getDefault().getOffset(i()) / 60000);
    }

    @Override // org.json.oe
    public String p(Context context) {
        String strL;
        na naVar = na.a;
        if (!naVar.b()) {
            return null;
        }
        try {
            if (!naVar.a()) {
                strL = L(context);
            } else {
                if (this.h == null) {
                    String strL2 = L(context);
                    if (TextUtils.isEmpty(strL2)) {
                        return strL2;
                    }
                    this.h = strL2;
                    return strL2;
                }
                strL = this.h;
            }
            return strL;
        } catch (Exception e) {
            l9.d().a(e);
            return null;
        }
    }

    @Override // org.json.oe
    public boolean q() {
        return this.e;
    }

    @Override // org.json.oe
    public boolean q(Context context) {
        try {
            return ((PowerManager) context.getSystemService("power")).isPowerSaveMode();
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    @Override // org.json.oe
    public int r() {
        return d();
    }

    @Override // org.json.oe
    public boolean r(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return false;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return ((float) displayMetrics.widthPixels) / displayMetrics.density >= 600.0f;
    }

    @Override // org.json.oe
    public String s() {
        try {
            return this.d.isEmpty() ? P(ContextProvider.getInstance().getApplicationContext()) : this.d;
        } catch (Exception e) {
            l9.d().a(e);
            return "";
        }
    }

    @Override // org.json.oe
    public synchronized String s(Context context) {
        if (!TextUtils.isEmpty(this.c)) {
            return this.c;
        }
        if (context == null) {
            return "";
        }
        String stringFromSharedPrefs = IronSourceSharedPreferencesUtilities.getStringFromSharedPrefs(context, "supersonic_shared_preferen", "auid", "");
        this.c = stringFromSharedPrefs;
        if (TextUtils.isEmpty(stringFromSharedPrefs)) {
            String string = UUID.randomUUID().toString();
            this.c = string;
            IronSourceSharedPreferencesUtilities.saveStringToSharedPrefs(context, "supersonic_shared_preferen", "auid", string);
        }
        return this.c;
    }

    @Override // org.json.oe
    public File t(Context context) {
        return context.getExternalFilesDir(null);
    }

    @Override // org.json.oe
    public boolean u(Context context) {
        try {
            for (String str : context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions) {
                if (str.equalsIgnoreCase(j)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            l9.d().a(e);
            return false;
        }
    }

    @Override // org.json.oe
    public File v(Context context) {
        return context.getFilesDir();
    }

    @Override // org.json.oe
    public int w(Context context) {
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("level", -1) : 0;
            int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : 0;
            if (intExtra == -1 || intExtra2 == -1) {
                return -1;
            }
            return (int) ((intExtra / intExtra2) * 100.0f);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return -1;
        }
    }

    @Override // org.json.oe
    public int x(Context context) {
        int I = I(context);
        int iE = E(context);
        return (((I == 0 || I == 2) && iE == 2) || ((I == 1 || I == 3) && iE == 1)) ? 2 : 1;
    }

    @Override // org.json.oe
    public int y(Context context) {
        try {
            return IronSourceSharedPreferencesUtilities.getIntFromDefaultSharedPrefs(context, z, -1);
        } catch (Exception e) {
            l9.d().a(e);
            return -1;
        }
    }

    @Override // org.json.oe
    public int z(Context context) {
        if (context != null) {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
        }
        return -1;
    }
}
