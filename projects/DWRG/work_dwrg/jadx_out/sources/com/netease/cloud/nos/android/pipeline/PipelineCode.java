package com.netease.cloud.nos.android.pipeline;

/* loaded from: classes.dex */
public class PipelineCode {
    public static final int BACK_OFFSET = 13;
    public static final int CHANNEL_EXCEPTION = 2;
    public static final int CHANNEL_INACTIVE = 1;
    public static final int FAILED_BREAK_RESP = 4;
    public static final int FAILED_READFILE = 11;
    public static final int FAILED_UPLOAD_RESP = 7;
    public static final int INVALID_BREAK_OFFSET = 5;
    public static final int INVALID_SENDOFFSET = 10;
    public static final int INVALID_UPLOAD_OFFSET = 9;
    public static final int INVALID_UPLOAD_RESP = 8;
    public static final int NO_BREAK_RESP = 3;
    public static final int NO_UPLOAD_RESP = 6;
    public static final int SUCCESS = 0;
    public static final int UNKNOWN_REASON = 14;
    public static final int UPLOAD_CANCELLED = 12;

    public static boolean isSuccess(int code) {
        return code == 0;
    }

    public static String getDes(int code) {
        switch (code) {
            case 0:
                return "file upload success";
            case 1:
                return "channel is inactive";
            case 2:
                return "channel exception is catched";
            case 14:
                return "failed with unknown reason";
            default:
                return "failed with unknown reason";
        }
    }
}
