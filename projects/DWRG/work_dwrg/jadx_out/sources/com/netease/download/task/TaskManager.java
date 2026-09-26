package com.netease.download.task;

import android.content.Context;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.downloadpart.DownloadAllProxy;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TaskManager {
    private static final String TAG = "TaskManager";

    public static void startSynNewTask(Context pContext, ArrayList<DownloadParams> paramsList) {
        LogUtil.i(TAG, "startSynNewTask");
        DownloadAllProxy.getInstances().init(paramsList);
        DownloadAllProxy.getInstances().start();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
