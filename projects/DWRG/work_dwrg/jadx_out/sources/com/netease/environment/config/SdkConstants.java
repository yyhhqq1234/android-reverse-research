package com.netease.environment.config;

/* loaded from: classes.dex */
public class SdkConstants {
    public static final long AN_HOUR = 3600000;
    public static final long A_MUNITE = 60000;
    public static final long A_SECOND = 1000;
    public static final String ID_REGULAR_NONE = "-1";
    public static final String JSON_KEY_ENABLE = "enable";
    public static final String JSON_KEY_INTERCEPT = "intercept";
    public static final String JSON_KEY_NICKNAME = "nickname";
    public static final String JSON_KEY_REGEX = "regex";
    public static final String JSON_KEY_SETTINGS = "settings";
    public static final String JSON_KEY_SHIELD = "shield";
    public static final String JSON_KEY_TASK_TIMEOUT = "taskTimeout";
    public static final String JSON_KEY_UPDATE_INTERVAL = "updateInterval";
    public static final int LIMIT_LOG_LENGTH = 102400;
    public static final String MODE_FAST = "fast";
    public static final String MODE_NORMAL = "normal";
    public static final String PRE_CHANNEL = "channel=";
    public static final String PRE_CONTENT = "content=";
    public static final String PRE_LEVEL = "level=";
    public static final int RESULT_CODE_ERROR = 100;
    public static final int RESULT_CODE_INTERCEPT = 201;
    public static final int RESULT_CODE_PASS = 200;
    public static final int RESULT_CODE_SHIELD = 202;
    public static final String RESULT_MESSAGE_CONTEXT_NULL = "context is null";
    public static final String RESULT_MESSAGE_EMPTY = "param is null or empty";
    public static final String RESULT_MESSAGE_ERROR = "error";
    public static final String RESULT_MESSAGE_EXCEPTION = "exception";
    public static final String RESULT_MESSAGE_FILE_FAIL = "fail to get the file";
    public static final String RESULT_MESSAGE_INTERCEPT = "intercept";
    public static final String RESULT_MESSAGE_PASS = "pass";
    public static final String RESULT_MESSAGE_SHIELD = "shield";
    public static final String RESULT_MESSAGE_TIMEOUT = "time out";
    public static final String SYSTEM = "android";
    private static final String TAG = SdkConstants.class.getSimpleName();
    public static final long TIMEOUT_PER_REGULAR = 1000;

    public static String getInitUrl() {
        String url = "http://" + SdkData.getHost() + "/initbox_android_" + SdkData.getGameId();
        return url + (SdkData.getIfTest() ? "test.html" : ".html");
    }
}
