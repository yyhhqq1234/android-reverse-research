package com.netease.pharos.report;

import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class ReportProxy {
    public static ReportProxy sReportProxy = null;

    private ReportProxy() {
    }

    public static ReportProxy getInstance() {
        if (sReportProxy == null) {
            sReportProxy = new ReportProxy();
        }
        return sReportProxy;
    }

    public int report(final String info) {
        new Thread(new Runnable() { // from class: com.netease.pharos.report.ReportProxy.1
            @Override // java.lang.Runnable
            public void run() {
                ReportCore reportCore = new ReportCore();
                reportCore.init(Const.REPORT_URL);
                reportCore.start(info, null);
            }
        }).start();
        return 11;
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
