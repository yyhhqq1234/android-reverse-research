package com.netease.download.handler;

import android.os.HandlerThread;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class CommonHandlerThread extends HandlerThread {
    private static final String TAG = "CommonHandlerThread";
    private static CommonHandlerThread sThread;

    private CommonHandlerThread(String name) {
        super(name);
        start();
    }

    public static CommonHandlerThread getInstance() {
        if (sThread == null) {
            synchronized (CommonHandlerThread.class) {
                if (sThread == null) {
                    sThread = new CommonHandlerThread(TAG);
                }
            }
        }
        return sThread;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
