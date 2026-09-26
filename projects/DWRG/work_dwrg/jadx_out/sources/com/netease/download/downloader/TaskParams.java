package com.netease.download.downloader;

import com.netease.download.Const;
import com.netease.download.check.CheckTime;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class TaskParams {
    private ConcurrentHashMap<String, Integer> mCdnerrorMap;
    private CheckTime mCheckTime;
    private int mConfigRetCode;
    private String mConfigSerUrl;
    private DownloadParams mDownloadParams;
    private String mErrorcdn;
    private boolean mFinished;
    private String mGateway;
    private String mGatewayDns;
    private int mHttpdnsErrCode;
    private String mHttpdnsErrHost;
    private String mHttpdnsResolvedIp;
    private String mHttpdnsUsedDnsips;
    private boolean mIsUseHttpDns;
    private boolean mIsUseLvsip;
    private int mLvsipErrCode;
    private String mLvsipErrHost;
    private String mLvsipUrl;
    private String mNetDns;
    private ConcurrentHashMap<String, Double> mPartAverageSpeedMap;
    private ConcurrentHashMap<String, Integer> mPartResultMap;
    private ConcurrentHashMap<String, String> mPartUrlMap;
    private double mPatchDlspeed;
    private boolean mRemovecdn;
    private String mSlowcdn;
    private long mCdnTopSpeed = 0;
    private int mHttpdnsEdgeIpCount = 0;
    private ArrayList<String> mHttpdnsEdgeIpList = new ArrayList<>();
    private String mTaskId = null;

    public ConcurrentHashMap<String, String> getPartUrlMap() {
        if (this.mPartUrlMap == null) {
            this.mPartUrlMap = new ConcurrentHashMap<>();
        }
        return this.mPartUrlMap;
    }

    public void setPartUrlMap(ConcurrentHashMap<String, String> mPartUrlMap) {
        this.mPartUrlMap = mPartUrlMap;
    }

    public ConcurrentHashMap<String, Integer> getPartResultMap() {
        if (this.mPartResultMap == null) {
            this.mPartResultMap = new ConcurrentHashMap<>();
        }
        return this.mPartResultMap;
    }

    public void setPartResultMap(ConcurrentHashMap<String, Integer> mPartResultMap) {
        this.mPartResultMap = mPartResultMap;
    }

    public String getNetDns() {
        return this.mNetDns;
    }

    public void setNetDns(String mNetDns) {
        this.mNetDns = mNetDns;
    }

    public String getGateway() {
        return this.mGateway;
    }

    public void setGateway(String mGateway) {
        this.mGateway = mGateway;
    }

    public String getGatewayDns() {
        return this.mGatewayDns;
    }

    public void setGatewayDns(String mGatewayDns) {
        this.mGatewayDns = mGatewayDns;
    }

    public boolean isUseHttpDns() {
        return this.mIsUseHttpDns;
    }

    public void setUseHttpDns(boolean isUseHttpDns) {
        this.mIsUseHttpDns = isUseHttpDns;
    }

    public double getPatchDlspeed() {
        return this.mPatchDlspeed;
    }

    public void setPatchDlspeed(double mPatchDlspeed) {
        this.mPatchDlspeed = mPatchDlspeed;
    }

    public ConcurrentHashMap<String, Double> getPartAverageSpeedMap() {
        if (this.mPartAverageSpeedMap == null) {
            this.mPartAverageSpeedMap = new ConcurrentHashMap<>();
        }
        return this.mPartAverageSpeedMap;
    }

    public void setPartAverageSpeedMap(ConcurrentHashMap<String, Double> mPartAverageSpeedMap) {
        this.mPartAverageSpeedMap = mPartAverageSpeedMap;
    }

    public boolean isUseLvsip() {
        return this.mIsUseLvsip;
    }

    public void setUseLvsip(boolean isUseLvsip) {
        this.mIsUseLvsip = isUseLvsip;
    }

    public int getConfigRetCode() {
        return this.mConfigRetCode;
    }

    public void setConfigRetCode(int mConfigRetCode) {
        this.mConfigRetCode = mConfigRetCode;
    }

    public String getConfigSerUrl() {
        return this.mConfigSerUrl;
    }

    public void setConfigSerUrl(String mConfigSerUrl) {
        this.mConfigSerUrl = mConfigSerUrl;
    }

    public String getLvsipErrHost() {
        return this.mLvsipErrHost;
    }

    public void setLvsipErrHost(String mLvsipErrHost) {
        this.mLvsipErrHost = mLvsipErrHost;
    }

    public int getLvsipErrCode() {
        return this.mLvsipErrCode;
    }

    public void setLvsipErrCode(int mLvsipErrCode) {
        this.mLvsipErrCode = mLvsipErrCode;
    }

    public String getLvsipUrl() {
        return this.mLvsipUrl;
    }

    public void setLvsipUrl(String mLvsipUrl) {
        this.mLvsipUrl = mLvsipUrl;
    }

    public String getTaskId() {
        return this.mTaskId;
    }

    public void setTaskId(String taskId) {
        this.mTaskId = taskId;
    }

    public ArrayList<String> getHttpdnsEdgeIpList() {
        return this.mHttpdnsEdgeIpList;
    }

    public void addHttpdnsEdgeIp(String ip) {
        this.mHttpdnsEdgeIpList.add(ip);
    }

    public int getHttpdnsEdgeIpCount() {
        return this.mHttpdnsEdgeIpCount;
    }

    public void setHttpdnsEdgeIpCount(int mHttpdnsEdgeIpCount) {
        this.mHttpdnsEdgeIpCount = mHttpdnsEdgeIpCount;
    }

    public String getUsedDnsips() {
        return this.mHttpdnsUsedDnsips;
    }

    public void setUsedDnsips(String httpdnsUsedDnsips) {
        this.mHttpdnsUsedDnsips = httpdnsUsedDnsips;
    }

    public String getHttpdnsResolvedIp() {
        return this.mHttpdnsResolvedIp;
    }

    public void setHttpdnsResolvedIp(String mHttpdnsResolvedIp) {
        this.mHttpdnsResolvedIp = mHttpdnsResolvedIp;
    }

    public int getHttpdnsErrCode() {
        return this.mHttpdnsErrCode;
    }

    public void setHttpdnsErrCode(int mHttpdnsErrCode) {
        this.mHttpdnsErrCode = mHttpdnsErrCode;
    }

    public String getHttpdnsErrHost() {
        return this.mHttpdnsErrHost;
    }

    public void setHttpdnsErrHost(String mHttpdnsErrHost) {
        this.mHttpdnsErrHost = mHttpdnsErrHost;
    }

    public DownloadParams getDownloadParams() {
        return this.mDownloadParams;
    }

    public void setDownloadParams(DownloadParams mDownloadParams) {
        this.mDownloadParams = mDownloadParams;
    }

    public CheckTime getCheckTime() {
        return this.mCheckTime;
    }

    public void setCheckTime(CheckTime mCheckTime) {
        this.mCheckTime = mCheckTime;
    }

    public boolean isRemovecdn() {
        return this.mRemovecdn;
    }

    public void setRemovecdn(boolean mRemovecdn) {
        this.mRemovecdn = mRemovecdn;
    }

    public String getSlowcdn() {
        return this.mSlowcdn;
    }

    public void setSlowcdn(String mSlowcdn) {
        this.mSlowcdn = mSlowcdn;
    }

    public String getErrorcdn() {
        return this.mErrorcdn;
    }

    public void setErrorcdn(String mErrorcdn) {
        this.mErrorcdn = mErrorcdn;
    }

    public boolean isFinished() {
        return this.mFinished;
    }

    public void setFinished(boolean mFinished) {
        this.mFinished = mFinished;
    }

    public ConcurrentHashMap<String, Integer> getCdnerrorMap() {
        if (this.mCdnerrorMap == null) {
            this.mCdnerrorMap = new ConcurrentHashMap<>();
        }
        return this.mCdnerrorMap;
    }

    public void setCdnerrorMap(ConcurrentHashMap<String, Integer> mCdnerrorMap) {
        this.mCdnerrorMap = mCdnerrorMap;
    }

    public long getCdnTopSpeed() {
        return this.mCdnTopSpeed;
    }

    public void setCdnTopSpeed(long mCdnTopSpeed) {
        this.mCdnTopSpeed = mCdnTopSpeed;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
