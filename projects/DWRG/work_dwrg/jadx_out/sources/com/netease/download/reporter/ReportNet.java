package com.netease.download.reporter;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.network.NetworkDealer2;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ReportNet {
    private static final String TAG = "ReportNet";
    private static ReportNet sReportNet = null;
    private ReportCallBack mReportCallBack = null;
    private NetworkDealer2<Boolean> mDealer = new NetworkDealer2<Boolean>() { // from class: com.netease.download.reporter.ReportNet.1
        @Override // com.netease.download.network.NetworkDealer2
        public int processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
            int result = 1;
            LogUtil.i(ReportNet.TAG, "日志上传模块---上传日志，上传返回码=" + pCode + ", 请求链接=" + resUrl + ", header=" + pHeader.toString());
            if (200 == pCode) {
                result = 0;
            }
            ReportNet.this.mReportCallBack.finish(result);
            return result;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.download.network.NetworkDealer2
        public Boolean processContent(HttpURLConnection conn, int pCode, String resUrl) throws Exception {
            InputStream pInputStream;
            LogUtil.stepLog("日志上传模块---上传日志，请求结果解析");
            if (200 == pCode) {
                pInputStream = conn.getInputStream();
            } else {
                pInputStream = conn.getErrorStream();
            }
            InputStreamReader in = new InputStreamReader(pInputStream, "utf-8");
            BufferedReader e = new BufferedReader(in);
            StringBuilder cache = new StringBuilder();
            while (true) {
                String line = e.readLine();
                if (line == null) {
                    break;
                }
                cache.append(line);
            }
            String resp = cache.toString();
            if (TextUtils.isEmpty(resp)) {
                return false;
            }
            LogUtil.i(ReportNet.TAG, "日志上传模块---上传日志，请求返回码=" + pCode + "，结果解析=" + resp);
            return false;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ReportCallBack {
        void finish(int i);
    }

    private ReportNet() {
    }

    public static ReportNet getInstances() {
        if (sReportNet == null) {
            sReportNet = new ReportNet();
        }
        return sReportNet;
    }

    public void init(ReportCallBack reportCallBack) {
        if (this.mReportCallBack == null) {
            this.mReportCallBack = reportCallBack;
        }
    }

    public void report(final String info) {
        if (ConfigParams2.getInstance() != null && !ConfigParams2.getInstance().isReport()) {
            LogUtil.i(TAG, "日志上传模块---上传日志,参数错误");
        } else {
            new Thread(new Runnable() { // from class: com.netease.download.reporter.ReportNet.2
                @Override // java.lang.Runnable
                public void run() {
                    ReportNet.this.reportControl(info);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
    
        if (com.netease.download.reporter.ReportUrlController.getInstance().hasNext() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
    
        r1 = reportControl(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int reportControl(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r5 = "ReportNet"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "日志上传模块---上传日志，Urls信息总览="
            r6.<init>(r7)
            com.netease.download.reporter.ReportUrlController r7 = com.netease.download.reporter.ReportUrlController.getInstance()
            java.util.ArrayList r7 = r7.geturls()
            java.lang.String r7 = r7.toString()
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            com.netease.download.util.LogUtil.i(r5, r6)
            r1 = 11
            r2 = 3
            r4 = 0
            r0 = 0
            com.netease.download.reporter.ReportUrlController r5 = com.netease.download.reporter.ReportUrlController.getInstance()
            boolean r5 = r5.hasNext()
            if (r5 == 0) goto L3b
            com.netease.download.reporter.ReportUrlController r5 = com.netease.download.reporter.ReportUrlController.getInstance()
            com.netease.download.reporter.ReportUrlController$ReportUrlControllerUnit r3 = r5.next()
            java.lang.String r0 = r3.mDomain
            java.lang.String r4 = r3.mUrl
        L3b:
            if (r1 == 0) goto L45
            if (r2 <= 0) goto L45
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L56
        L45:
            if (r1 == 0) goto L55
            com.netease.download.reporter.ReportUrlController r5 = com.netease.download.reporter.ReportUrlController.getInstance()
            boolean r5 = r5.hasNext()
            if (r5 == 0) goto L55
            int r1 = r8.reportControl(r9)
        L55:
            return r1
        L56:
            java.lang.String r5 = "ReportNet"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "日志上传模块---上传日志，具体使用的domain="
            r6.<init>(r7)
            java.lang.StringBuilder r6 = r6.append(r0)
            java.lang.String r7 = ", url="
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r4)
            java.lang.String r6 = r6.toString()
            com.netease.download.util.LogUtil.i(r5, r6)
            com.netease.download.network.NetworkDealer2<java.lang.Boolean> r5 = r8.mDealer
            int r1 = r8.post(r0, r4, r9, r5)
            int r2 = r2 + (-1)
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.download.reporter.ReportNet.reportControl(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int post(java.lang.String r14, java.lang.String r15, java.lang.String r16, com.netease.download.network.NetworkDealer2 r17) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.download.reporter.ReportNet.post(java.lang.String, java.lang.String, java.lang.String, com.netease.download.network.NetworkDealer2):int");
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
