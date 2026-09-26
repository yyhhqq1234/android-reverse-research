package com.netease.download.check;

import com.netease.download.Const;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class CheckTime {
    private static final String TAG = "CheckTime";
    private static long mTopSpeed = 0;
    private long mTimeMarked;
    private long mTimeStarted;
    private int slowCount;
    private long mTotalDownloadBytes = 0;
    private long mAverageSpeed = 0;
    private int mCheckMinutes = 0;

    private CheckTime() {
        this.slowCount = 0;
        this.slowCount = 0;
    }

    public static CheckTime newInstance() {
        CheckTime time = new CheckTime();
        time.mTimeStarted = System.currentTimeMillis();
        return time;
    }

    public void mark(long size) {
        this.mTimeMarked = System.currentTimeMillis();
        this.mTotalDownloadBytes += size;
    }

    public long getAverageSpeed() {
        return this.mAverageSpeed;
    }

    public CheckTime calculate() {
        if (this.mTimeMarked - this.mTimeStarted > 1000) {
            this.mAverageSpeed = ((this.mTotalDownloadBytes / 1024) * 1000) / (this.mTimeMarked - this.mTimeStarted);
        }
        return this;
    }

    public boolean check(String fileId, ConfigParams2 params, String domain) {
        int min;
        if (!params.removable || (min = (int) (((this.mTimeMarked - this.mTimeStarted) / 1000) / ConfigParams2.getInstance().removeSlowCDNTime)) == this.mCheckMinutes) {
            return false;
        }
        this.mCheckMinutes = min;
        long current = getAverageSpeed();
        if (current > mTopSpeed) {
            mTopSpeed = current;
        }
        long limit = (mTopSpeed * params.removeSlowCDNPercent) / 100;
        StrUtil.recordTopSpeed(fileId, mTopSpeed, current);
        boolean lessThanLimit = current < limit;
        boolean lessThanMinSpeed = current < ((long) params.removeSlowCDNSpeed);
        if (!lessThanLimit || !lessThanMinSpeed) {
            return false;
        }
        return true;
    }

    public long getTimeSpent(boolean inMillionSec) {
        return inMillionSec ? this.mTimeMarked - this.mTimeStarted : (this.mTimeMarked - this.mTimeStarted) / 1000;
    }

    public long getTotalDownloadBytes() {
        return this.mTotalDownloadBytes;
    }

    public static void clean() {
        mTopSpeed = 0L;
    }

    public String toString() {
        return "CheckTime{mTimeStarted=" + this.mTimeStarted + ", mTimeMarked=" + this.mTimeMarked + ", mTotalDownloadBytes=" + this.mTotalDownloadBytes + ", mAverageSpeed=" + this.mAverageSpeed + '}';
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
