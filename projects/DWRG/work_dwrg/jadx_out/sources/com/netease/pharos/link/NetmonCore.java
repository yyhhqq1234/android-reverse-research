package com.netease.pharos.link;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.linkcheck.CheckOverNotifyListener;
import com.netease.pharos.linkcheck.CycleTaskStopListener;
import com.netease.pharos.report.NetmonReport;
import com.netease.pharos.util.LogUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class NetmonCore implements Callable<Integer> {
    private static final String TAG = "NetmonProxy";
    public static Map<Integer, NetmonReport> mNetmonReportMap = new HashMap();
    private int mCount;
    private String mExtra;
    private String mIp;
    private int mPort;
    private String mRegion;
    private int mSize;
    private int mTime;
    private int mType;
    private LinkCheckListener mListener = null;
    private CycleTaskStopListener mCycleTaskStopListener = null;
    private CheckOverNotifyListener mCheckOverNotifyListener = null;
    private int mInterval = -1;

    public void init(int type, String ip, int port, int count, int time, int size) {
        this.mType = type;
        this.mIp = ip;
        this.mPort = port;
        this.mCount = count;
        this.mTime = time;
        this.mSize = size;
    }

    public String getmExtra() {
        return this.mExtra;
    }

    public void setmExtra(String mExtra) {
        this.mExtra = mExtra;
    }

    public void setRegion(String region) {
        this.mRegion = region;
    }

    public String getRegion() {
        return this.mRegion;
    }

    public int getmInterval() {
        return this.mInterval;
    }

    public void setmInterval(int mInterval) {
        this.mInterval = mInterval;
    }

    public LinkCheckListener getmListener() {
        return this.mListener;
    }

    public void setmListener(LinkCheckListener mListener) {
        this.mListener = mListener;
    }

    public CycleTaskStopListener getmCycleTaskStopListener() {
        return this.mCycleTaskStopListener;
    }

    public void setmCycleTaskStopListener(CycleTaskStopListener mCycleTaskStopListener) {
        this.mCycleTaskStopListener = mCycleTaskStopListener;
    }

    public CheckOverNotifyListener getmCheckOverNotifyListener() {
        return this.mCheckOverNotifyListener;
    }

    public void setmCheckOverNotifyListener(CheckOverNotifyListener mCheckOverNotifyListener) {
        this.mCheckOverNotifyListener = mCheckOverNotifyListener;
    }

    public int check(int type, String ip, int port, int count, int time, int size) {
        LogUtil.i(TAG, "NetmonCore check");
        NetmonReport netmonReport = new NetmonReport();
        netmonReport.setPacketCount(count);
        mNetmonReportMap.put(Integer.valueOf(type), netmonReport);
        LinkCheck linkCheck = new LinkCheck();
        if (!TextUtils.isEmpty(this.mRegion)) {
            linkCheck.setRegion(this.mRegion);
        }
        if (-1 != this.mInterval) {
            linkCheck.setInterval(this.mInterval);
        }
        if (this.mListener != null) {
            linkCheck.setmListener(this.mListener);
        }
        if (this.mCycleTaskStopListener != null) {
            linkCheck.setmCycleTaskStopListener(this.mCycleTaskStopListener);
        }
        if (this.mCheckOverNotifyListener != null) {
            linkCheck.setmCheckOverNotifyListener(this.mCheckOverNotifyListener);
        }
        if (!TextUtils.isEmpty(this.mExtra)) {
            linkCheck.setmExtra(this.mExtra);
        }
        int result = linkCheck.check(type, ip, port, count, time, size);
        return result;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        return Integer.valueOf(check(this.mType, this.mIp, this.mPort, this.mCount, this.mTime, this.mSize));
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("\n");
        result.append("mType=").append(this.mType).append("\n");
        result.append("mIp=").append(this.mIp).append("\n");
        return result.toString();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
