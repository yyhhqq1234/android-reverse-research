package com.netease.download.config2;

import android.content.Context;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.downloader.DownloadProxy;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.progress.ProgressProxy;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.reporter.ReportProxy;
import com.netease.download.reporter.ReportUtil;
import com.netease.download.util.HashUtil;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class PatchListProxy {
    private static final String TAG = "PatchListProxy";
    private static PatchListProxy sPatchListProxy = null;
    private PatchListCore mPatchListCore = null;
    private int mRetry = 3;
    private String mFilePath = null;
    private String mFileName = null;
    private DownloadParams mDownloadParams = null;

    private PatchListProxy() {
    }

    public static PatchListProxy getInstances() {
        if (sPatchListProxy == null) {
            sPatchListProxy = new PatchListProxy();
        }
        return sPatchListProxy;
    }

    public void init(Context context, DownloadParams downloadParams) {
        if (downloadParams != null) {
            this.mDownloadParams = downloadParams;
            String urlPath = downloadParams.getTargetUrl();
            this.mFilePath = downloadParams.getFilePath();
            this.mFileName = downloadParams.getFilePath();
            this.mPatchListCore = new PatchListCore();
            this.mPatchListCore.init(context, urlPath, null, this.mFilePath, this.mFileName);
        }
    }

    public int start() {
        int result = 11;
        if (this.mDownloadParams == null) {
            LogUtil.i(TAG, "PatchListProxy [start] mDownloadParams is null");
            DownloadProxy.mIsStart = false;
            LogUtil.i(TAG, "list文件下载结束，result=11, path=" + this.mFilePath);
            DownloadListenerCore.getInstances();
            DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(11, DownloadInitInfo.getInstances().getAllSize(), DownloadListenerCore.getInstances().getTotalSize(), this.mFilePath, this.mFilePath, ReportUtil.getInstances().getCurrentSessionId());
            return 11;
        }
        if (!needDownload()) {
            LogUtil.i(TAG, "PatchListProxy [start] 不需要重新下载");
            DownloadProxy.mIsStart = false;
            LogUtil.i(TAG, "list文件下载结束，result=0, path=" + this.mFilePath);
            DownloadListenerCore.getInstances();
            DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(0, DownloadInitInfo.getInstances().getAllSize(), DownloadListenerCore.getInstances().getTotalSize(), this.mFilePath, this.mFilePath, ReportUtil.getInstances().getCurrentSessionId());
            return 0;
        }
        ExecutorService exs = Executors.newFixedThreadPool(1);
        ArrayList<Future<Integer>> al = new ArrayList<>();
        ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, "42");
        al.add(exs.submit(this.mPatchListCore));
        Iterator<Future<Integer>> it = al.iterator();
        while (it.hasNext()) {
            Future<Integer> fs = it.next();
            try {
                result = fs.get().intValue();
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
        DownloadProxy.mIsStart = false;
        LogUtil.i(TAG, "list文件下载结束，result=" + result + ", path=" + this.mFilePath);
        DownloadListenerCore.getInstances();
        DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(result, DownloadInitInfo.getInstances().getAllSize(), DownloadListenerCore.getInstances().getTotalSize(), this.mFilePath, this.mFilePath, ReportUtil.getInstances().getCurrentSessionId());
        if (result == 0) {
            LogUtil.i(TAG, "删除持久化key=" + DownloadInitInfo.getInstances().getmDownloadId());
            ProgressProxy.getInstances().removeInfo(DownloadProxy.mContext, DownloadInitInfo.getInstances().getmDownloadId());
            ReportInfo.getInstance().mStatus = 0;
        } else if (12 == result) {
            ReportInfo.getInstance().mStatus = 2;
        } else {
            ReportInfo.getInstance().mStatus = 1;
        }
        LogUtil.i(TAG, "PatchListProxy [start] 下载后期，发送日志（List文件）");
        ReportProxy.getInstance().setNeedDeleteFile(true);
        ReportProxy.getInstance().close(1L);
        return result;
    }

    public boolean needDownload() {
        boolean result = false;
        if (this.mDownloadParams == null) {
            LogUtil.i(TAG, "PatchListProxy [needDownload] mDownloadParams is null");
            return false;
        }
        String md5 = this.mDownloadParams.getMd5();
        String urlPath = this.mDownloadParams.getFilePath();
        LogUtil.i(TAG, "PatchListProxy [needDownload] urlPath=" + urlPath);
        if (!TextUtils.isEmpty(urlPath)) {
            File configFile = new File(urlPath);
            if (configFile.exists()) {
                if (!"NotMD5".equals(md5)) {
                    String configFileMd5 = HashUtil.calculateHash(HashUtil.Algorithm.MD5, urlPath);
                    LogUtil.i(TAG, "PatchListProxy [needDownload] configFileMd5=" + configFileMd5 + ", md5=" + md5);
                    if (!TextUtils.isEmpty(configFileMd5) && !TextUtils.isEmpty(md5) && configFileMd5.equals(md5)) {
                        LogUtil.i(TAG, "PatchListProxy [needDownload] 文件存在，但是md5不一样，需要下载");
                    } else {
                        result = true;
                    }
                }
            } else {
                LogUtil.i(TAG, "PatchListProxy [needDownload] 文件不存在，需要下载");
                result = true;
            }
        }
        return result;
    }

    public ConfigParams2 getResult() {
        return ConfigParams2.getInstance();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
