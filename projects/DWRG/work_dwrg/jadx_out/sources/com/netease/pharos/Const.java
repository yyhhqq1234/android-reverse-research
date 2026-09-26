package com.netease.pharos;

import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class Const {
    public static final int CHECK_DNS = 5;
    public static final int CHECK_KCP = 3;
    public static final int CHECK_PING = 4;
    public static final int CHECK_TCP = 1;
    public static final int CHECK_UDP = 2;
    public static final int FINISH = 1;
    public static final int INIT = 0;
    public static final int KCP_PORT = 9997;
    public static final int PROGRESS = 2;
    public static final int PROTODCAL_KCP = 3;
    public static final int PROTODCAL_TCP = 1;
    public static final int PROTODCAL_UDP = 2;
    public static final int QOS_CYCLE_DELAY = 1;
    public static final int QOS_CYCLE_INTERVAL = 1;
    public static final String QOS_DEFAULT = "-11";
    public static final String QOS_FAIL = "0";
    public static final String QOS_IS_NOT_ISP = "-10";
    public static final String QOS_NOT_FIT_THRESHOLD = "-9";
    public static final String QOS_NO_SUPPORT = "-1";
    public static final String QOS_PREGRESS = "11";
    public static final String QOS_SUCCESS = "1";
    public static final String QOS_TEST = "2";
    public static final int REPORT_DOWNLOAD_NETMON_CONFIG_FIALD = 2;
    public static final int REPORT_LINK_RESULT = 1;
    public static final int REPORT_LVSIP_FAIL = 3;
    public static final String REPORT_URL = "https://netlink-sigma.proxima.nie.netease.com";
    public static final int TCP_PORT = 9998;
    public static final int TIME_OUT = 800;
    public static final int UDP_PORT = 9999;
    public static final String UPLOAD_FILE_NAME = "upload_file.txt";
    public static final int UPLOAD_FILE_SIZE = 2048;
    public static final int UPLOAD_FILE_SIZE_32 = 32;
    public static final int UPLOAD_FILE_SIZE_512 = 512;
    public static final String UPLOAD_SERVER_IP = "123.58.164.135";
    public static final String VERSION = "1.1.5";
    public static String REGION_CONFIG_URL = "https://impression.update.netease.com/explore_%s.txt";
    public static String QOS_LIGHTEN_URL = "https://impression.update.netease.com/lighten/pathn_%s_%s.txt";

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
