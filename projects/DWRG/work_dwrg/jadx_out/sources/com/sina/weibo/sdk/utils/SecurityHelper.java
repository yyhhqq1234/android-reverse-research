package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import com.sina.weibo.sdk.ApiUtils;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.constant.WBConstants;

/* loaded from: classes.dex */
public class SecurityHelper {
    public static boolean validateAppSignatureForIntent(Context context, Intent intent) {
        ResolveInfo resolveInfo;
        PackageManager pkgMgr = context.getPackageManager();
        if (pkgMgr == null || (resolveInfo = pkgMgr.resolveActivity(intent, 0)) == null) {
            return false;
        }
        String packageName = resolveInfo.activityInfo.packageName;
        try {
            PackageInfo packageInfo = pkgMgr.getPackageInfo(packageName, 64);
            return containSign(packageInfo.signatures, WBConstants.WEIBO_SIGN);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean checkResponseAppLegal(Context context, WeiboAppManager.WeiboInfo requestWeiboInfo, Intent intent) {
        if ((requestWeiboInfo != null && requestWeiboInfo.getSupportApi() <= 10352) || requestWeiboInfo == null) {
            return true;
        }
        String appPackage = intent != null ? intent.getStringExtra(WBConstants.Base.APP_PKG) : null;
        return (appPackage == null || intent.getStringExtra(WBConstants.TRAN) == null || !ApiUtils.validateWeiboSign(context, appPackage)) ? false : true;
    }

    public static boolean containSign(Signature[] signatures, String destSign) {
        if (signatures == null || destSign == null) {
            return false;
        }
        for (Signature signature : signatures) {
            String s = MD5.hexdigest(signature.toByteArray());
            if (destSign.equals(s)) {
                return true;
            }
        }
        return false;
    }
}
