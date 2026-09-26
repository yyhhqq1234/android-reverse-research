package com.netease.download.downloadpart;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.check.CheckTime;
import com.netease.download.dns.CdnIpController;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.downloader.DownloadProxy;
import com.netease.download.downloader.TaskParams;
import com.netease.download.handler.Dispatcher;
import com.netease.download.httpdns2.HttpdnsProxy;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.network.NetController;
import com.netease.download.reporter.ReportUtil;
import com.netease.download.task.Pre;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class DownloadAllCore implements Callable<Integer> {
    private static final String TAG = "DownloadAllCore";
    private static long mUseTime = 0;
    private CheckTime mCheckTime;
    private int mCode;
    private DownloadParams[] mPartParams;
    private long mTotalFileSize;
    private DownloadParams mDownloadParams = null;
    private String mHost = null;
    private int mRetry = 3;
    private int mMd5FailRetryDownloadCount = 2;
    private HashMap<String, String> mLogData = new HashMap<>();

    public void init(DownloadParams downloadParams) {
        this.mDownloadParams = downloadParams;
    }

    public void initData(DownloadParams pParams) {
        String overSea = DownloadInitInfo.getInstances().getOverSea();
        if (!"-1".equals(overSea)) {
            if ("0".equals(overSea)) {
                Const.setReqIpsForWs(Const.REQ_IPS_WS_CHINA);
                Const.REQ_IPS_FOR_LOG = Const.REQ_IPS_FOR_LOG_CHINA;
            } else if ("1".equals(overSea)) {
                Const.setReqIpsForWs(Const.REQ_IPS_WS_OVERSEA);
                Const.REQ_IPS_FOR_LOG = Const.REQ_IPS_FOR_LOG_OVERSEA;
            } else if ("2".equals(overSea)) {
                Const.setReqIpsForWs(Const.REQ_IPS_WS_OVERSEA);
                Const.REQ_IPS_FOR_LOG = Const.REQ_IPS_FOR_LOG_OVERSEA;
                Const.URL_LOG = "udt-sigma.proxima.nie.easebar.com";
            }
        }
    }

    public int start() {
        if (NetController.getInstances().isInterrupted()) {
            LogUtil.i(TAG, "网络异常=" + NetController.getInstances().getInterruptedCode());
            if (13 == NetController.getInstances().getInterruptedCode()) {
                return 13;
            }
            if (12 == NetController.getInstances().getInterruptedCode()) {
                return 12;
            }
        }
        int result = download(this.mDownloadParams, Const.Stage.NORMAL, 0);
        while (result != 0 && this.mRetry > 0) {
            if (NetController.getInstances().isInterrupted()) {
                LogUtil.i(TAG, "网络异常=" + NetController.getInstances().getInterruptedCode());
                if (13 == NetController.getInstances().getInterruptedCode()) {
                    return 13;
                }
                if (12 == NetController.getInstances().getInterruptedCode()) {
                    return 12;
                }
            }
            int preResult = Pre.getInstatnces().start();
            HttpdnsProxy.getInstances().removeKey(Const.HTTPDNS_CONFIG_CND);
            LogUtil.i(TAG, "result=" + result + ", patch文件重新下载,还有" + this.mRetry + "次重试机会, preResult=" + preResult);
            if (preResult == 0) {
                this.mRetry--;
                String filepath = this.mDownloadParams.getFilePath();
                File file = new File(filepath);
                int type = 0;
                if (3 == result || file.exists()) {
                    type = 3;
                }
                LogUtil.i(TAG, "file.exists()=" + file.exists());
                LogUtil.i(TAG, "re download type=" + type);
                result = download(this.mDownloadParams, Const.Stage.OTHER_SEG_USED, type);
            }
        }
        return result;
    }

    public int download(DownloadParams pParams, Const.Stage pStage, int type) {
        if (!"1".equals(DownloadInitInfo.getInstances().getOverSea()) && !"2".equals(DownloadInitInfo.getInstances().getOverSea())) {
            LogUtil.i(TAG, "是否存在httpdns_config_cnd=" + HttpdnsProxy.getInstances().containKey(Const.HTTPDNS_CONFIG_CND));
            LogUtil.i(TAG, "是否还存在没有使用的ip=" + HttpdnsProxy.getInstances().hasNext(Const.HTTPDNS_CONFIG_CND));
            if (HttpdnsProxy.getInstances().containKey(Const.HTTPDNS_CONFIG_CND) && !HttpdnsProxy.getInstances().hasNext(Const.HTTPDNS_CONFIG_CND)) {
                LogUtil.i(TAG, "做了httpdns解析，已经没有ip可以使用了");
                DownloadProxy.stopAll();
            }
        } else if (!CdnIpController.getInstances().hasNextIp()) {
            LogUtil.i(TAG, "只做dns解析，已经没有ip可以使用了");
            DownloadProxy.stopAll();
        }
        this.mCode = pParams.hashCode();
        Dispatcher.getTaskParamsMap().put(pParams.getFileId(), new TaskParams());
        initData(pParams);
        this.mLogData.put("httpdns", "false");
        int result = download_core(pParams, pStage, type);
        LogUtil.i(TAG, "文件名=" + pParams.getFilePath() + ", 总下载下载结果=" + result);
        return result;
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x03d0, code lost:
    
        if (r22.equals(r41.getMd5()) == false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0438  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int download_core(final com.netease.download.downloader.DownloadParams r41, com.netease.download.Const.Stage r42, int r43) {
        /*
            Method dump skipped, instructions count: 2041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.download.downloadpart.DownloadAllCore.download_core(com.netease.download.downloader.DownloadParams, com.netease.download.Const$Stage, int):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getContentLength(Map<String, List<String>> pHeader) {
        if (pHeader == null) {
            return 0L;
        }
        List<String> list = null;
        if (pHeader.containsKey(HttpHeaders.Names.CONTENT_LENGTH)) {
            List<String> list2 = pHeader.get(HttpHeaders.Names.CONTENT_LENGTH);
            list = list2;
        }
        if (list != null && !list.isEmpty()) {
            String headerValue = list.get(0);
            LogUtil.d(TAG, "processHeader, value=" + headerValue);
            if (TextUtils.isDigitsOnly(headerValue)) {
                long totalSize = Long.valueOf(headerValue).longValue();
                return totalSize;
            }
        }
        LogUtil.w(TAG, "no Content-Length found");
        return 0L;
    }

    public long getTotalFileSize() {
        return this.mTotalFileSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTotalFileSize(long pTotalFileSize) {
        this.mTotalFileSize = pTotalFileSize;
    }

    private DownloadParams[] produceSegmentParams(DownloadParams pOriginalParams, long pTotalSize) {
        int num = pOriginalParams.getTotalPart();
        DownloadParams[] params = new DownloadParams[num];
        int totalWeight = CdnIpController.getInstances().getChannelWeight(pOriginalParams.getmChannel());
        LogUtil.i(TAG, "总权重=" + totalWeight + ", 分片数=" + num + ", 原始链接=" + pOriginalParams.getOriginPrefix());
        ArrayList<String> host = CdnIpController.getInstances().getHost(pOriginalParams.getmChannel());
        if (totalWeight != 0) {
            LogUtil.stepLog("按权重分");
            ArrayList<Integer> weight = CdnIpController.getInstances().getWeights(pOriginalParams.getmChannel());
            long start = pOriginalParams.getSegmentStart();
            long end = pOriginalParams.getSegmentEnd();
            if (host != null) {
                if (1 == num) {
                    long end2 = pOriginalParams.getSegmentEnd() == 0 ? pTotalSize : pOriginalParams.getSegmentEnd();
                    params[0] = pOriginalParams.produceSegment(0, start, end2 - 1, host.size() > 0 ? host.get(0) : "");
                } else {
                    int i = 0;
                    while (i < weight.size()) {
                        LogUtil.i(TAG, "weight[i]=" + weight.get(i));
                        long size = (weight.get(i).intValue() * pTotalSize) / totalWeight;
                        if (i != 0) {
                            start = end + 1;
                        }
                        if (i != weight.size() - 1) {
                            end = (start + size) - 1;
                        } else if (0 == pOriginalParams.getSegmentEnd()) {
                            end = pTotalSize - 1;
                        } else {
                            end = pOriginalParams.getSegmentEnd() - 1;
                        }
                        params[i] = pOriginalParams.produceSegment(i, start, end, host.size() > i ? host.get(i) : "");
                        LogUtil.i(TAG, "分片参数生成，分片=" + i + ", start=" + start + ", end=" + end);
                        i++;
                    }
                }
            }
            return params;
        }
        LogUtil.stepLog("平均分");
        long sizeEach = pTotalSize / num;
        long delta = pTotalSize - (num * sizeEach);
        long start2 = pOriginalParams.getSegmentStart();
        long end3 = (sizeEach + delta) - 1;
        int i2 = 0;
        while (i2 != num) {
            params[i2] = pOriginalParams.produceSegment(i2, start2, end3, host.size() > i2 ? host.get(i2) : "");
            start2 = end3 + 1;
            end3 = (start2 + sizeEach) - 1;
            i2++;
        }
        LogUtil.i(TAG, "分片参数个数=" + params.length);
        for (DownloadParams downloadParams : params) {
            LogUtil.i(TAG, "分片参数=" + downloadParams.toString());
        }
        return params;
    }

    private void setPartParams(DownloadParams[] pParams) {
        this.mPartParams = pParams;
    }

    private DownloadParams[] getPartParams() {
        return this.mPartParams;
    }

    private boolean mergeFiles(File pOut) {
        LogUtil.i(TAG, "合并前的文件路径=" + pOut.getAbsolutePath() + ", 大小=" + pOut.length());
        FileChannel outChannel = null;
        boolean result = false;
        try {
            if (1 == getPartParams().length) {
                result = new File(getPartParams()[0].getFilePath()).renameTo(pOut);
            } else {
                try {
                    outChannel = new FileOutputStream(pOut).getChannel();
                    for (DownloadParams params : getPartParams()) {
                        FileChannel fc = new FileInputStream(params.getFilePath()).getChannel();
                        ByteBuffer bb = ByteBuffer.allocate(32768);
                        while (fc.read(bb) != -1) {
                            bb.flip();
                            outChannel.write(bb);
                            bb.clear();
                        }
                    }
                    result = true;
                    if (outChannel != null) {
                        try {
                            outChannel.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (IOException ioe) {
                    ioe.printStackTrace();
                    if (outChannel != null) {
                        try {
                            outChannel.close();
                        } catch (IOException e2) {
                        }
                    }
                }
            }
            LogUtil.i(TAG, "合并后的文件路径=" + pOut.getAbsolutePath() + ", 大小=" + pOut.length());
            return result;
        } catch (Throwable th) {
            if (outChannel != null) {
                try {
                    outChannel.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }

    private boolean delFiles() {
        boolean result = true;
        for (DownloadParams param : getPartParams()) {
            File tmpFile = new File(param.getFilePath());
            result = result && (!tmpFile.exists() || tmpFile.delete());
        }
        return result;
    }

    private boolean isAllInterrupted(int[] Interrupted) {
        for (int i : Interrupted) {
            if (12 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        int result = 11;
        try {
            result = start();
        } catch (Exception e) {
            LogUtil.e(TAG, "DownloadAllCore Exception e=" + e);
        }
        DownloadListenerCore.getInstances();
        DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(result, DownloadInitInfo.getInstances().getAllSize(), DownloadListenerCore.getInstances().getTotalSize(), this.mDownloadParams.getFilePath(), this.mDownloadParams.getFilePath(), ReportUtil.getInstances().getCurrentSessionId());
        LogUtil.i(TAG, "大下载 call结束，接下来应该返回到线程池的结果回调");
        return Integer.valueOf(result);
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
