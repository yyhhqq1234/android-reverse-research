package com.netease.download.downloadpart;

import com.netease.download.Const;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.downloader.DownloadProxy;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.listener.DownloadResult;
import com.netease.download.network.NetController;
import com.netease.download.progress.ProgressProxy;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.reporter.ReportProxy;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class DownloadAllProxy {
    private static final String TAG = "DownloadAllProxy";
    private static DownloadAllProxy mDownloadAllProxy = null;
    private ArrayList<DownloadParams> mParamsList = null;
    private int mIndexHasSubmit = 0;
    private int mIndexhasResult = 0;
    private int mStatus = 0;
    private int mExecutorServiceQueueSize = 10;
    private ExecutorService mExs = null;
    private ArrayList<Future<Integer>> mAl = new ArrayList<>();

    private DownloadAllProxy() {
    }

    public static DownloadAllProxy getInstances() {
        if (mDownloadAllProxy == null) {
            mDownloadAllProxy = new DownloadAllProxy();
        }
        return mDownloadAllProxy;
    }

    public void init(ArrayList<DownloadParams> paramsList) {
        reset();
        this.mParamsList = paramsList;
    }

    public void stop() {
        LogUtil.i(TAG, "DownloadAllProxy 终止线程池");
        if (this.mExs != null) {
            this.mExs.shutdownNow();
        }
    }

    public void start() {
        LogUtil.i(TAG, "mStatus=" + this.mStatus);
        ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, Constants.VIA_SHARE_TYPE_INFO);
        NetController.getInstances().restore();
        int result = 11;
        int threadnum = DownloadInitInfo.getInstances().getmThreadnum();
        LogUtil.i(TAG, "总下载线程池线程数=" + threadnum);
        this.mExs = Executors.newFixedThreadPool(threadnum);
        this.mAl = new ArrayList<>();
        String downloadid = null;
        long start = System.currentTimeMillis();
        if (this.mParamsList == null || this.mParamsList.size() <= 0) {
            return;
        }
        ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_TOTAL, Integer.valueOf(this.mParamsList.size()));
        ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_FINISH, 0);
        ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_DL_ERROR, 0);
        ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_VALIDATE, 0);
        if (threadnum * 2 < this.mParamsList.size()) {
            this.mExecutorServiceQueueSize = threadnum * 2;
        } else {
            this.mExecutorServiceQueueSize = this.mParamsList.size();
        }
        this.mIndexHasSubmit = 0;
        while (this.mIndexHasSubmit < this.mExecutorServiceQueueSize) {
            LogUtil.i(TAG, "一共有" + this.mParamsList.size() + "个文件需要下载。 第 " + this.mIndexHasSubmit + " 个开始下载, 参数=" + this.mParamsList.get(this.mIndexHasSubmit).toString());
            DownloadAllCore downloadAllCore = new DownloadAllCore();
            if (downloadid == null) {
                downloadid = DownloadInitInfo.getInstances().getmDownloadId();
            }
            downloadAllCore.init(this.mParamsList.get(this.mIndexHasSubmit));
            this.mAl.add(this.mExs.submit(downloadAllCore));
            this.mIndexHasSubmit++;
        }
        while (this.mIndexhasResult < this.mParamsList.size()) {
            try {
                try {
                    DownloadParams downloadParams = this.mParamsList.get(this.mIndexhasResult);
                    result = this.mAl.get(0).get().intValue();
                    this.mAl.remove(0);
                    if (downloadParams == null) {
                        this.mIndexhasResult++;
                        if (this.mIndexHasSubmit < this.mParamsList.size()) {
                            DownloadAllCore downloadAllCore2 = new DownloadAllCore();
                            downloadAllCore2.init(this.mParamsList.get(this.mIndexHasSubmit));
                            LogUtil.i(TAG, "一共有" + this.mParamsList.size() + "个文件需要下载。 第 " + this.mIndexHasSubmit + " 个开始下载, 参数=" + this.mParamsList.get(this.mIndexHasSubmit).toString());
                            this.mAl.add(this.mExs.submit(downloadAllCore2));
                            this.mIndexHasSubmit++;
                        }
                    } else {
                        LogUtil.i(TAG, "第 " + this.mIndexhasResult + " 个下载结果 = " + result + ", 文件路径 = " + downloadParams.getFilePath());
                        DownloadResult.getInstances().add(downloadParams.getFilePath(), result);
                        if (result != 0) {
                            int count = (ReportInfo.getInstance().mErrcodeNum.get(new StringBuilder(String.valueOf(result)).toString()) != null ? ReportInfo.getInstance().mErrcodeNum.get(new StringBuilder(String.valueOf(result)).toString()).intValue() : 0) + 1;
                            ReportInfo.getInstance().mErrcodeNum.put(new StringBuilder(String.valueOf(result)).toString(), Integer.valueOf(count));
                            ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_DL_ERROR, Integer.valueOf(count));
                            ArrayList<String> list = ReportInfo.getInstance().mErrcodeFiles.containsKey(new StringBuilder(String.valueOf(result)).toString()) ? ReportInfo.getInstance().mErrcodeFiles.get(new StringBuilder(String.valueOf(result)).toString()) : new ArrayList<>();
                            if (!list.contains(downloadParams.getTargetUrl())) {
                                list.add(downloadParams.getFilePath());
                                ReportInfo.getInstance().mErrcodeFiles.put(new StringBuilder(String.valueOf(result)).toString(), list);
                            }
                        } else {
                            int finishCount = (ReportInfo.getInstance().mFileNum.get(KeyConst.KEY_FINISH) != null ? ReportInfo.getInstance().mFileNum.get(KeyConst.KEY_FINISH).intValue() : 0) + 1;
                            LogUtil.i(TAG, "成功的数目=" + finishCount);
                            ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_FINISH, Integer.valueOf(finishCount));
                        }
                        this.mIndexhasResult++;
                        if (this.mIndexHasSubmit < this.mParamsList.size()) {
                            DownloadAllCore downloadAllCore3 = new DownloadAllCore();
                            downloadAllCore3.init(this.mParamsList.get(this.mIndexHasSubmit));
                            LogUtil.i(TAG, "一共有" + this.mParamsList.size() + "个文件需要下载。 第 " + this.mIndexHasSubmit + " 个开始下载, 参数=" + this.mParamsList.get(this.mIndexHasSubmit).toString());
                            this.mAl.add(this.mExs.submit(downloadAllCore3));
                            this.mIndexHasSubmit++;
                        }
                    }
                } catch (InterruptedException e) {
                    LogUtil.w(TAG, "InterruptedException=" + e);
                    this.mIndexhasResult++;
                    if (this.mIndexHasSubmit < this.mParamsList.size()) {
                        DownloadAllCore downloadAllCore4 = new DownloadAllCore();
                        downloadAllCore4.init(this.mParamsList.get(this.mIndexHasSubmit));
                        LogUtil.i(TAG, "一共有" + this.mParamsList.size() + "个文件需要下载。 第 " + this.mIndexHasSubmit + " 个开始下载, 参数=" + this.mParamsList.get(this.mIndexHasSubmit).toString());
                        this.mAl.add(this.mExs.submit(downloadAllCore4));
                        this.mIndexHasSubmit++;
                    }
                } catch (CancellationException e2) {
                    LogUtil.w(TAG, "CancellationException=" + e2);
                    this.mIndexhasResult++;
                    if (this.mIndexHasSubmit < this.mParamsList.size()) {
                        DownloadAllCore downloadAllCore5 = new DownloadAllCore();
                        downloadAllCore5.init(this.mParamsList.get(this.mIndexHasSubmit));
                        LogUtil.i(TAG, "一共有" + this.mParamsList.size() + "个文件需要下载。 第 " + this.mIndexHasSubmit + " 个开始下载, 参数=" + this.mParamsList.get(this.mIndexHasSubmit).toString());
                        this.mAl.add(this.mExs.submit(downloadAllCore5));
                        this.mIndexHasSubmit++;
                    }
                } catch (ExecutionException e3) {
                    LogUtil.w(TAG, "ExecutionException=" + e3);
                    this.mIndexhasResult++;
                    if (this.mIndexHasSubmit < this.mParamsList.size()) {
                        DownloadAllCore downloadAllCore6 = new DownloadAllCore();
                        downloadAllCore6.init(this.mParamsList.get(this.mIndexHasSubmit));
                        LogUtil.i(TAG, "一共有" + this.mParamsList.size() + "个文件需要下载。 第 " + this.mIndexHasSubmit + " 个开始下载, 参数=" + this.mParamsList.get(this.mIndexHasSubmit).toString());
                        this.mAl.add(this.mExs.submit(downloadAllCore6));
                        this.mIndexHasSubmit++;
                    }
                }
            } finally {
            }
        }
        DownloadProxy.mIsStart = false;
        if (result == 0) {
            LogUtil.i(TAG, "删除持久化key=" + downloadid);
            ProgressProxy.getInstances().removeInfo(DownloadProxy.mContext, downloadid);
            ReportInfo.getInstance().mStatus = 0;
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, "36");
        } else if (12 == result) {
            ReportInfo.getInstance().mStatus = 2;
        } else {
            ReportInfo.getInstance().mStatus = 1;
        }
        long time = System.currentTimeMillis() - start;
        ReportInfo.getInstance().mDlTime.put("overall", Long.valueOf(time));
        LogUtil.i(TAG, "全部下载花费总时间 = " + time + " ms");
        DownloadProxy.unregisterReceiver();
        LogUtil.i(TAG, "总大小=" + DownloadListenerCore.getInstances().getTotalSize());
        LogUtil.i(TAG, "AllSize的总大小=" + DownloadListenerCore.getInstances().getAllSize());
        LogUtil.i(TAG, "DownloadAllProxy [start] 下载后期，发送日志（Patch文件）");
        ReportProxy.getInstance().setNeedDeleteFile(true);
        ReportProxy.getInstance().close(1L);
    }

    public void reset() {
        LogUtil.i(TAG, "恢复默认状态");
        this.mIndexHasSubmit = 0;
        this.mIndexhasResult = 0;
        this.mStatus = 0;
    }

    public int getStatus() {
        return this.mStatus;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
