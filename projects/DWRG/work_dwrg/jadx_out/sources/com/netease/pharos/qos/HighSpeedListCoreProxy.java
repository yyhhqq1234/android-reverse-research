package com.netease.pharos.qos;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class HighSpeedListCoreProxy {
    private static final String TAG = "HighSpeedListCoreProxy";
    private static HighSpeedListCoreProxy sHighSpeedListCoreProxy = null;
    private boolean mIsInit = false;
    private boolean mIsStart = false;
    private HighSpeedListCore mHighSpeedListCore = null;

    private HighSpeedListCoreProxy() {
    }

    public static HighSpeedListCoreProxy getInstance() {
        if (sHighSpeedListCoreProxy == null) {
            sHighSpeedListCoreProxy = new HighSpeedListCoreProxy();
        }
        return sHighSpeedListCoreProxy;
    }

    public void init() {
        if (!this.mIsInit) {
            LogUtil.i(TAG, "HighSpeedListCoreProxy [init] start");
            if (this.mHighSpeedListCore == null) {
                this.mHighSpeedListCore = new HighSpeedListCore();
            }
            this.mIsInit = true;
            return;
        }
        LogUtil.i(TAG, "HighSpeedListCoreProxy [init] already init");
    }

    public void start() {
        LogUtil.i(TAG, "HighSpeedListCoreProxy [start_highSpeedListCore] start");
        LogUtil.i(TAG, "开始获取高速列表");
        int hithResult = this.mHighSpeedListCore.start();
        LogUtil.i(TAG, "开始获取高速列表  结果 = " + hithResult);
    }

    public void clean() {
        LogUtil.i(TAG, "HighSpeedListCoreProxy [clean] start");
        if (this.mHighSpeedListCore != null) {
            this.mHighSpeedListCore.clean();
        }
        this.mIsInit = false;
        this.mIsStart = false;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
