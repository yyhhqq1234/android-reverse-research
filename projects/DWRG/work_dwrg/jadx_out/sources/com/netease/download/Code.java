package com.netease.download;

import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class Code {
    public static final int Cancel = 12;
    public static final int CfgFileDownloadFaild = 16;
    public static final int InvalidDomain = 15;
    public static final int InvalidParams = 14;
    public static final int InvalidTimeZone = 17;
    public static final int LinkError = 1;
    public static final int MD5Error = 3;
    public static final int ReadContentTimeout = 13;
    public static final int SizeError = 2;
    public static final int SpaceNotEnough = 5;
    public static final int Success = 0;
    public static final int UnknownError = 11;
    public static final int WriteFileError = 4;

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
