package com.sina.weibo.sdk.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.alipay.sdk.sys.a;
import com.netease.environment.config.SdkConstants;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.statistic.WBAgent;
import com.sina.weibo.sdk.utils.AidTask;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes.dex */
public class Utility {
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String WEIBO_IDENTITY_ACTION = "com.sina.weibo.action.sdkidentity";

    public static Bundle parseUrl(String url) {
        try {
            URL u = new URL(url);
            Bundle b = decodeUrl(u.getQuery());
            b.putAll(decodeUrl(u.getRef()));
            return b;
        } catch (MalformedURLException e) {
            return new Bundle();
        }
    }

    public static Bundle parseUri(String uri) {
        try {
            URI u = new URI(uri);
            return decodeUrl(u.getQuery());
        } catch (Exception e) {
            return new Bundle();
        }
    }

    public static Bundle decodeUrl(String s) {
        Bundle params = new Bundle();
        if (s != null) {
            String[] array = s.split(a.b);
            for (String parameter : array) {
                String[] v = parameter.split("=");
                try {
                    params.putString(URLDecoder.decode(v[0], "UTF-8"), URLDecoder.decode(v[1], "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        }
        return params;
    }

    public static boolean isChineseLocale(Context context) {
        try {
            Locale locale = context.getResources().getConfiguration().locale;
            if (Locale.CHINA.equals(locale) || Locale.CHINESE.equals(locale) || Locale.SIMPLIFIED_CHINESE.equals(locale)) {
                return true;
            }
            return Locale.TAIWAN.equals(locale);
        } catch (Exception e) {
            return true;
        }
    }

    public static String generateGUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static String getSign(Context context, String pkgName) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(pkgName, 64);
            for (int j = 0; j < packageInfo.signatures.length; j++) {
                byte[] str = packageInfo.signatures[j].toByteArray();
                if (str != null) {
                    return MD5.hexdigest(str);
                }
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static String safeString(String orignal) {
        return TextUtils.isEmpty(orignal) ? "" : orignal;
    }

    public static String getAid(Context context, String appKey) {
        AidTask task = AidTask.getInstance(context);
        AidTask.AidInfo aidInfo = task.getAidSync(appKey);
        return aidInfo != null ? aidInfo.getAid() : "";
    }

    public static String generateUA(Context ctx) {
        StringBuilder buffer = new StringBuilder();
        buffer.append(Build.MANUFACTURER).append("-").append(Build.MODEL);
        buffer.append("_");
        buffer.append(Build.VERSION.RELEASE);
        buffer.append("_");
        buffer.append("weibosdk");
        buffer.append("_");
        buffer.append(WBConstants.WEIBO_SDK_VERSION_CODE);
        buffer.append("_android");
        return buffer.toString();
    }

    public static String generateUAAid(Context ctx) {
        StringBuilder buffer = new StringBuilder();
        buffer.append(Build.MANUFACTURER).append("-").append(Build.MODEL);
        buffer.append("__");
        buffer.append("weibosdk");
        buffer.append("__");
        try {
            buffer.append(WBConstants.WEIBO_SDK_VERSION_CODE.replaceAll("\\s+", "_"));
        } catch (Exception e) {
            buffer.append(EnvironmentCompat.MEDIA_UNKNOWN);
        }
        buffer.append("__").append(SdkConstants.SYSTEM).append("__android").append(Build.VERSION.RELEASE);
        return buffer.toString();
    }

    public static void shareMessagetoWeibo(Context context, String action, Bundle bundle) {
        try {
            Intent intent = new Intent();
            String mstartTime = String.valueOf(System.currentTimeMillis());
            intent.putExtra(WBConstants.TRAN, mstartTime);
            HashMap<String, String> extend = new HashMap<>();
            extend.put(WBConstants.ACTION_START_TIME, mstartTime);
            try {
                WBAgent.onEvent(context, "message", extend);
            } catch (Exception e) {
                e.printStackTrace();
            }
            intent.setAction("android.intent.action.VIEW");
            String appPackage = context.getPackageName();
            intent.putExtra(WBConstants.Base.APP_PKG, appPackage);
            intent.setData(Uri.parse(action));
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e2) {
        }
    }

    public static void openWeiboActivity(Context context, String action, Bundle bundle) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            String appPackage = context.getPackageName();
            intent.putExtra(WBConstants.Base.APP_PKG, appPackage);
            intent.setData(Uri.parse(action));
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static Boolean isWeiBoVersionSupportNewPay(Context context) {
        Intent intent = new Intent(WEIBO_IDENTITY_ACTION);
        intent.addCategory("android.intent.category.DEFAULT");
        List<ResolveInfo> list = context.getPackageManager().queryIntentServices(intent, 0);
        if (list == null || list.isEmpty()) {
            return false;
        }
        int versionCode = 0;
        for (ResolveInfo ri : list) {
            if (ri.serviceInfo != null && ri.serviceInfo.applicationInfo != null && !TextUtils.isEmpty(ri.serviceInfo.applicationInfo.packageName)) {
                String packageName = ri.serviceInfo.applicationInfo.packageName;
                try {
                    versionCode = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
            }
        }
        return Boolean.valueOf(versionCode >= 1920);
    }
}
