package com.alipay.sdk.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.alipay.sdk.app.EnvUtils;
import com.netease.download.Const;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
/* loaded from: classes.dex */
public final class m {
    static final String a = "com.alipay.android.app";
    public static final int b = 99;
    public static final int c = 73;
    private static final String d = "com.eg.android.AlipayGphone";
    private static final String e = "com.eg.android.AlipayGphoneRC";

    public static String a() {
        return EnvUtils.isSandBox() ? "com.eg.android.AlipayGphoneRC" : d;
    }

    public static Map<String, String> a(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.split(com.alipay.sdk.sys.a.b)) {
            int indexOf = str2.indexOf("=", 1);
            hashMap.put(str2.substring(0, indexOf), URLDecoder.decode(str2.substring(indexOf + 1)));
        }
        return hashMap;
    }

    public static String a(String str, String str2, String str3) {
        try {
            int length = str.length() + str3.indexOf(str);
            if (length <= str.length()) {
                return "";
            }
            int i = 0;
            if (!TextUtils.isEmpty(str2)) {
                i = str3.indexOf(str2, length);
            }
            if (i <= 0) {
                return str3.substring(length);
            }
            return str3.substring(length, i);
        } catch (Throwable th) {
            return "";
        }
    }

    public static String b(String str, String str2, String str3) {
        try {
            int length = str.length() + str3.indexOf(str);
            int i = 0;
            if (!TextUtils.isEmpty(str2)) {
                i = str3.indexOf(str2, length);
            }
            if (i <= 0) {
                return str3.substring(length);
            }
            return str3.substring(length, i);
        } catch (Throwable th) {
            return "";
        }
    }

    public static String a(byte[] bArr) {
        try {
            String obj = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr))).getPublicKey().toString();
            if (obj.indexOf("modulus") != -1) {
                return obj.substring(obj.indexOf("modulus") + 8, obj.lastIndexOf(",")).trim();
            }
        } catch (Exception e2) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.d, com.alipay.sdk.app.statistic.c.n, e2);
        }
        return null;
    }

    public static a a(Context context) {
        return a(context, a());
    }

    private static boolean a(PackageInfo packageInfo) {
        String str = "";
        boolean z = false;
        if (packageInfo == null) {
            str = "info == null";
        } else if (packageInfo.signatures == null) {
            str = "info.signatures == null";
        } else if (packageInfo.signatures.length <= 0) {
            str = "info.signatures.length <= 0";
        } else {
            z = true;
        }
        if (!z) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.d, com.alipay.sdk.app.statistic.c.l, str);
        }
        return z;
    }

    private static PackageInfo b(Context context, String str) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getPackageInfo(str, 192);
    }

    private static PackageInfo c(Context context, String str) {
        for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(192)) {
            if (packageInfo.packageName.equals(str)) {
                return packageInfo;
            }
        }
        return null;
    }

    private static a b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        a aVar = new a();
        aVar.a = packageInfo.signatures;
        aVar.b = packageInfo.versionCode;
        return aVar;
    }

    /* loaded from: classes.dex */
    public static class a {
        public Signature[] a;
        public int b;

        public final boolean a() {
            if (this.a == null || this.a.length <= 0) {
                return false;
            }
            for (int i = 0; i < this.a.length; i++) {
                String a = m.a(this.a[i].toByteArray());
                if (a != null && !TextUtils.equals(a, com.alipay.sdk.cons.a.h)) {
                    com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.t, a);
                    return true;
                }
            }
            return false;
        }
    }

    public static boolean b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(a, 128) != null;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    public static boolean c(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(a(), 128);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode > 73;
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.B, th);
            return false;
        }
    }

    public static boolean d(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(a(), 128);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode < 99;
        } catch (Throwable th) {
            return false;
        }
    }

    public static String e(Context context) {
        return " (" + b() + i.b + c() + i.b + f(context) + ";;" + g(context) + ")(sdk android)";
    }

    public static String b() {
        return "Android " + Build.VERSION.RELEASE;
    }

    public static WebView a(Activity activity, String str, String str2) {
        Context applicationContext = activity.getApplicationContext();
        if (!TextUtils.isEmpty(str2)) {
            CookieSyncManager.createInstance(applicationContext).sync();
            CookieManager.getInstance().setCookie(str, str2);
            CookieSyncManager.getInstance().sync();
        }
        LinearLayout linearLayout = new LinearLayout(applicationContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        activity.setContentView(linearLayout, layoutParams);
        WebView webView = new WebView(applicationContext);
        layoutParams.weight = 1.0f;
        webView.setVisibility(0);
        linearLayout.addView(webView, layoutParams);
        WebSettings settings = webView.getSettings();
        settings.setUserAgentString(settings.getUserAgentString() + e(applicationContext));
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMinimumFontSize(settings.getMinimumFontSize() + 8);
        settings.setAllowFileAccess(false);
        settings.setTextSize(WebSettings.TextSize.NORMAL);
        webView.setVerticalScrollbarOverlay(true);
        webView.setDownloadListener(new n(applicationContext));
        if (Build.VERSION.SDK_INT >= 7) {
            try {
                Method method = webView.getSettings().getClass().getMethod("setDomStorageEnabled", Boolean.TYPE);
                if (method != null) {
                    method.invoke(webView.getSettings(), true);
                }
            } catch (Exception e2) {
            }
        }
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            try {
                Method method2 = webView.getClass().getMethod("removeJavascriptInterface", new Class[0]);
                if (method2 != null) {
                    method2.invoke(webView, "searchBoxJavaBridge_");
                    method2.invoke(webView, "accessibility");
                    method2.invoke(webView, "accessibilityTraversal");
                }
            } catch (Throwable th2) {
            }
        }
        if (Build.VERSION.SDK_INT >= 19) {
            webView.getSettings().setCacheMode(2);
        }
        webView.loadUrl(str);
        return webView;
    }

    public static String c() {
        String e2 = e();
        int indexOf = e2.indexOf("-");
        if (indexOf != -1) {
            e2 = e2.substring(0, indexOf);
        }
        int indexOf2 = e2.indexOf("\n");
        if (indexOf2 != -1) {
            e2 = e2.substring(0, indexOf2);
        }
        return "Linux " + e2;
    }

    private static String e() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/version"), 256);
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                Matcher matcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(readLine);
                if (matcher.matches() && matcher.groupCount() >= 4) {
                    return matcher.group(1) + "\n" + matcher.group(2) + " " + matcher.group(3) + "\n" + matcher.group(4);
                }
                return "Unavailable";
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        } catch (IOException e2) {
            return "Unavailable";
        }
    }

    public static String f(Context context) {
        return context.getResources().getConfiguration().locale.toString();
    }

    private static DisplayMetrics j(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    private static String k(Context context) {
        String a2 = l.a(context);
        return a2.substring(0, a2.indexOf("://"));
    }

    private static String f() {
        return "-1;-1";
    }

    public static String d() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 24; i++) {
            switch (random.nextInt(3)) {
                case 0:
                    sb.append(String.valueOf((char) Math.round((Math.random() * 25.0d) + 65.0d)));
                    break;
                case 1:
                    sb.append(String.valueOf((char) Math.round((Math.random() * 25.0d) + 97.0d)));
                    break;
                case 2:
                    sb.append(String.valueOf(new Random().nextInt(10)));
                    break;
            }
        }
        return sb.toString();
    }

    public static boolean b(String str) {
        return Pattern.compile("^http(s)?://([a-z0-9_\\-]+\\.)*(alipaydev|alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$").matcher(str).matches();
    }

    public static String h(Context context) {
        String str = "";
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getApplicationContext().getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(a())) {
                    str = str + "#M";
                } else {
                    str = runningAppProcessInfo.processName.startsWith(new StringBuilder().append(a()).append(Const.RESP_CONTENT_SPIT2).toString()) ? str + "#" + runningAppProcessInfo.processName.replace(a() + Const.RESP_CONTENT_SPIT2, "") : str;
                }
            }
        } catch (Throwable th) {
            str = "";
        }
        if (str.length() > 0) {
            str = str.substring(1);
        }
        if (str.length() == 0) {
            return "N";
        }
        return str;
    }

    public static String i(Context context) {
        try {
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < installedPackages.size(); i++) {
                PackageInfo packageInfo = installedPackages.get(i);
                int i2 = packageInfo.applicationInfo.flags;
                if ((i2 & 1) == 0 && (i2 & 128) == 0) {
                    if (packageInfo.packageName.equals(a())) {
                        sb.append(packageInfo.packageName).append(packageInfo.versionCode).append("-");
                    } else if (!packageInfo.packageName.contains("theme") && !packageInfo.packageName.startsWith("com.google.") && !packageInfo.packageName.startsWith("com.android.")) {
                        sb.append(packageInfo.packageName).append("-");
                    }
                }
            }
            return sb.toString();
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, "GetInstalledAppEx", th);
            return "";
        }
    }

    @SuppressLint({"InlinedApi"})
    private static boolean c(PackageInfo packageInfo) {
        int i = packageInfo.applicationInfo.flags;
        return (i & 1) == 0 && (i & 128) == 0;
    }

    public static boolean a(WebView webView, String str, Activity activity) {
        String substring;
        if (!TextUtils.isEmpty(str)) {
            if (str.toLowerCase().startsWith(com.alipay.sdk.cons.a.i.toLowerCase()) || str.toLowerCase().startsWith(com.alipay.sdk.cons.a.j.toLowerCase())) {
                try {
                    a a2 = a(activity);
                    if (a2 != null && !a2.a()) {
                        if (str.startsWith("intent://platformapi/startapp")) {
                            str = str.replaceFirst("intent://platformapi/startapp\\?", com.alipay.sdk.cons.a.i);
                        }
                        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    }
                } catch (Throwable th) {
                }
            } else if (!TextUtils.equals(str, com.alipay.sdk.cons.a.l) && !TextUtils.equals(str, com.alipay.sdk.cons.a.m)) {
                if (str.startsWith(com.alipay.sdk.cons.a.k)) {
                    try {
                        String substring2 = str.substring(str.indexOf(com.alipay.sdk.cons.a.k) + 24);
                        int parseInt = Integer.parseInt(substring2.substring(substring2.lastIndexOf(com.alipay.sdk.cons.a.n) + 10));
                        if (parseInt == com.alipay.sdk.app.j.SUCCEEDED.h || parseInt == com.alipay.sdk.app.j.PAY_WAITTING.h) {
                            if (com.alipay.sdk.cons.a.r) {
                                StringBuilder sb = new StringBuilder();
                                String decode = URLDecoder.decode(str);
                                String decode2 = URLDecoder.decode(decode);
                                String str2 = decode2.substring(decode2.indexOf(com.alipay.sdk.cons.a.k) + 24, decode2.lastIndexOf(com.alipay.sdk.cons.a.n)).split(com.alipay.sdk.cons.a.p)[0];
                                int indexOf = decode.indexOf(com.alipay.sdk.cons.a.p) + 12;
                                sb.append(str2).append(com.alipay.sdk.cons.a.p).append(decode.substring(indexOf, decode.indexOf(com.alipay.sdk.sys.a.b, indexOf))).append(decode.substring(decode.indexOf(com.alipay.sdk.sys.a.b, indexOf)));
                                substring = sb.toString();
                            } else {
                                String decode3 = URLDecoder.decode(str);
                                substring = decode3.substring(decode3.indexOf(com.alipay.sdk.cons.a.k) + 24, decode3.lastIndexOf(com.alipay.sdk.cons.a.n));
                            }
                            com.alipay.sdk.app.j a3 = com.alipay.sdk.app.j.a(parseInt);
                            com.alipay.sdk.app.i.a = com.alipay.sdk.app.i.a(a3.h, a3.i, substring);
                        } else {
                            com.alipay.sdk.app.j a4 = com.alipay.sdk.app.j.a(com.alipay.sdk.app.j.FAILED.h);
                            com.alipay.sdk.app.i.a = com.alipay.sdk.app.i.a(a4.h, a4.i, "");
                        }
                    } catch (Exception e2) {
                        com.alipay.sdk.app.j a5 = com.alipay.sdk.app.j.a(com.alipay.sdk.app.j.PARAMS_ERROR.h);
                        com.alipay.sdk.app.i.a = com.alipay.sdk.app.i.a(a5.h, a5.i, "");
                    }
                    activity.runOnUiThread(new o(activity));
                } else {
                    webView.loadUrl(str);
                }
            } else {
                com.alipay.sdk.app.i.a = com.alipay.sdk.app.i.a();
                activity.finish();
            }
        }
        return true;
    }

    private static a a(Context context, String str) {
        PackageInfo packageInfo;
        try {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str, 192);
                if (!a(packageInfo)) {
                    try {
                        packageInfo = c(context, str);
                    } catch (Throwable th) {
                        com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.d, com.alipay.sdk.app.statistic.c.m, th);
                    }
                }
            } catch (Throwable th2) {
                if (!a((PackageInfo) null)) {
                    try {
                        c(context, str);
                    } catch (Throwable th3) {
                        com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.d, com.alipay.sdk.app.statistic.c.m, th3);
                    }
                }
                throw th2;
            }
        } catch (Throwable th4) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.d, com.alipay.sdk.app.statistic.c.k, th4);
            if (a((PackageInfo) null)) {
                packageInfo = null;
            } else {
                try {
                    packageInfo = c(context, str);
                } catch (Throwable th5) {
                    com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.d, com.alipay.sdk.app.statistic.c.m, th5);
                    packageInfo = null;
                }
            }
        }
        if (!a(packageInfo) || packageInfo == null) {
            return null;
        }
        a aVar = new a();
        aVar.a = packageInfo.signatures;
        aVar.b = packageInfo.versionCode;
        return aVar;
    }

    public static String g(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels + "*" + displayMetrics.heightPixels;
    }
}
