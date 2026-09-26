package com.netease.pharos.location;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RecheckResult {
    private static final String TAG = "RecheckResult";
    private static RecheckResult sRecheckResult;
    private volatile List<CheckResult> mCheckResultList = new ArrayList();

    public static RecheckResult getInstance() {
        if (sRecheckResult == null) {
            sRecheckResult = new RecheckResult();
        }
        return sRecheckResult;
    }

    public DeviceInfo chooseBest() {
        int index = -1;
        LogUtil.i(TAG, "mCheckResultList 大小=" + this.mCheckResultList.size());
        long bestRtt = -1;
        if (this.mCheckResultList != null && this.mCheckResultList.size() > 0) {
            for (int i = 0; i < this.mCheckResultList.size(); i++) {
                ArrayList<String> list = new ArrayList<>();
                int count = this.mCheckResultList.get(i).getmPacketCount();
                int lossCount = this.mCheckResultList.get(i).getPacketLossCount();
                int i2 = count - lossCount;
                long rtt = this.mCheckResultList.get(i).getMinTime();
                list.add(new StringBuilder(String.valueOf(this.mCheckResultList.get(i).getLoss())).toString());
                list.add(new StringBuilder(String.valueOf(rtt)).toString());
                LogUtil.i(TAG, "lossCount=" + lossCount + ", bestRtt=" + bestRtt + ", rtt=" + rtt);
                if (lossCount <= 4 && rtt < bestRtt) {
                    bestRtt = rtt;
                    index = i;
                }
                DeviceInfo.getInstances().getmUdpMap().put(this.mCheckResultList.get(i).getmRegion(), list);
            }
            LogUtil.i(TAG, "map信息=" + DeviceInfo.getInstances().getmUdpMap().toString());
            if (index >= 0 && index < this.mCheckResultList.size()) {
                DeviceInfo.getInstances().setmRegion(this.mCheckResultList.get(index).getmRegion());
                DeviceInfo.getInstances().setmMethod("udpping");
            }
        }
        return DeviceInfo.getInstances();
    }

    public List<CheckResult> getList() {
        return this.mCheckResultList;
    }

    /* loaded from: classes.dex */
    public class RecheckResultUnit {
        public String mIp = null;
        public int mCount = -1;
        public int mSuccessCount = -1;
        public int mLoss = -1;
        public int mBsetRtt = -1;
        public int mWorstRtt = -1;

        public RecheckResultUnit() {
        }

        public void setmIp(String ip) {
            if (this.mIp == null) {
                this.mIp = ip;
            }
        }

        public void setmCount(int count) {
            if (-1 == this.mCount) {
                this.mCount = count;
            }
        }

        public void setmSuccessCount(int successCount) {
            this.mSuccessCount = successCount;
        }

        public void setmLoss(int loss) {
            this.mLoss = loss;
        }

        public void setmBsetRtt(int bsetRtt) {
            if (this.mBsetRtt < bsetRtt) {
                this.mBsetRtt = bsetRtt;
            }
        }

        public void setmWorstRtt(int worstRtt) {
            if (worstRtt > this.mWorstRtt) {
                this.mWorstRtt = worstRtt;
            }
        }

        public String toString() {
            StringBuffer result = new StringBuffer();
            result.append("\n");
            result.append("mIp=").append(this.mIp).append("\n");
            result.append("mCount=").append(this.mCount).append("\n");
            result.append("mSuccessCount=").append(this.mSuccessCount).append("\n");
            result.append("mLoss=").append(this.mLoss).append("\n");
            result.append("mBsetRtt=").append(this.mBsetRtt).append("\n");
            result.append("mWorstRtt=").append(this.mWorstRtt).append("\n");
            return result.toString();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
