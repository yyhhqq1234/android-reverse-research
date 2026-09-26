package com.netease.epay.sdk.core;

import android.content.Context;
import android.content.res.ColorStateList;
import com.netease.epay.sdk.Constants;
import com.netease.epay.sdk.base.BuildConfig;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.SharedPreferencesUtil;

/* loaded from: classes.dex */
public class EpayHelper {
    public static void initButtonBackgroundColor(ColorStateList btnColor, ColorStateList btnTextColor) {
        a.a(btnColor, btnTextColor);
    }

    public static void initTitleBackgroundColor(int[] titleBarColor) {
        a.a(titleBarColor);
    }

    public static void initStatusBarColor(int statusColor) {
        a.a(statusColor);
    }

    public static void initUserByToken(String clientLoginId, String clientLoginToken, String neURSKey) {
        a.a(clientLoginId, clientLoginToken, neURSKey);
    }

    public static void initUserByCookie(String clientCookie, String cookieType) {
        a.a(clientCookie, cookieType);
    }

    public static void initPlatform(String platformSign, String platformSignExpireTime, String appPlatformId) {
        a.b(platformSign, platformSignExpireTime, appPlatformId);
    }

    public static void initSession(String orderPlatformId, String clientTimeStamp) {
        a.b(orderPlatformId, clientTimeStamp);
    }

    @Deprecated
    public static void pay(Context ctx, String clientOrderId, boolean isShowPaymentDetail) {
        a.a(ctx, clientOrderId, null, isShowPaymentDetail, false, false, null);
    }

    public static void pay(Context ctx, String clientOrderId) {
        a.a(ctx, clientOrderId, null, false, false, false, null);
    }

    public static void fakeUnionPay(Context ctx, String clientOrderId) {
        fakeUnionPay(ctx, clientOrderId, false);
    }

    @Deprecated
    public static void fakeUnionPay(Context ctx, String clientOrderId, boolean isShowPaymentDetail) {
        a.a(ctx, clientOrderId, null, isShowPaymentDetail, true, false, null);
    }

    public static void cashier_AddCard(Context ctx, String clientOrderId) {
        a.a(ctx, clientOrderId, false);
    }

    @Deprecated
    public static void cashier_AddCard(Context ctx, String clientOrderId, boolean isShowPaymentDetail) {
        a.a(ctx, clientOrderId, isShowPaymentDetail);
    }

    public static void cashier_payQuickCard(Context ctx, String clientOrderId, String quickPayID) {
        a.a(ctx, clientOrderId, quickPayID, false, false, false, null);
    }

    @Deprecated
    public static void cashier_payQuickCard(Context ctx, String clientOrderId, String quickPayID, boolean isShowPaymentDetail) {
        a.a(ctx, clientOrderId, quickPayID, isShowPaymentDetail, false, false, null);
    }

    public static void addCard(Context ctx) {
        b.e(ctx, null);
    }

    public static void manageAccountDetail(Context ctx) {
        b.h(ctx);
    }

    public static void deposit(Context ctx) {
        b.a(ctx);
    }

    public static void withdraw(Context ctx) {
        b.b(ctx);
    }

    public static void modifyPassword(Context actv) {
        b.c(actv);
    }

    public static void setPassword(Context actv) {
        b.d(actv);
    }

    public static void forgetPassword(Context actv) {
        b.e(actv);
    }

    public static void openWithoutGeneralCard(Context actv) {
        b.g(actv);
    }

    public static void queryFingerprintStatus(Context actv) {
        OnlyForApp.queryFingerprintStatus(actv);
    }

    public static void closeFingerprint(Context actv) {
        OnlyForApp.closeFingerprint(actv);
    }

    public static void openFingerprint(Context actv, boolean isCanSet) {
        OnlyForApp.openFingerprint(actv, isCanSet);
    }

    public static void upgradeIdentity(Context actv) {
        OnlyForApp.upgradeIdentity(actv);
    }

    public static void identify(Context actv) {
        b.f(actv);
    }

    public static void verifyShortPwd(Context context, String uuid) {
        b.a(context, uuid);
    }

    public static void verifyFace(Context context, String uuid) {
        b.f(context, uuid);
    }

    public static void clearData() {
        LogicUtil.finishPay();
        EventBusUtil.clearData();
    }

    public static String getSdkVerisonName() {
        return BuildConfig.VERSION_NAME;
    }

    public static void openSdkLog() {
        SdkConfig.isLogEnable = true;
    }

    public static void configAccountDetailNeedRedPaper(Context context, boolean need) {
        SharedPreferencesUtil.saveBoolean(context, Constants.SHARED_WALLET_NEED_RED_PAPER, need);
    }
}
