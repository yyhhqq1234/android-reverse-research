package com.netease.pharos.report;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class NetmonReport {
    private String mCliIp;
    private String mCliMtr;
    private long mKcptestTime;
    private String mLinktestId;
    private String mLinktestProtocol;
    private String mNetCarrier;
    private String mNetworkCondition;
    private long mPacketCount;
    public long mPacketLossCount = 0;
    private String mSvrIp;
    private String mSvrMtr;
    private long mTcptestTime;
    private String mTimeZone;
    private long mUdptestTime;
    private int mWifiSignal;

    public String getLinktestId() {
        return this.mLinktestId;
    }

    public void setLinktestId(String mLinktestId) {
        this.mLinktestId = mLinktestId;
    }

    public String getNetworkCondition() {
        return this.mNetworkCondition;
    }

    public void setNetworkCondition(String mNetworkCondition) {
        this.mNetworkCondition = mNetworkCondition;
    }

    public int getWifiSignal() {
        return this.mWifiSignal;
    }

    public void setWifiSignal(int mWifiSignal) {
        this.mWifiSignal = mWifiSignal;
    }

    public String getCliIp() {
        return this.mCliIp;
    }

    public void setCliIp(String mCliIp) {
        this.mCliIp = mCliIp;
    }

    public String getSvrIp() {
        return this.mSvrIp;
    }

    public void setSvrIp(String mSvrIp) {
        this.mSvrIp = mSvrIp;
    }

    public String getTimeZone() {
        return this.mTimeZone;
    }

    public void setTimeZone(String mTimeZone) {
        this.mTimeZone = mTimeZone;
    }

    public String getNetCarrier() {
        return this.mNetCarrier;
    }

    public void setNetCarrier(String mNetCarrier) {
        this.mNetCarrier = mNetCarrier;
    }

    public String getLinktestProtocol() {
        return this.mLinktestProtocol;
    }

    public void setLinktestProtocol(String mLinktestProtocol) {
        this.mLinktestProtocol = mLinktestProtocol;
    }

    public long getTcptestTime() {
        return this.mTcptestTime;
    }

    public void setTcptestTime(long mTcptestTime) {
        this.mTcptestTime = mTcptestTime;
    }

    public long getKcptestTime() {
        return this.mKcptestTime;
    }

    public void setKcptestTime(long mKcptestTime) {
        this.mKcptestTime = mKcptestTime;
    }

    public long getUdptestTime() {
        return this.mUdptestTime;
    }

    public void setUdptestTime(long mUdptestTime) {
        this.mUdptestTime = mUdptestTime;
    }

    public String getCliMtr() {
        return this.mCliMtr;
    }

    public void setCliMtr(String mCliMtr) {
        this.mCliMtr = mCliMtr;
    }

    public String getSvrMtr() {
        return this.mSvrMtr;
    }

    public void setSvrMtr(String mSvrMtr) {
        this.mSvrMtr = mSvrMtr;
    }

    public long getPacketLossCount() {
        return this.mPacketLossCount;
    }

    public synchronized void addPacketLossCount() {
        this.mPacketLossCount++;
    }

    public long getPacketCount() {
        return this.mPacketCount;
    }

    public void setPacketCount(long mPacketCount) {
        this.mPacketCount = mPacketCount;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
