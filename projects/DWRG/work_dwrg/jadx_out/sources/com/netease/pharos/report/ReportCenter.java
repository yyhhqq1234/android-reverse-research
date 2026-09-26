package com.netease.pharos.report;

import android.os.Handler;
import android.os.Message;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class ReportCenter {
    private static NetmonReport mNetmonReport;
    private static Handler sHandler;

    public static Handler getHandler() {
        if (sHandler == null) {
            sHandler = new Handler() { // from class: com.netease.pharos.report.ReportCenter.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    int operation = msg.what;
                    switch (operation) {
                        case 1:
                        case 2:
                        case 3:
                        default:
                            return;
                    }
                }
            };
        }
        return sHandler;
    }

    public static NetmonReport getNetmonReport() {
        if (mNetmonReport == null) {
            mNetmonReport = new NetmonReport();
        }
        return mNetmonReport;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
