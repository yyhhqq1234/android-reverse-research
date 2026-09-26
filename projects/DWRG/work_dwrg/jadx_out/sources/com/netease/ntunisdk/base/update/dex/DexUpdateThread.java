package com.netease.ntunisdk.base.update.dex;

import com.netease.ntunisdk.base.update.common.TaskExecutor;
import com.netease.ntunisdk.base.update.common.UpdateCallback;
import com.netease.ntunisdk.base.update.common.UpdateHandler;
import java.io.File;

/* loaded from: classes.dex */
class DexUpdateThread implements Runnable {
    private File mBaseDexFilePath;
    private UpdateHandler mHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void startDexThread(File baseDexFilePath, UpdateCallback callback) {
        TaskExecutor.execute(new DexUpdateThread(baseDexFilePath, callback));
    }

    private DexUpdateThread(File baseDexFilePath, UpdateCallback callback) {
        this.mHandler = new UpdateHandler(callback);
        this.mBaseDexFilePath = baseDexFilePath;
    }

    @Override // java.lang.Runnable
    public void run() {
        int result = UniBaseUpdater.validateDex(this.mBaseDexFilePath);
        this.mHandler.sendEmptyMessage(result);
        int result2 = UniBaseUpdater.checkAndDownload(this.mBaseDexFilePath);
        this.mHandler.sendEmptyMessageDelayed(result2, 5000L);
    }
}
