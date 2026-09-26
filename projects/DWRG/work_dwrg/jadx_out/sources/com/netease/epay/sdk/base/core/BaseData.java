package com.netease.epay.sdk.base.core;

import com.netease.epay.sdk.base.model.Card;
import java.math.BigDecimal;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BaseData {
    public static String accountId;
    public static String accountMobile;
    public static String accountState;
    public static String appId;
    public static String appNameFromSelf;
    public static String appPlatformId;
    public static String appVersionFromSelf;
    public static ArrayList<Card> cardInfos;
    public static String cookie;
    public static String cookieType;
    public static String deviceId;
    public static boolean hasShortPwd = false;
    public static String loginId;
    public static String loginToken;
    public static int mEnd;
    public static int mStart;
    public static int nEnd;
    public static int nStart;
    public static String neURSKey;
    public static BigDecimal orderAmount;
    public static String orderId;
    public static String orderPlatformId;
    public static BigDecimal originalAmount;
    public static JSONObject payAdditionalInfo;
    public static String platformSign;
    public static String platformSignExpireTime;
    public static JSONObject riskInfo;
    public static String servicePhone;
    public static String sessionId;
    public static String timeStamp;
    public static String userName;
    public static int wordEnd;
    public static int wordStart;

    public static void resetData() {
        neURSKey = null;
        loginToken = null;
        loginId = null;
        cookieType = null;
        cookie = null;
        platformSignExpireTime = null;
        platformSign = null;
        appPlatformId = null;
        timeStamp = null;
        orderPlatformId = null;
        orderId = null;
        nEnd = 0;
        nStart = 0;
        mEnd = 0;
        mStart = 0;
        wordEnd = 0;
        wordStart = 0;
        servicePhone = null;
        accountMobile = null;
        accountState = null;
        sessionId = null;
        cardInfos = null;
        userName = null;
        hasShortPwd = false;
        appVersionFromSelf = null;
        appNameFromSelf = null;
        deviceId = null;
        appId = null;
        accountId = null;
        originalAmount = null;
        orderAmount = null;
        payAdditionalInfo = null;
        riskInfo = null;
    }

    public static String getSerivcePhone() {
        return (servicePhone == null || servicePhone.length() <= 0) ? "400-0881188" : servicePhone;
    }
}
