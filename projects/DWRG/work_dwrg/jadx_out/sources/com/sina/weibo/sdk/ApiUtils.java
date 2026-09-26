package com.sina.weibo.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;

/* loaded from: classes.dex */
public class ApiUtils {
    public static final int BUILD_INT = 10350;
    public static final int BUILD_INT_440 = 10355;
    public static final int BUILD_INT_VER_2_2 = 10351;
    public static final int BUILD_INT_VER_2_3 = 10352;
    public static final int BUILD_INT_VER_2_5 = 10353;
    private static final String TAG = ApiUtils.class.getName();

    public static boolean validateWeiboSign(Context context, String pkgName) {
        if (TextUtils.isEmpty(pkgName)) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(pkgName, 64);
            return containSign(packageInfo.signatures, WBConstants.WEIBO_SIGN);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private static boolean containSign(Signature[] signatures, String destSign) {
        if (signatures == null || destSign == null) {
            return false;
        }
        for (Signature signature : signatures) {
            String s = MD5.hexdigest(signature.toByteArray());
            if (destSign.equals(s)) {
                LogUtil.d(TAG, "check pass");
                return true;
            }
        }
        return false;
    }
}
