package com.netease.pharos;

import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class NetmonConst {
    public static final int CONNECT_TIMEOUT_TIME = 5000;
    public static final String HEADER_HEADER_HOST = "Host";
    public static final String HEADER_RANGE = "Range";
    public static final String HEADER_RANGE_BYTES_PREF = "bytes=";
    public static final String HEADER_RANGE_BYTES_SUFF = "-";
    public static final String HEADER_RANGE_END = "END";
    public static final String HEADER_RANGE_START = "START";
    public static final String METHOD_GET = "GET";
    public static final String METHOD_POST = "POST";
    public static final int READ_TIMEOUT_TIME = 5000;

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
