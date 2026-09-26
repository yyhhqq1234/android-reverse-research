package com.tencent.open.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.alipay.android.phone.mrpc.core.Headers;
import com.netease.download.util.HashUtil;
import com.tencent.connect.common.Constants;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
/* loaded from: classes.dex */
public class i {
    private static String f;
    private static String a = "";
    private static String b = "";
    private static String c = "";
    private static String d = "";
    private static int e = -1;
    private static String g = "0123456789ABCDEF";

    public static Bundle a(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            try {
                for (String str2 : str.split(com.alipay.sdk.sys.a.b)) {
                    String[] split = str2.split("=");
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0]), URLDecoder.decode(split[1]));
                    }
                }
                return bundle;
            } catch (Exception e2) {
                return null;
            }
        }
        return bundle;
    }

    public static JSONObject a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (str != null) {
            for (String str2 : str.split(com.alipay.sdk.sys.a.b)) {
                String[] split = str2.split("=");
                if (split.length == 2) {
                    try {
                        try {
                            split[0] = URLDecoder.decode(split[0]);
                            split[1] = URLDecoder.decode(split[1]);
                        } catch (Exception e2) {
                        }
                        jSONObject.put(split[0], split[1]);
                    } catch (JSONException e3) {
                        com.tencent.open.a.f.e("openSDK_LOG.Util", "decodeUrlToJson has exception: " + e3.getMessage());
                    }
                }
            }
        }
        return jSONObject;
    }

    public static Bundle b(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            Bundle a2 = a(url.getQuery());
            a2.putAll(a(url.getRef()));
            return a2;
        } catch (MalformedURLException e2) {
            return new Bundle();
        }
    }

    public static JSONObject c(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            JSONObject a2 = a((JSONObject) null, url.getQuery());
            a(a2, url.getRef());
            return a2;
        } catch (MalformedURLException e2) {
            return new JSONObject();
        }
    }

    /* compiled from: ProGuard */
    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public long b;
        public long c;

        public a(String str, int i) {
            this.a = str;
            this.b = i;
            if (this.a != null) {
                this.c = this.a.length();
            }
        }
    }

    public static JSONObject d(String str) throws JSONException {
        if (str.equals("false")) {
            str = "{value : false}";
        }
        if (str.equals("true")) {
            str = "{value : true}";
        }
        if (str.contains("allback(")) {
            str = str.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
        }
        if (str.contains("online[0]=")) {
            str = "{online:" + str.charAt(str.length() - 2) + com.alipay.sdk.util.i.d;
        }
        return new JSONObject(str);
    }

    public static String a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces != null && networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException e2) {
            com.tencent.open.a.f.a("openSDK_LOG.Util", "getUserIp SocketException ", e2);
        }
        return "";
    }

    public static boolean e(String str) {
        return str == null || str.length() == 0;
    }

    private static boolean f(Context context) {
        Signature[] signatureArr;
        boolean z = false;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
            String str = packageInfo.versionName;
            if (g.a(str, "4.3") >= 0 && !str.startsWith("4.4") && (signatureArr = packageInfo.signatures) != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
                    messageDigest.update(signatureArr[0].toByteArray());
                    String a2 = a(messageDigest.digest());
                    messageDigest.reset();
                    if (a2.equals("d8391a394d4a179e6fe7bdb8a301258b")) {
                        z = true;
                    }
                } catch (NoSuchAlgorithmException e2) {
                    com.tencent.open.a.f.e("openSDK_LOG.Util", "isQQBrowerAvailable has exception: " + e2.getMessage());
                }
            }
        } catch (PackageManager.NameNotFoundException e3) {
        }
        return z;
    }

    public static boolean a(Context context, String str) {
        boolean z;
        try {
            z = f(context);
        } catch (Exception e2) {
            z = false;
        }
        try {
            if (z) {
                a(context, "com.tencent.mtt", "com.tencent.mtt.MainActivity", str);
            } else {
                a(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
            }
        } catch (Exception e3) {
            if (z) {
                try {
                    a(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
                } catch (Exception e4) {
                    try {
                        a(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                    } catch (Exception e5) {
                        try {
                            a(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                        } catch (Exception e6) {
                            return false;
                        }
                    }
                }
            } else {
                try {
                    a(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                } catch (Exception e7) {
                    try {
                        a(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                    } catch (Exception e8) {
                        return false;
                    }
                }
            }
            return true;
        }
        return true;
    }

    private static void a(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        intent.setData(Uri.parse(str3));
        context.startActivity(intent);
    }

    public static String f(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            messageDigest.update(i(str));
            byte[] digest = messageDigest.digest();
            if (digest != null) {
                StringBuilder sb = new StringBuilder();
                for (byte b2 : digest) {
                    sb.append(a(b2 >>> 4));
                    sb.append(a(b2));
                }
                return sb.toString();
            }
            return str;
        } catch (NoSuchAlgorithmException e2) {
            com.tencent.open.a.f.e("openSDK_LOG.Util", "encrypt has exception: " + e2.getMessage());
            return str;
        }
    }

    private static char a(int i) {
        int i2 = i & 15;
        if (i2 < 10) {
            return (char) (i2 + 48);
        }
        return (char) ((i2 - 10) + 97);
    }

    public static boolean b() {
        File file = null;
        if (Environment.getExternalStorageState().equals("mounted")) {
            file = Environment.getExternalStorageDirectory();
        }
        return file != null;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            String num = Integer.toString(b2 & 255, 16);
            if (num.length() == 1) {
                num = "0" + num;
            }
            sb.append(num);
        }
        return sb.toString();
    }

    public static final String a(Context context) {
        CharSequence applicationLabel;
        if (context == null || (applicationLabel = context.getPackageManager().getApplicationLabel(context.getApplicationInfo())) == null) {
            return null;
        }
        return applicationLabel.toString();
    }

    public static final boolean g(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean h(String str) {
        File file;
        return (str == null || (file = new File(str)) == null || !file.exists()) ? false : true;
    }

    public static final String a(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "UTF-8";
        }
        try {
            if (str.getBytes(str2).length > i) {
                int i2 = 0;
                for (int i3 = 0; i3 < str.length(); i3++) {
                    int length = str.substring(i3, i3 + 1).getBytes(str2).length;
                    if (i2 + length > i) {
                        String substring = str.substring(0, i3);
                        try {
                            if (!TextUtils.isEmpty(str3)) {
                                substring = substring + str3;
                            }
                            return substring;
                        } catch (Exception e2) {
                            str = substring;
                            e = e2;
                            com.tencent.open.a.f.e("openSDK_LOG.Util", "Util.subString has exception: " + e.getMessage());
                            return str;
                        }
                    }
                    i2 += length;
                }
                return str;
            }
            return str;
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static boolean b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return true;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo == null) {
            return false;
        }
        for (NetworkInfo networkInfo : allNetworkInfo) {
            if (networkInfo.isConnectedOrConnecting()) {
                return true;
            }
        }
        return false;
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6) {
        return a(str, str3, str4, str2, str5, str6, "", "", "", "", "", "");
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        Bundle bundle = new Bundle();
        bundle.putString("openid", str);
        bundle.putString("report_type", str2);
        bundle.putString("act_type", str3);
        bundle.putString("via", str4);
        bundle.putString("app_id", str5);
        bundle.putString(com.alipay.sdk.util.k.c, str6);
        bundle.putString("type", str7);
        bundle.putString("login_status", str8);
        bundle.putString("need_user_auth", str9);
        bundle.putString("to_uin", str10);
        bundle.putString("call_source", str11);
        bundle.putString("to_type", str12);
        return bundle;
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", "1");
        bundle.putString(com.alipay.sdk.util.k.c, str);
        bundle.putString("code", str2);
        bundle.putString("tmcost", str3);
        bundle.putString("rate", str4);
        bundle.putString("cmd", str5);
        bundle.putString("uin", str6);
        bundle.putString("appid", str7);
        bundle.putString("share_type", str8);
        bundle.putString("detail", str9);
        bundle.putString("os_ver", Build.VERSION.RELEASE);
        bundle.putString("network", com.tencent.open.b.a.a(d.a()));
        bundle.putString("apn", com.tencent.open.b.a.b(d.a()));
        bundle.putString("model_name", Build.MODEL);
        bundle.putString("sdk_ver", Constants.SDK_VERSION);
        bundle.putString("packagename", d.b());
        bundle.putString("app_ver", d(d.a(), d.b()));
        return bundle;
    }

    public static String c(Context context) {
        Location lastKnownLocation;
        if (context == null) {
            return "";
        }
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService(Headers.LOCATION);
            Criteria criteria = new Criteria();
            criteria.setCostAllowed(false);
            criteria.setAccuracy(2);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider != null && (lastKnownLocation = locationManager.getLastKnownLocation(bestProvider)) != null) {
                f = lastKnownLocation.getLatitude() + "*" + lastKnownLocation.getLongitude();
                return f;
            }
            return "";
        } catch (Exception e2) {
            com.tencent.open.a.f.b("openSDK_LOG.Util", "getLocation>>>", e2);
        }
        return "";
    }

    public static void b(Context context, String str) {
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                b = packageInfo.versionName;
                a = b.substring(0, b.lastIndexOf(46));
                d = b.substring(b.lastIndexOf(46) + 1, b.length());
                e = packageInfo.versionCode;
            } catch (PackageManager.NameNotFoundException e2) {
                com.tencent.open.a.f.e("openSDK_LOG.Util", "getPackageInfo has exception: " + e2.getMessage());
            } catch (Exception e3) {
                com.tencent.open.a.f.e("openSDK_LOG.Util", "getPackageInfo has exception: " + e3.getMessage());
            }
        }
    }

    public static String c(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return b;
    }

    public static String d(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return a;
    }

    public static String e(Context context, String str) {
        if (context == null) {
            return "";
        }
        c = d(context, str);
        return c;
    }

    public static byte[] i(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    public static boolean d(Context context) {
        double d2 = 0.0d;
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            d2 = Math.sqrt(Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d) + Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d));
        } catch (Throwable th) {
        }
        return d2 > 6.5d;
    }

    public static boolean f(Context context, String str) {
        boolean z = !d(context) || g.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && g.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        if (z && g.a(context, Constants.PACKAGE_QIM) != null) {
            z = false;
        }
        return z ? g.c(context, str) < 0 : z;
    }

    public static boolean g(Context context, String str) {
        boolean z = !d(context) || g.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && g.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        return z ? g.c(context, str) < 0 : z;
    }

    public static boolean a(Context context, boolean z) {
        if (!d(context) || g.a(context, Constants.PACKAGE_QQ_PAD) == null) {
            return !z ? (g.c(context, "4.1") < 0 && g.a(context, Constants.PACKAGE_TIM) == null && g.a(context, Constants.PACKAGE_QIM) == null) ? false : true : g.c(context, "4.1") >= 0 || g.a(context, Constants.PACKAGE_TIM) != null;
        }
        return true;
    }

    public static boolean e(Context context) {
        return g.c(context, "5.9.5") >= 0 || g.a(context, Constants.PACKAGE_TIM) != null;
    }
}
