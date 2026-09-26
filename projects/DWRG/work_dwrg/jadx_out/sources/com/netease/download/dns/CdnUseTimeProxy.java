package com.netease.download.dns;

import com.netease.download.Const;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.HashMap;

/* loaded from: classes.dex */
public class CdnUseTimeProxy {
    private static CdnUseTimeProxy sCndUseTimeProxy = null;
    private HashMap<String, CndUseTimeUnit> mMap = new HashMap<>();

    private CdnUseTimeProxy() {
    }

    public static CdnUseTimeProxy getInstance() {
        if (sCndUseTimeProxy == null) {
            sCndUseTimeProxy = new CdnUseTimeProxy();
        }
        return sCndUseTimeProxy;
    }

    public void init(String[] urls) {
    }

    public void start(String domain) {
        CndUseTimeUnit unit;
        if (this.mMap.containsKey(domain)) {
            unit = this.mMap.get(domain);
            if (unit.mCount == 0) {
                unit.mStartTime = System.currentTimeMillis();
            }
        } else {
            unit = new CndUseTimeUnit(0L, 0, 0L);
            this.mMap.put(domain, unit);
            unit.mStartTime = System.currentTimeMillis();
        }
        unit.mCount++;
    }

    public void finish(String domain) {
        if (this.mMap.containsKey(domain)) {
            CndUseTimeUnit unit = this.mMap.get(domain);
            if (unit.mCount > 0) {
                unit.mCount--;
            }
            if (unit.mCount == 0) {
                unit.mUseTime = (System.currentTimeMillis() - unit.mStartTime) + unit.mUseTime;
                ReportInfo.getInstance().mDlTime.put(domain, Long.valueOf(unit.mUseTime));
            }
        }
    }

    /* loaded from: classes.dex */
    public static class CndUseTimeUnit {
        public int mCount;
        public long mStartTime;
        public long mUseTime;

        public CndUseTimeUnit(long startTime, int count, long useTime) {
            this.mStartTime = startTime;
            this.mCount = count;
            this.mUseTime = useTime;
        }

        public String toString() {
            return "mStartTime=" + this.mStartTime + ", mCount=" + this.mCount + ", mUseTime=" + this.mUseTime;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
