package com.netease.download.reporter;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ReportUrlController {
    private static final String TAG = "ReportUrlController";
    private static ReportUrlController sReportUrlController = null;
    private String mReportUrl = null;
    private String[] mReportIP = null;
    private ArrayList<ReportUrlControllerUnit> mUrls = new ArrayList<>();
    private int mIndex = 0;

    private ReportUrlController() {
    }

    public static ReportUrlController getInstance() {
        if (sReportUrlController == null) {
            sReportUrlController = new ReportUrlController();
        }
        return sReportUrlController;
    }

    public void init(String reportUrl, String[] reportIps) {
        this.mUrls.clear();
        this.mReportUrl = reportUrl;
        this.mReportIP = reportIps;
        this.mIndex = 0;
        parse();
    }

    public void parse() {
        String domain = null;
        if (!TextUtils.isEmpty(this.mReportUrl)) {
            domain = ReportUtil.getInstances().getDomainFromUrl(this.mReportUrl);
            LogUtil.i(TAG, "日志上传模块---上传日志，链接域名= " + domain);
        }
        if (this.mReportIP != null && this.mReportIP.length > 0) {
            for (String ip : this.mReportIP) {
                String ipUrl = ReportUtil.getInstances().replaceDomainWithIpAddr(this.mReportUrl, ip, "/");
                ReportUrlControllerUnit unit = new ReportUrlControllerUnit(domain, ipUrl);
                this.mUrls.add(unit);
            }
        }
    }

    public boolean hasNext() {
        if (this.mIndex >= this.mUrls.size()) {
            return false;
        }
        return true;
    }

    public ReportUrlControllerUnit next() {
        if (this.mIndex >= this.mUrls.size()) {
            return null;
        }
        ReportUrlControllerUnit unit = this.mUrls.get(this.mIndex);
        ReportUrlControllerUnit unit2 = unit;
        this.mIndex++;
        return unit2;
    }

    public ArrayList<ReportUrlControllerUnit> geturls() {
        return this.mUrls;
    }

    /* loaded from: classes.dex */
    public class ReportUrlControllerUnit {
        public String mDomain;
        public String mUrl;

        public ReportUrlControllerUnit(String domain, String url) {
            this.mDomain = domain;
            this.mUrl = url;
        }

        public String toString() {
            return "mDomain=" + this.mDomain + ", mUrl=" + this.mUrl;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
