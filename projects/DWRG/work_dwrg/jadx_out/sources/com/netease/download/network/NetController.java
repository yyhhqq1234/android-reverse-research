package com.netease.download.network;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class NetController {
    private static final int NO_INTERRUPTED = 0;
    private static NetController mController = null;
    private int mInterruptedCode = 0;
    private int mStatus;

    private NetController() {
    }

    public static NetController getInstances() {
        if (mController == null) {
            mController = new NetController();
        }
        return mController;
    }

    public boolean isInterrupted() {
        return this.mInterruptedCode != 0;
    }

    public void setInterruptedCode(int mInterruptedCode) {
        this.mInterruptedCode = mInterruptedCode;
    }

    public int getInterruptedCode() {
        return this.mInterruptedCode;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public void setStatus(int mStatus) {
        this.mStatus = mStatus;
    }

    public void restore() {
        this.mInterruptedCode = 0;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
