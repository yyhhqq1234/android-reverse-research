package com.netease.download.downloadpart;

import com.netease.download.Const;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class DonwonloadPartProxy {
    private static final String TAG = "DonwonloadPartProxy";
    private DownloadParams[] mParamsList;
    private int mType = 0;
    private Const.Stage mState = null;

    public void init(DownloadParams[] paramsList, Const.Stage stage, int type) {
        this.mParamsList = paramsList;
        this.mType = type;
        this.mState = stage;
    }

    public int start() {
        LogUtil.stepLog("分片下载模块");
        LogUtil.i(TAG, "分片数=" + this.mParamsList.length);
        int result = 0;
        ExecutorService exs = Executors.newFixedThreadPool(5);
        ArrayList<Future<Integer>> al = new ArrayList<>();
        for (DownloadParams downloadParams : this.mParamsList) {
            DownloadPartCore downloadPartCore = new DownloadPartCore();
            downloadParams.getPart();
            downloadPartCore.init(downloadParams, this.mState, this.mType);
            al.add(exs.submit(downloadPartCore));
        }
        Iterator<Future<Integer>> it = al.iterator();
        while (it.hasNext()) {
            Future<Integer> fs = it.next();
            try {
                if (fs.get().intValue() != 0) {
                    result = fs.get().intValue();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
                result = 11;
                LogUtil.i(TAG, "DonwonloadPartProxy InterruptedException e=" + e);
            } catch (ExecutionException e2) {
                e2.printStackTrace();
                result = 11;
                LogUtil.i(TAG, "DonwonloadPartProxy ExecutionException e=" + e2);
            } catch (Exception e3) {
                e3.printStackTrace();
                result = 11;
                LogUtil.i(TAG, "DonwonloadPartProxy Exception e=" + e3);
            }
        }
        LogUtil.i(TAG, "分片总下载结果=" + result);
        if (!exs.isShutdown()) {
            exs.shutdown();
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
