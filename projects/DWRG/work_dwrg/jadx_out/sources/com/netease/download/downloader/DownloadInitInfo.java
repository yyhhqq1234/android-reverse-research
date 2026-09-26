package com.netease.download.downloader;

import android.content.Context;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import com.netease.download.Const;
import com.netease.download.network.NetUtil;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.push.utils.PushConstants;

/* loaded from: classes.dex */
public class DownloadInitInfo {
    private static DownloadInitInfo sDownloadInitInfo = null;
    public String mConfigurl = null;
    private String mLocalIp = null;
    private String mLocalgateway = null;
    private String mProjectId = null;
    private boolean mWifiOnly = true;
    private boolean mLogOpen = false;
    private String mType = null;
    private String mOverSea = "-1";
    private String mDownloadId = null;
    private int mThreadnum = 3;
    private String mLogTest = null;
    private Context mContext = null;
    private long mAllSize = 0;

    private DownloadInitInfo() {
    }

    public static DownloadInitInfo getInstances() {
        if (sDownloadInitInfo == null) {
            sDownloadInitInfo = new DownloadInitInfo();
        }
        return sDownloadInitInfo;
    }

    public void setContext(Context context) {
        if (this.mContext == null) {
            this.mContext = context;
            initLocalIp();
        }
    }

    public void setProjectId(String projectId) {
        this.mProjectId = projectId;
    }

    public void setAllSize(long allSize) {
        this.mAllSize = allSize;
    }

    public long getAllSize() {
        return this.mAllSize;
    }

    public void setOverSea(String overSea) {
        this.mOverSea = overSea;
    }

    public String getOverSea() {
        return this.mOverSea;
    }

    public boolean ismWifiOnly() {
        return this.mWifiOnly;
    }

    public void setmWifiOnly(boolean mWifiOnly) {
        this.mWifiOnly = mWifiOnly;
    }

    public String getmType() {
        return this.mType;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public String getmLogTest() {
        return this.mLogTest;
    }

    public void setmLogTest(String mLogTest) {
        this.mLogTest = mLogTest;
    }

    public String getmDownloadId() {
        return this.mDownloadId;
    }

    public void setmDownloadId(String mDownloadId) {
        this.mDownloadId = mDownloadId;
    }

    public boolean ismLogOpen() {
        return this.mLogOpen;
    }

    public void setmLogOpen(boolean mLogOpen) {
        this.mLogOpen = mLogOpen;
    }

    public int getmThreadnum() {
        return this.mThreadnum;
    }

    public void setmThreadnum(int mThreadnum) {
        this.mThreadnum = mThreadnum;
    }

    private void initLocalIp() {
        if (this.mLocalIp == null && this.mContext != null) {
            this.mLocalIp = NetUtil.getLocalIpAddress(this.mContext);
        }
    }

    public String getLocalIp() {
        return this.mLocalIp;
    }

    public String getProjectId() {
        return this.mProjectId;
    }

    public String getmConfigurl() {
        return this.mConfigurl;
    }

    public void setmConfigurl(String mConfigurl) {
        this.mConfigurl = mConfigurl;
    }

    public String getLocalgateway() {
        if (this.mLocalgateway == null) {
            this.mLocalgateway = getLocalgateway(this.mContext);
        }
        return this.mLocalgateway;
    }

    public void setLocalgateway(String sLocalgateway) {
        this.mLocalgateway = sLocalgateway;
    }

    private String getLocalgateway(Context context) {
        WifiManager my_wifiManager = (WifiManager) context.getSystemService("wifi");
        DhcpInfo dhcpInfo = my_wifiManager.getDhcpInfo();
        return intToIp(dhcpInfo.gateway);
    }

    private String intToIp(int paramInt) {
        return String.valueOf(paramInt & 255) + PushConstants.KEY_SEPARATOR + ((paramInt >> 8) & 255) + PushConstants.KEY_SEPARATOR + ((paramInt >> 16) & 255) + PushConstants.KEY_SEPARATOR + ((paramInt >> 24) & 255);
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
