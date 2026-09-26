package com.netease.pharos.config;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CheckResult {
    private static final String TAG = "CheckResult";
    private String mAvgRtt;
    private String mExtra;
    private String mIp;
    private String mLoss;
    private int mPacketCount;
    private int mPacketLossCount;
    private int mPort;
    private int mProtocol;
    private String mRegion;
    private int mPacketBytesCount = 0;
    private List<Long> mTimeList = new ArrayList();
    private ArrayList<String> mIpList = new ArrayList<>();

    public String getmRegion() {
        return this.mRegion;
    }

    public void setmRegion(String mRegion) {
        this.mRegion = mRegion;
    }

    public int getProtocol() {
        return this.mProtocol;
    }

    public int getmPort() {
        return this.mPort;
    }

    public void setmPort(int mPort) {
        this.mPort = mPort;
    }

    public void setProtocol(int mProtocol) {
        this.mProtocol = mProtocol;
    }

    public int getmPacketCount() {
        return this.mPacketCount;
    }

    public void setPacketCount(int mPacketCount) {
        this.mPacketCount = mPacketCount;
    }

    public String getIp() {
        return this.mIp;
    }

    public void setIp(String mIp) {
        this.mIp = mIp;
    }

    public String getmAvgRtt() {
        return this.mAvgRtt;
    }

    public void setmAvgRtt(String mAvgRtt) {
        this.mAvgRtt = mAvgRtt;
    }

    public String getmLoss() {
        return this.mLoss;
    }

    public void setmLoss(String mLoss) {
        this.mLoss = mLoss;
    }

    public ArrayList<String> getmIpList() {
        return this.mIpList;
    }

    public void setmIpList(ArrayList<String> mIpList) {
        this.mIpList = mIpList;
    }

    public String getmExtra() {
        return this.mExtra;
    }

    public void setmExtra(String mExtra) {
        this.mExtra = mExtra;
    }

    public int getPacketBytesCount() {
        return this.mPacketBytesCount;
    }

    public void setPacketBytesCount(int mPacketBytesCount) {
        this.mPacketBytesCount = mPacketBytesCount;
    }

    public List<Long> getTimeList() {
        return this.mTimeList;
    }

    public void addTime(long speed) {
        this.mTimeList.add(Long.valueOf(speed));
    }

    public int getPacketLossCount() {
        return this.mPacketLossCount;
    }

    public void setPacketLossCount(int mPacketLossCount) {
        this.mPacketLossCount = mPacketLossCount;
    }

    public long getMinTime() {
        if (this.mTimeList == null || this.mTimeList.size() <= 0) {
            return -1L;
        }
        long minSpeed = this.mTimeList.get(0).longValue();
        for (int i = 1; i < this.mTimeList.size(); i++) {
            if (0 != this.mTimeList.get(i).longValue()) {
                minSpeed = Math.min(minSpeed, this.mTimeList.get(i).longValue());
            }
        }
        if (0 == minSpeed) {
            return -1L;
        }
        return minSpeed;
    }

    public long getMaxTime() {
        if (this.mTimeList == null || this.mTimeList.size() <= 0) {
            return -1L;
        }
        long maxSpeed = this.mTimeList.get(0).longValue();
        for (int i = 1; i < this.mTimeList.size(); i++) {
            maxSpeed = Math.max(maxSpeed, this.mTimeList.get(i).longValue());
        }
        return maxSpeed;
    }

    public long getAvgTime() {
        LogUtil.i(TAG, "getAvgTime mTimeList=" + this.mTimeList.toString());
        if (this.mTimeList == null || this.mTimeList.size() <= 0) {
            return -1L;
        }
        int count = 0;
        for (int i = 0; i < this.mTimeList.size(); i++) {
            count = (int) (count + this.mTimeList.get(i).longValue());
        }
        return count / this.mTimeList.size();
    }

    public long getAvgSpeed() {
        long avgTime = getAvgTime();
        if (this.mPacketBytesCount == 0 || -1 == avgTime || 0 == getAvgTime()) {
            return -1L;
        }
        long speed = ((this.mPacketBytesCount / getAvgTime()) * 1000) / 1024;
        return speed;
    }

    public double getLoss() {
        if (getmPacketCount() == 0) {
            return -1.0d;
        }
        double loss = getPacketLossCount() / getmPacketCount();
        return loss;
    }

    public double getStddev() {
        double result = Math.sqrt(Math.abs(getVariance()));
        return result;
    }

    public double getVariance() {
        if (this.mTimeList == null || this.mTimeList.size() <= 0) {
            return -1.0d;
        }
        int count = this.mTimeList.size();
        long sqrsum = getSquareSum();
        long average = getAvgTime();
        return (sqrsum - ((count * average) * average)) / count;
    }

    public long getSquareSum() {
        if (this.mTimeList == null || this.mTimeList.size() == 0) {
            return -1L;
        }
        int len = this.mTimeList.size();
        long sqrsum = 0;
        for (int i = 0; i < len; i++) {
            sqrsum += this.mTimeList.get(i).longValue() * this.mTimeList.get(i).longValue();
        }
        return sqrsum;
    }

    public String getPingInfo() {
        StringBuffer info = new StringBuffer();
        info.append(getProtocol()).append(" ping ").append(getIp()).append(": ").append(getPacketBytesCount()).append(" data bytes\n");
        for (int i = 0; i < getTimeList().size(); i++) {
            info.append(getProtocol()).append(" ").append(getPacketBytesCount()).append(" bytes from ").append(getIp()).append(" seq=").append(i).append(" time=").append(getTimeList().get(i)).append("ms").append("\n");
        }
        info.append("--- ").append(getIp()).append(" ").append(getProtocol()).append(" ping statistics ---").append("\n");
        info.append(getmPacketCount()).append(" packets transmitted, ").append(getmPacketCount() - getPacketLossCount()).append(" packeds received, ").append(getPacketLossCount() / getmPacketCount()).append(" packed loss").append("\n");
        info.append("round-trip min/avg/max/stddev = ").append(getMinTime()).append("/").append(getAvgTime()).append("/").append(getMaxTime()).append("/").append(getStddev()).append("\n");
        return info.toString();
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("\n");
        result.append("mRegion=").append(this.mRegion).append("\n");
        result.append("mProtocol=").append(this.mProtocol).append("\n");
        result.append("mIp=").append(this.mIp).append("\n");
        result.append("mPort=").append(this.mPort).append("\n");
        result.append("mPacketBytesCount=").append(this.mPacketBytesCount).append("\n");
        result.append("mPacketCount=").append(this.mPacketCount).append("\n");
        result.append("mPacketLossCount=").append(this.mPacketLossCount).append("\n");
        result.append("mCalculateLoss=").append(getPacketLossCount() / getmPacketCount()).append("\n");
        result.append("mBestRtt=").append(getMinTime()).append("\n");
        result.append("getAvgTime=").append(getAvgTime()).append("\n");
        result.append("mAvgSpeed=").append(getAvgSpeed()).append("\n");
        result.append("mIpList=").append(this.mIpList.toString()).append("\n");
        result.append("mLoss=").append(this.mLoss).append("\n");
        result.append("mAvgRtt=").append(this.mAvgRtt).append("\n");
        return result.toString();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
