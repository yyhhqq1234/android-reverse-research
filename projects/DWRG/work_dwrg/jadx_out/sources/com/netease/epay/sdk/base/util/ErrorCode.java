package com.netease.epay.sdk.base.util;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ErrorCode {
    public static final String ACCOUNT_STATE_DEPOSIT_UNSUPPORT = "080003";
    public static final String ACCOUNT_STATE_FROZEN = "001";
    public static final String ACCOUNT_STATE_REPORT_LOSS = "002";
    public static final String ACCOUNT_STATE_REPORT_LOSS_TIMEOUT = "003";
    public static final String ADD_CARD_MUST_SET_PWD = "060009";
    public static final String ALERT_ERROR_060023 = "060023";
    public static final String ALERT_ERROR_BANK_CANNOT_DEPOSIT = "040005";
    public static final String ALERT_ERROR_NOT_BIND_CARD = "040005";
    public static final String ALERT_ERROR_NO_ID_INFO_2_RECHARGE = "080003";
    public static final String ALERT_ERROR_RISK_BLOCK = "050002";
    public static final String ALERT_ERROR_RISK_MAX_WRONG = "050004";
    public static final String BALANCE_NOT_WORK = "060023";
    public static final String ERROR_CODE = "-1000";
    public static final String ERROR_CONSTRUCTOR = "未找到controller对应的构造函数";
    public static final String ERROR_KEY = "找不到key对应的controller";
    public static final String ERROR_METHOD = "未找到controller对应start方法";
    public static final String FAIL_ERROR_PARAM = "-107";
    public static final String FAIL_ERROR_PARAM_STRING = "参数非法";
    public static final String FAIL_ERROR_SERVER_SIGN = "-106";
    public static final String FAIL_ERROR_SIGN_STRING = "服务端返回签名错误";
    public static final String FAIL_NETWORK_ERROR = "-102";
    public static final String FAIL_NO_PERMISSION_CODE = "-104";
    public static final String FAIL_NO_PERMISSION_STRING = "用户未授予App权限";
    public static final String FAIL_SDK_ERROR_CODE = "-101";
    public static final String FAIL_SDK_ERROR_STRING = "SDK内部出现错误退出";
    public static final String FAIL_SERVER_RESPONSE_ERROR = "-103";
    public static final String FAIL_SERVER_RESPONSE_STRING = "服务器返回数据有误";
    public static final String FAIL_USER_ABORT_CODE = "-100";
    public static final String FAIL_USER_ABORT_STRING = "用户手动退出该业务";
    public static final String LOGIN_FAIL = "060070";
    public static final String ORDER_MONEY_EXCEED_BALANCE_RSA_NONE = "030028";
    public static final String ORDER_MONEY_EXCEED_BALANCE_RSA_TIMEOUT = "030029";
    public static final String PSW_ERROR_LOCK = "060007";
    public static final String PSW_ERROR_NOT_LOCK = "060006";
    public static final String RISK_BLOCK = "050002";
    public static final String RISK_FAIL = "050001";
    public static final String RISK_LOCKED = "050004";
    public static final String RISK_VERIFY = "050003";
    public static final String SUCCESS = "000000";
    public static final String SYSTEM_ERROR = "000004";
    public static final String WITHDRAW_TIMES_EXCEED = "040018";
    public static final String BANK_MAINTENANCE = "010001";
    public static final String ORDER_MONEY_EXCEED_BANK = "015122";
    public static final String ORDER_MONEY_EXCEED_BANK_DAY = "015123";
    public static final String ORDER_MONEY_EXCEED_BANK_MONTH = "016016";
    public static final String ORDER_MONEY_EXCEED_BANK_YEAR = "016017";
    public static final String CARD_QUOTA_EXCEED = "016006";
    public static final String NOT_ENOUGH_IN_CARD = "014020";
    public static final String CARD_LOGOUT = "016002";
    public static final String CARD_LOSS = "016004";
    public static final String NOT_SUPPORT_BANK_CARD = "017004";
    public static final String NOT_SUPPORT_BANK = "017045";
    public static final String CARD_NOT_SUPPORT_GATE = "018027";
    public static final String NOT_SUPPORT_BANK_PAY = "017047";
    public static final String NOT_ENOUGH_IN_CREDIT = "017050";
    public static final String PAY_TIMES_EXCEED = "017051";
    public static final String CARD_NOT_SUPPORT_RMB = "017055";
    public static final String CARD_NOT_SUPPORT_PAY = "018016";
    public static final String BANK_MAINTENANCE_WITHDRAW = "040023";
    public static final List<String> changeBankList = Arrays.asList(BANK_MAINTENANCE, ORDER_MONEY_EXCEED_BANK, ORDER_MONEY_EXCEED_BANK_DAY, ORDER_MONEY_EXCEED_BANK_MONTH, ORDER_MONEY_EXCEED_BANK_YEAR, CARD_QUOTA_EXCEED, NOT_ENOUGH_IN_CARD, CARD_LOGOUT, CARD_LOSS, ORDER_MONEY_EXCEED_BANK_MONTH, ORDER_MONEY_EXCEED_BANK_YEAR, NOT_SUPPORT_BANK_CARD, NOT_SUPPORT_BANK, CARD_NOT_SUPPORT_GATE, NOT_SUPPORT_BANK_PAY, NOT_ENOUGH_IN_CREDIT, PAY_TIMES_EXCEED, CARD_NOT_SUPPORT_RMB, CARD_NOT_SUPPORT_PAY, BANK_MAINTENANCE_WITHDRAW);
    public static final String NOT_SUPPORT_BALANCE = "030021";
    public static final String BALANCE_INSUFFICIENT = "034020";
    public static final String ORDER_MONEY_EXCEED_BALANCE = "035122";
    public static final String ORDER_MONEY_EXCEED_BALANCE_DAY = "035123";
    public static final String ORDER_MONEY_EXCEED = "036006";
    public static final String BALANCE_INSUFFICIENT_WITHDRAW = "040012";
    public static final String ORDER_MONEY_EXCEED_BALANCE_UPGRADE = "030027";
    public static final List<String> balanceErrorList = Arrays.asList(NOT_SUPPORT_BALANCE, BALANCE_INSUFFICIENT, ORDER_MONEY_EXCEED_BALANCE, ORDER_MONEY_EXCEED_BALANCE_DAY, ORDER_MONEY_EXCEED, BALANCE_INSUFFICIENT_WITHDRAW, ORDER_MONEY_EXCEED_BALANCE_UPGRADE);
    public static final List<String> serviceErrorCode = Arrays.asList("040020", "040004");
    public static final String ALERT_BANK_DEALING = "016005";
    public static final String ALERT_RISK_SHUT_DOWN = "016010";
    public static final String ALERT_CARD_CAN_NOT_ONLINE_PAY = "016020";
    public static final String ALERT_CARD_NO_BIND_PHONE = "016022";
    public static final String ALERT_RESIGN_BANK_SMS = "016023";
    public static final String ALERT_CANNOT_QUICK_PAY = "016996";
    public static final String ALERT_PLS_CHANGE_ID = "016997";
    public static final String ALERT_MAX_CARD_COUNT = "016999";
    public static final String ALERT_ID_INFO_DIFF = "017039";
    public static final String ALERT_NAME_DIFF_FROM_EPAY = "017044";
    public static final String ALERT_UNKNOW_CARD_DISMISS = "017048";
    public static final String ALERT_ID_TYPE_DIFF_FROM_BANK = "017061";
    public static final String ALERT_BANK_SYSTEM_FIXING = "018014";
    public static final String ALERT_ABC_STOP_FIXING = "018018";
    public static final String ALERT_QUICK_PAY_RECORD_NO_EXIST = "018029";
    public static final String ALERT_CANNOT_FIND_RECHARGE_RECORD = "018033";
    public static final String ALERT_MERCHANTS_ORDER_DIFF = "024015";
    public static final String ALERT_PLS_SET_ID_INFO_2_USE_RED_PAPER_AND_BALANCE = "030013";
    public static final String ALERT_FREEZE_NO_ID_INFO_USER = "030019";
    public static final String ALERT_NO_ID_INFO_CANNOT_USE_BALANCE = "030020";
    public static final String ALERT_ACCOUNT_NO_LEVEL_CANNOT_USE_BALANCE = "030025";
    public static final String ALERT_ERROR_NAME_DIFF_BETWEEN_EPAY_AND_BANK = "040002";
    public static final String ALERT_ERROR_ACCOUNT_CANNOT_DEPOSIT = "040009";
    public static final String ALERT_ERROR_DEPOSIT_ORDER_NOT_INIT = "040030";
    public static final String ALERT_ERROR_DANGER_BEHAVIOR = "050006";
    public static final String ALERT_ERROR_MISS_ID_INFO = "060012";
    public static final String ALERT_ERROR_PAY_PWD = "060013";
    public static final String ALERT_ERROR_NEED_SET_ID_INFO = "060014";
    public static final String ALERT_ERROR_ACCOUNT_FREEZE = "060015";
    public static final String ALERT_ERROR_060016 = "060016";
    public static final String ALERT_ERROR_060017 = "060017";
    public static final String ALERT_ERROR_060024 = "060024";
    public static final String ALERT_ERROR_MAX_DAY_MONEY = "061000";
    public static final String ALERT_ERROR_PAY_PWD_WRONG = "090010";
    public static final String ALERT_ERROR_SHORT_PWD_WRONG = "090020";
    public static final String RISK_FACE_AUDITING = "050012";
    public static final List<String> alertErrorList = Arrays.asList(ALERT_BANK_DEALING, ALERT_RISK_SHUT_DOWN, ALERT_CARD_CAN_NOT_ONLINE_PAY, ALERT_CARD_NO_BIND_PHONE, ALERT_RESIGN_BANK_SMS, ALERT_CANNOT_QUICK_PAY, ALERT_PLS_CHANGE_ID, ALERT_MAX_CARD_COUNT, ALERT_ID_INFO_DIFF, ALERT_NAME_DIFF_FROM_EPAY, ALERT_UNKNOW_CARD_DISMISS, ALERT_ID_TYPE_DIFF_FROM_BANK, ALERT_BANK_SYSTEM_FIXING, ALERT_ABC_STOP_FIXING, ALERT_QUICK_PAY_RECORD_NO_EXIST, ALERT_CANNOT_FIND_RECHARGE_RECORD, ALERT_MERCHANTS_ORDER_DIFF, ALERT_PLS_SET_ID_INFO_2_USE_RED_PAPER_AND_BALANCE, ALERT_FREEZE_NO_ID_INFO_USER, ALERT_NO_ID_INFO_CANNOT_USE_BALANCE, ALERT_ACCOUNT_NO_LEVEL_CANNOT_USE_BALANCE, ALERT_ERROR_NAME_DIFF_BETWEEN_EPAY_AND_BANK, "040005", "040005", ALERT_ERROR_ACCOUNT_CANNOT_DEPOSIT, ALERT_ERROR_DEPOSIT_ORDER_NOT_INIT, "050002", "050004", ALERT_ERROR_DANGER_BEHAVIOR, ALERT_ERROR_MISS_ID_INFO, ALERT_ERROR_PAY_PWD, ALERT_ERROR_NEED_SET_ID_INFO, ALERT_ERROR_ACCOUNT_FREEZE, ALERT_ERROR_060016, ALERT_ERROR_060017, "060023", ALERT_ERROR_060024, ALERT_ERROR_MAX_DAY_MONEY, "080003", ALERT_ERROR_PAY_PWD_WRONG, ALERT_ERROR_SHORT_PWD_WRONG, "080014", RISK_FACE_AUDITING);

    /* loaded from: classes.dex */
    public enum CUSTOM_CODE {
        USER_ABORT(ErrorCode.FAIL_USER_ABORT_CODE, ErrorCode.FAIL_USER_ABORT_STRING),
        SDK_ERROR(ErrorCode.FAIL_SDK_ERROR_CODE, ErrorCode.FAIL_SDK_ERROR_STRING),
        SERVER_ERROR(ErrorCode.FAIL_SERVER_RESPONSE_ERROR, ErrorCode.FAIL_SERVER_RESPONSE_STRING),
        NO_PERMISSION(ErrorCode.FAIL_NO_PERMISSION_CODE, ErrorCode.FAIL_NO_PERMISSION_STRING);

        private String code;
        private String msg;

        CUSTOM_CODE(String code, String msg) {
            this.code = code;
            this.msg = msg;
        }

        public String getCode() {
            return this.code;
        }

        public String getMsg() {
            return this.msg;
        }
    }
}
