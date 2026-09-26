package com.netease.epay.sdk.controller;

import android.support.v4.util.ArrayMap;

/* loaded from: classes.dex */
public class RegisterCenter {
    public static final String CARD = "card";
    public static final String CLOSE_RISK = "close_risk";
    public static final String DEPOSIT_WITHDRAW = "dw";
    public static final String FACE = "face";
    public static final String FINGER = "finger";
    public static final String IDCARD = "idcard";
    public static final String MODIFY_PWD = "modifyPwd";
    public static final String PAY = "pay";
    public static final String REGISTER = "register";
    public static final String RESET_PWD = "resetPwd";
    public static final String RISK = "risk";
    public static final String RSA = "rsa";
    public static final String SET_PWD = "setPwd";
    public static final String VERIFY_PWD = "verifyPwd";
    public static final String VERIFY_SMS = "verifySms";
    public static final String WALLET = "wallet";
    private static ArrayMap<String, String> controllerMap;

    public static String getController(String key) {
        if (controllerMap == null) {
            synchronized (RegisterCenter.class) {
                if (controllerMap == null) {
                    initMap();
                }
            }
        }
        return controllerMap.get(key);
    }

    private static void initMap() {
        controllerMap = new ArrayMap<>(18);
        controllerMap.put(FACE, "com.netease.epay.sdk.face.controller.FaceController");
        controllerMap.put(IDCARD, "com.netease.epay.sdk.face.controller.IDCardRecognizeController");
        controllerMap.put("risk", "com.netease.epay.sdk.risk.RiskController");
        controllerMap.put(RESET_PWD, "com.netease.epay.sdk.psw.ResetPwdController");
        controllerMap.put(SET_PWD, "com.netease.epay.sdk.psw.SetShortPwdController");
        controllerMap.put(VERIFY_PWD, "com.netease.epay.sdk.psw.VerifyPwdController");
        controllerMap.put(MODIFY_PWD, "com.netease.epay.sdk.psw.ModifyPwdController");
        controllerMap.put("register", "com.netease.epay.sdk.register.DeviceRegisterController");
        controllerMap.put(CARD, "com.netease.epay.sdk.card.AddOrVerifyCardController");
        controllerMap.put(RSA, "com.netease.epay.sdk.rsa.ManageRSAController");
        controllerMap.put("pay", "com.netease.epay.sdk.pay.PayController");
        controllerMap.put(FINGER, "com.netease.epay.sdk.finger.FingerController");
        controllerMap.put(DEPOSIT_WITHDRAW, "com.netease.epay.sdk.depositwithdraw.DepositWithdrawController");
        controllerMap.put(CLOSE_RISK, "com.netease.epay.sdk.closeRisk.CloseRiskController");
        controllerMap.put(WALLET, "com.netease.epay.sdk.wallet.WalletController");
        controllerMap.put(VERIFY_SMS, "com.netease.epay.sdk.sms.VerifySmsController");
    }
}
