package com.netease.epay.sdk.core;

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.BizType;

/* compiled from: Epay.java */
/* loaded from: classes.dex */
public class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ColorStateList colorStateList, ColorStateList colorStateList2) {
        SdkConfig.btnColor = colorStateList;
        SdkConfig.btnTextColor = colorStateList2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr) {
        if (iArr.length < 2) {
            LogUtil.e("EpayHelper.java.initTitleBackgroundColor: the title color parameters' size cannot less than 2");
        } else {
            SdkConfig.TitleBarBackgroundColor = iArr[0];
            SdkConfig.TitleBarTextColor = iArr[1];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i) {
        SdkConfig.StateBarColor = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            LogUtil.e("EpayHelper.initUserByToken(): params can not be null,otherwise other pay method will fail");
            return;
        }
        BaseData.loginId = str;
        BaseData.loginToken = str2;
        BaseData.neURSKey = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            LogUtil.e("EpayHelper.initUserByCookie(): params can not be null,otherwise other pay method will fail");
        } else {
            BaseData.cookie = str;
            BaseData.cookieType = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
            LogUtil.e("EpayHelper.initPlatform(): params can not be null,otherwise other pay method will fail");
            return;
        }
        BaseData.appPlatformId = str3;
        BaseData.platformSign = str;
        BaseData.platformSignExpireTime = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            LogUtil.e("EpayHelper.initSession(): params can not be null,otherwise other pay method will fail");
        } else {
            BaseData.orderPlatformId = str;
            BaseData.timeStamp = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, String str, final String str2, final boolean z, final boolean z2, final boolean z3, final String str3) {
        a(context, a(context, str), 1, new ControllerCallback() { // from class: com.netease.epay.sdk.core.a.1
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route("pay", controllerResult.activity, ControllerJsonBuilder.getPayJson(str2, z, z2, z3, str3), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, String str, final boolean z) {
        a(context, a(context, str), BizType.ADD_CARD_PAY, new ControllerCallback() { // from class: com.netease.epay.sdk.core.a.2
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route("pay", controllerResult.activity, ControllerJsonBuilder.getPayJson(null, z, false, false, null), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtil.e("orderId is null ");
            return true;
        }
        if (a(context)) {
            return true;
        }
        BaseData.orderId = str;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        if (context != null) {
            return a();
        }
        LogUtil.e("ctx is null");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return a(false);
    }

    static boolean a(boolean z) {
        if (TextUtils.isEmpty(BaseData.timeStamp) || TextUtils.isEmpty(BaseData.orderPlatformId) || TextUtils.isEmpty(BaseData.appPlatformId)) {
            LogUtil.e("one of the string args(timeStamp,orderPlatformId,appNam e,appVersion,appPlatformId) is null");
            return true;
        }
        if ((TextUtils.isEmpty(BaseData.cookie) || TextUtils.isEmpty(BaseData.cookieType)) && (TextUtils.isEmpty(BaseData.loginId) || TextUtils.isEmpty(BaseData.loginToken) || TextUtils.isEmpty(BaseData.neURSKey))) {
            LogUtil.e("ID(TOKEN) or COOKIE(COOKIE TYPE) is null");
            return true;
        }
        if (!z) {
            if (Math.abs(System.currentTimeMillis() - CoreData.lastActionTime) < 10000) {
                LogUtil.e("last pay action has not finished,or action too frequent");
                return true;
            }
            CoreData.lastActionTime = System.currentTimeMillis();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, boolean z, int i, ControllerCallback controllerCallback, boolean z2) {
        CoreData.bizType = i;
        if (!z) {
            ControllerRouter.route("register", context, ControllerJsonBuilder.getRegisterJson(z2), controllerCallback);
        } else {
            ExitUtil.failCallback(ErrorCode.FAIL_ERROR_PARAM, ErrorCode.FAIL_ERROR_PARAM_STRING);
        }
    }
}
