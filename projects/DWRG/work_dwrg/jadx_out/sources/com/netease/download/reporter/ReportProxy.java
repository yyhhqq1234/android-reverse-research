package com.netease.download.reporter;

import android.content.Context;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.reporter.ReportFile;
import com.netease.download.reporter.ReportNet;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class ReportProxy {
    private static final String TAG = "ReportProxy";
    private static ReportProxy sReportProxy = null;
    private boolean hasReport = false;
    private boolean mNeedDeleteFile = false;
    private Context mContext = null;

    private ReportProxy() {
    }

    public static ReportProxy getInstance() {
        if (sReportProxy == null) {
            sReportProxy = new ReportProxy();
        }
        return sReportProxy;
    }

    public boolean isNeedDeleteFile() {
        return this.mNeedDeleteFile;
    }

    public void setNeedDeleteFile(boolean needDeleteFile) {
        this.mNeedDeleteFile = needDeleteFile;
    }

    public void init(Context context) {
        LogUtil.i(TAG, "日志上传模块---日志模块代理类初始化");
        this.mContext = context;
        ReportInfo.getInstance().clear();
        ReportFile.getInstances().init(this.mContext, new ReportFile.FileCallBack() { // from class: com.netease.download.reporter.ReportProxy.1
            @Override // com.netease.download.reporter.ReportFile.FileCallBack
            public void finish() {
                LogUtil.i(ReportProxy.TAG, "日志上传模块---日志落地完成，上传全部内容。 上传后是否删除文件=" + ReportProxy.this.mNeedDeleteFile);
                ReporetCore.getInstance().setOpen(false);
                ReportProxy.this.reportInfo(ReportProxy.this.mContext, 2);
            }
        });
        ReportFile.getInstances().start();
        ReporetCore.getInstance().init();
    }

    public void close(long delaytime) {
        ReporetCore.getInstance().close(delaytime);
    }

    public void report(Context context, final boolean deleteFile) {
        String url;
        String[] ips;
        LogUtil.i(TAG, "日志上传模块---是否删除文件=" + deleteFile);
        if (ConfigParams2.getInstance() == null) {
            LogUtil.i(TAG, "采用hardcode ip");
            url = "https://udt-sigma.proxima.nie.netease.com/query";
            ips = Const.REQ_IPS_FOR_LOG;
            String oversea = DownloadInitInfo.getInstances().getOverSea();
            LogUtil.i(TAG, "海外=" + oversea);
            if ("1".equals(oversea)) {
                ips = Const.REQ_IPS_FOR_LOG_OVERSEA;
            } else if ("2".equals(oversea)) {
                url = "https://udt-sigma.proxima.nie.easebar.com/query";
                ips = Const.REQ_IPS_FOR_LOG_OVERSEA;
            } else if ("0".equals(oversea) || "-1".equals(oversea)) {
                ips = Const.REQ_IPS_FOR_LOG_CHINA;
            }
        } else {
            LogUtil.i(TAG, "采用配置文件 ip");
            url = ConfigParams2.getInstance().getReportUrl();
            ips = ConfigParams2.getInstance().getReportIpArray();
        }
        ReportUrlController.getInstance().init(url, ips);
        String reportInfo = ReportFile.getInstances().readFile(context);
        if (!TextUtils.isEmpty(reportInfo)) {
            LogUtil.i(TAG, "日志上传模块---上传日志不为空，需要上传");
            LogUtil.i(TAG, "日志上传模块---上传日志内容=" + reportInfo);
            ReportNet.getInstances().init(new ReportNet.ReportCallBack() { // from class: com.netease.download.reporter.ReportProxy.2
                @Override // com.netease.download.reporter.ReportNet.ReportCallBack
                public void finish(int code) {
                    LogUtil.i(ReportProxy.TAG, "日志上传模块---日志上传完成，是否需要删除文件=" + deleteFile);
                    if (code == 0) {
                        if (deleteFile) {
                            LogUtil.i(ReportProxy.TAG, "日志上传模块---日志上传完成，删除日志文件=" + deleteFile);
                            ReportFile.getInstances().deleteFile();
                        } else {
                            LogUtil.i(ReportProxy.TAG, "日志上传模块---日志上传完成，不需要删除日志文件=" + deleteFile);
                        }
                    }
                }
            });
            ReportNet.getInstances().report(reportInfo);
            return;
        }
        LogUtil.i(TAG, "日志上传模块---上传日志为空，不需要上传");
    }

    public void report(Context context, String reportInfo) {
        String url;
        String[] ips;
        if (ConfigParams2.getInstance() == null) {
            LogUtil.i(TAG, "采用hardcode ip");
            url = "https://udt-sigma.proxima.nie.netease.com/query";
            ips = Const.REQ_IPS_FOR_LOG;
            String oversea = DownloadInitInfo.getInstances().getOverSea();
            LogUtil.i(TAG, "海外=" + oversea);
            if ("1".equals(oversea)) {
                ips = Const.REQ_IPS_FOR_LOG_OVERSEA;
            } else if ("2".equals(oversea)) {
                url = "https://udt-sigma.proxima.nie.easebar.com/query";
                ips = Const.REQ_IPS_FOR_LOG_OVERSEA;
            } else if ("0".equals(oversea) || "-1".equals(oversea)) {
                ips = Const.REQ_IPS_FOR_LOG_CHINA;
            }
        } else {
            LogUtil.i(TAG, "采用配置文件 ip");
            url = ConfigParams2.getInstance().getReportUrl();
            ips = ConfigParams2.getInstance().getReportIpArray();
        }
        ReportUrlController.getInstance().init(url, ips);
        if (!TextUtils.isEmpty(reportInfo)) {
            LogUtil.i(TAG, "日志上传模块---上传信息---上传日志内容=" + reportInfo);
            ReportNet.getInstances().init(new ReportNet.ReportCallBack() { // from class: com.netease.download.reporter.ReportProxy.3
                @Override // com.netease.download.reporter.ReportNet.ReportCallBack
                public void finish(int code) {
                    if (code == 0) {
                        LogUtil.i(ReportProxy.TAG, "日志上传模块---上传信息，上传成功。是否需要删除文件=" + ReportProxy.this.mNeedDeleteFile);
                        if (ReportProxy.this.mNeedDeleteFile) {
                            LogUtil.i(ReportProxy.TAG, "日志上传模块---文件删除成功");
                            ReportFile.getInstances().deleteFile();
                            return;
                        } else {
                            LogUtil.i(ReportProxy.TAG, "日志上传模块---不需要删除文件");
                            return;
                        }
                    }
                    LogUtil.i(ReportProxy.TAG, "日志上传模块---上传信息，上传失败");
                }
            });
            ReportNet.getInstances().report(reportInfo);
            return;
        }
        LogUtil.i(TAG, "日志上传模块---上传信息，不需要上传");
    }

    public void reportInfo(final Context context, final int type) {
        new Thread(new Runnable() { // from class: com.netease.download.reporter.ReportProxy.4
            @Override // java.lang.Runnable
            public void run() {
                if (type == 1) {
                    LogUtil.i(ReportProxy.TAG, "日志上传模块---上传基础信息");
                    ReportProxy.this.report(context, ReportInfo.getInstance().getBaseInfo());
                } else if (type == 2) {
                    LogUtil.i(ReportProxy.TAG, "日志上传模块---上传全部信息");
                    ReportProxy.this.report(context, ReportInfo.getInstance().toString());
                }
            }
        }).start();
    }

    public void setOpen(boolean open) {
        ReporetCore.getInstance().setOpen(open);
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
