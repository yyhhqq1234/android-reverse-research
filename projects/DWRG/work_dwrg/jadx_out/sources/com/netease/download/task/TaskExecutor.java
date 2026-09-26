package com.netease.download.task;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
class TaskExecutor {
    static final ExecutorService DOWNLOAD_EXECUTOR = Executors.newFixedThreadPool(5);
    static final ExecutorService HTTP_LOG_EXECUTOR = Executors.newSingleThreadExecutor();

    TaskExecutor() {
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
