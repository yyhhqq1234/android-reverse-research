package com.netease.download.downloadpart;

import android.util.Log;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class test implements Callable<Integer> {
    private static final String TAG = "test";
    private int mIndex;

    public void init(int index) {
        this.mIndex = index;
    }

    public int start() {
        Log.e(TAG, String.valueOf(this.mIndex) + " 下载结束------");
        return this.mIndex;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        Log.e(TAG, String.valueOf(this.mIndex) + " 下载开始");
        Thread.sleep(3000L);
        return Integer.valueOf(start());
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
