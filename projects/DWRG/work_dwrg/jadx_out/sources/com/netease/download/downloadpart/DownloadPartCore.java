package com.netease.download.downloadpart;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.UrlSwitcher.HttpdnsUrlSwitcherCore;
import com.netease.download.check.CheckTime;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.config2.ConfigProxy;
import com.netease.download.dns.CdnIpController;
import com.netease.download.dns.CdnUseTimeProxy;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.handler.Dispatcher;
import com.netease.download.httpdns2.HttpdnsProxy;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.network.NetController;
import com.netease.download.network.NetUtil;
import com.netease.download.network.NetworkDealer;
import com.netease.download.network.NetworkStatus;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.HashUtil;
import com.netease.download.util.LogUtil;
import com.netease.download.util.SpUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class DownloadPartCore implements Callable<Integer> {
    private static final String TAG = "DownloadPartCore";
    private long mPartFileSize;
    private DownloadParams mDownloadParams = null;
    private HashMap<String, String> mLogData = new HashMap<>();
    private String tmpFilePath = null;
    private Map<String, String> mHeader = null;
    private boolean mRestart = false;
    private String mIp = null;
    private String mHost = null;
    private boolean mNeedRemove = false;
    private boolean mOversea = true;
    private int mType = 0;
    private Const.Stage mState = null;
    NetworkDealer<Boolean> dealer = new NetworkDealer<Boolean>() { // from class: com.netease.download.downloadpart.DownloadPartCore.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.download.network.NetworkDealer
        public Boolean processContent(InputStream pInputStream) throws Exception {
            int bytesRead;
            ArrayList<String> mSlowIps;
            LogUtil.stepLog("分片下载返回，InputStream数据流处理，URL");
            boolean fileOpResult = true;
            boolean shouldRemove = false;
            DownloadPartCore.this.mNeedRemove = false;
            byte[] buffer = new byte[32768];
            long lastSize = Long.parseLong((String) DownloadPartCore.this.mHeader.get("START")) - DownloadPartCore.this.mDownloadParams.getSegmentStart();
            long partSize = (DownloadPartCore.this.mDownloadParams.getSegmentEnd() - DownloadPartCore.this.mDownloadParams.getSegmentStart()) + 1;
            long realSize = DownloadPartCore.this.getPartFileSize();
            LogUtil.i(DownloadPartCore.TAG, "realSize=" + realSize + ", partSize - lastSize=" + (partSize - lastSize) + ", partSize=" + partSize + ", lastSize=" + lastSize);
            if (realSize != partSize - lastSize) {
                return false;
            }
            LogUtil.i(DownloadPartCore.TAG, "分片文件路径=" + DownloadPartCore.this.tmpFilePath);
            RandomAccessFile randomAccessFile = new RandomAccessFile(DownloadPartCore.this.tmpFilePath, "rwd");
            randomAccessFile.seek(lastSize);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(pInputStream);
            long totalPart = 10485760 / DownloadPartCore.this.mDownloadParams.getTotalPart();
            DownloadPartCore.this.mDownloadParams.getMd5();
            DownloadPartCore.this.mDownloadParams.getUrlSuffix();
            ConfigParams2 configParams2 = ConfigParams2.getInstance();
            int code = DownloadPartCore.this.mDownloadParams.hashCode();
            File dlFile = new File(DownloadPartCore.this.mDownloadParams.getFilePath());
            File tmpDlFile = new File(DownloadPartCore.this.tmpFilePath);
            long downloadSize = 0;
            long startTime = System.currentTimeMillis();
            CheckTime mCheckTime = CheckTime.newInstance();
            while (!NetController.getInstances().isInterrupted() && (bytesRead = bufferedInputStream.read(buffer)) != -1 && NetworkStatus.getNetStatus() != 0) {
                mCheckTime.mark(bytesRead);
                randomAccessFile.write(buffer, 0, bytesRead);
                lastSize += bytesRead;
                mCheckTime.calculate();
                downloadSize += bytesRead;
                ReportInfo.getInstance().mDlSize.put(String.valueOf(DownloadPartCore.this.mDownloadParams.getUrlSuffix()) + "!" + DownloadPartCore.this.mIp + "!" + DownloadPartCore.this.mDownloadParams.getPart() + "!" + DownloadPartCore.this.mHost, Long.valueOf(downloadSize));
                long useTime = System.currentTimeMillis() - startTime;
                ReportInfo.getInstance().mDlTime.put(String.valueOf(DownloadPartCore.this.mDownloadParams.getUrlSuffix()) + "!" + DownloadPartCore.this.mIp + "!" + DownloadPartCore.this.mDownloadParams.getPart(), Long.valueOf(useTime));
                DownloadListenerCore.getInstances().sendAllSize(bytesRead);
                if (3 != DownloadPartCore.this.mType) {
                    DownloadListenerCore.getInstances();
                    DownloadListenerCore.getDownloadListenerHandler().sendProgressMsg(DownloadInitInfo.getInstances().getAllSize(), bytesRead, DownloadPartCore.this.mDownloadParams.getFilePath(), DownloadPartCore.this.mDownloadParams.getFilePath());
                }
                boolean isSlowCND = mCheckTime.check(DownloadPartCore.this.mDownloadParams.getFileId(), configParams2, DownloadPartCore.this.mDownloadParams.getDomainFromUrl());
                boolean only_cdn_need_remove = isSlowCND && !CdnIpController.getInstances().isLastIp(DownloadPartCore.this.mDownloadParams.getmChannel()) && DownloadPartCore.this.mOversea;
                boolean aa = HttpdnsProxy.getInstances().containKey(Const.HTTPDNS_CONFIG_CND) && !HttpdnsProxy.getInstances().isLast(Const.HTTPDNS_CONFIG_CND, DownloadPartCore.this.mDownloadParams.getmChannel());
                boolean bb = !HttpdnsProxy.getInstances().containKey(Const.HTTPDNS_CONFIG_CND);
                boolean httpdns_need_remove = isSlowCND && !DownloadPartCore.this.mOversea && (aa || bb);
                if (only_cdn_need_remove || httpdns_need_remove) {
                    LogUtil.i(DownloadPartCore.TAG, "only_cdn_need_remove=" + only_cdn_need_remove + ", httpdns_need_remove=" + httpdns_need_remove);
                    LogUtil.i(DownloadPartCore.TAG, "isSlowCND=" + isSlowCND + ", 是否还没走过httpdns=" + bb + ", 是否最后一个httpdns=" + aa + ", !mOversea=" + (!DownloadPartCore.this.mOversea));
                    LogUtil.i(DownloadPartCore.TAG, "符合低速移除的情况下，且还有其他未使用ip, part=" + DownloadPartCore.this.mDownloadParams.getPart());
                    ArrayList<String> list = ReportInfo.getInstance().mSlowIps.get("slow_ips_" + DownloadPartCore.this.mHost);
                    if (list != null) {
                        list.add(DownloadPartCore.this.mIp);
                        ReportInfo.getInstance().mSlowIps.put("slow_ips_" + DownloadPartCore.this.mHost, list);
                    } else {
                        new ArrayList<>();
                    }
                    shouldRemove = true;
                    DownloadPartCore.this.mNeedRemove = true;
                    DownloadPartCore.this.mLogData.put("removecdn", "true");
                    if (ReportInfo.getInstance().mSlowIps.get(DownloadPartCore.this.mHost) != null) {
                        mSlowIps = ReportInfo.getInstance().mSlowIps.get(DownloadPartCore.this.mHost);
                    } else {
                        mSlowIps = new ArrayList<>();
                    }
                    if (!mSlowIps.contains(DownloadPartCore.this.mIp)) {
                        mSlowIps.add(DownloadPartCore.this.mIp);
                    }
                    ReportInfo.getInstance().mSlowIps.put(DownloadPartCore.this.mHost, mSlowIps);
                    LogUtil.i(DownloadPartCore.TAG, "低速移除ip=" + DownloadPartCore.this.mIp + ", part=" + DownloadPartCore.this.mDownloadParams.getPart());
                    ReportInfo.getInstance().mIpRemoved = 1;
                }
            }
            randomAccessFile.close();
            if (NetController.getInstances().isInterrupted() || NetworkStatus.getNetStatus() == 0) {
                LogUtil.w(DownloadPartCore.TAG, "downloadPart is interrupted(" + code + ") in processContent");
                return false;
            }
            if (shouldRemove) {
                LogUtil.w(DownloadPartCore.TAG, "(" + code + ")channel removed: " + DownloadPartCore.this.mDownloadParams);
                return false;
            }
            LogUtil.d(DownloadPartCore.TAG, "(" + code + ")read all");
            if (dlFile.exists()) {
                fileOpResult = dlFile.delete();
                LogUtil.d(DownloadPartCore.TAG, "(" + code + ")del original file: " + fileOpResult);
            }
            if (fileOpResult) {
                fileOpResult = tmpDlFile.renameTo(dlFile);
                LogUtil.d(DownloadPartCore.TAG, "分片任务下载完成, pParams.getPart()=" + DownloadPartCore.this.mDownloadParams.getPart() + "， (" + code + ")rename file: " + fileOpResult);
            }
            if (fileOpResult) {
                SpUtil.getInstance().setString(Integer.valueOf(code), Const.KEY_MD5, HashUtil.calculateHash(HashUtil.Algorithm.MD5, DownloadPartCore.this.mDownloadParams.getFilePath()), true);
            }
            return Boolean.valueOf(fileOpResult);
        }

        @Override // com.netease.download.network.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
            ArrayList<String> list;
            LogUtil.i(DownloadPartCore.TAG, "分片下载 processHeader=" + pHeader + ", Code=" + pCode + ", resUrl=" + resUrl);
            StrUtil.getDomainFromUrl(resUrl);
            if (200 != pCode && 206 != pCode && pCode != 0) {
                int count = ReportInfo.getInstance().mAbnormalRetnum.containsKey(new StringBuilder(String.valueOf(pCode)).toString()) ? ReportInfo.getInstance().mAbnormalRetnum.get(new StringBuilder(String.valueOf(pCode)).toString()).intValue() : 0;
                ReportInfo.getInstance().mAbnormalRetnum.put(new StringBuilder(String.valueOf(pCode)).toString(), Integer.valueOf(count + 1));
                String ip = StrUtil.getDomainFromUrl(resUrl);
                String domainUrl = StrUtil.replaceDomainWithIpAddr(resUrl, DownloadPartCore.this.mHost, "/");
                if (ReportInfo.getInstance().mRetcodeFiles.containsKey(String.valueOf(pCode) + "!" + domainUrl)) {
                    list = ReportInfo.getInstance().mRetcodeFiles.get(String.valueOf(pCode) + "!" + domainUrl);
                } else {
                    list = new ArrayList<>();
                }
                if (!list.contains(ip)) {
                    list.add(ip);
                    LogUtil.i(DownloadPartCore.TAG, "分片下载，记录起来的出错的key=" + pCode + "!" + domainUrl + ", list是=" + list.toString());
                }
                ReportInfo.getInstance().mRetcodeFiles.put(String.valueOf(pCode) + "!" + domainUrl, list);
            }
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_PATCH_HOST, DownloadPartCore.this.mHost);
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_IP_PATCH_HOST, DownloadPartCore.this.mIp);
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_URL, resUrl);
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_HTTP_CODE, new StringBuilder(String.valueOf(pCode)).toString());
            LogUtil.d(DownloadPartCore.TAG, "(" + DownloadPartCore.this.mDownloadParams.hashCode() + ")downloadPart-processHeader: " + pHeader + ", hashCode=" + pCode);
            long contentLength = DownloadPartCore.this.getContentLength(pHeader);
            DownloadPartCore.this.setPartFileSize(contentLength);
            if (Dispatcher.getTaskParamsMap().get(DownloadPartCore.this.mDownloadParams.getFileId()) != null) {
                Dispatcher.getTaskParamsMap().get(DownloadPartCore.this.mDownloadParams.getFileId()).getPartResultMap().put(String.valueOf(StrUtil.getCdnIndex(DownloadPartCore.this.mDownloadParams.getDownloadUrl())) + "retcode", Integer.valueOf(pCode));
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void setPartFileSize(long pPartFileSize) {
        this.mPartFileSize = pPartFileSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getPartFileSize() {
        return this.mPartFileSize;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        return Integer.valueOf(start());
    }

    public void init(DownloadParams downloadParams, Const.Stage stage, int type) {
        this.mDownloadParams = downloadParams;
        this.mType = type;
        this.mState = stage;
        String overSea = DownloadInitInfo.getInstances().getOverSea();
        if ("-1".equals(overSea) || "0".equals(overSea)) {
            this.mOversea = false;
        }
    }

    public int start() {
        this.mLogData.put("removecdn", "false");
        return downloadPart(this.mDownloadParams, this.mState);
    }

    private int downloadPart(DownloadParams pParams, Const.Stage pStage) {
        LogUtil.stepLog("分片下载");
        LogUtil.i(TAG, "分片下载开始,分片=" + pParams.getPart() + ", code=" + pParams.hashCode() + ", 参数=" + pParams);
        if (pParams == null || !pParams.isValid()) {
            LogUtil.e(TAG, "invalid downloadPart params");
            return 14;
        }
        int code = pParams.hashCode();
        if (NetController.getInstances().isInterrupted()) {
            LogUtil.w(TAG, "download is interrupted(" + code + ") before action");
            if (13 == NetController.getInstances().getInterruptedCode()) {
                return 13;
            }
            if (12 == NetController.getInstances().getInterruptedCode()) {
                return 12;
            }
        }
        this.tmpFilePath = String.valueOf(pParams.getFilePath()) + "_tmp";
        File tmpDlFile = new File(this.tmpFilePath);
        File dlFile = new File(pParams.getFilePath());
        if (!dlFile.exists() && !tmpDlFile.exists()) {
            if (!tmpDlFile.getParentFile().exists()) {
                tmpDlFile.getParentFile().mkdirs();
            }
            try {
                tmpDlFile.createNewFile();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            if (!tmpDlFile.exists()) {
                LogUtil.w(TAG, "文件生成异常，文件名字=" + this.tmpFilePath);
            }
        }
        LogUtil.i(TAG, "dlFile.exists()111= " + dlFile.exists() + ", dlFile.length()=" + dlFile.length() + ", mState=" + this.mState + ", path=" + dlFile.getAbsolutePath());
        LogUtil.i(TAG, "tmpDlFile.exists()111= " + tmpDlFile.exists() + ", tmpDlFile.length()=" + tmpDlFile.length() + ", mState=" + this.mState + ", path=" + tmpDlFile.getAbsolutePath());
        if (tmpDlFile.exists() && !this.mRestart && tmpDlFile.length() > 0 && this.mState == Const.Stage.NORMAL) {
            if (tmpDlFile.length() == (pParams.getSegmentEnd() - pParams.getSegmentStart()) + 1) {
                tmpDlFile.renameTo(dlFile);
                dlFile = new File(pParams.getFilePath());
            }
            LogUtil.i(TAG, "存在了文件1=" + this.tmpFilePath + ", 长度=" + tmpDlFile.length() + ", 分片=" + pParams.getPart());
            DownloadListenerCore.getDownloadListenerHandler().sendHasDownloadMag(tmpDlFile.length(), this.tmpFilePath, pParams.getMd5(), pParams.getPart());
        } else if (dlFile.exists() && dlFile.length() > 0 && this.mState == Const.Stage.NORMAL) {
            LogUtil.i(TAG, "存在了文件2=" + pParams.getFilePath() + ", 长度=" + dlFile.length() + ", 分片=" + pParams.getPart());
            DownloadListenerCore.getDownloadListenerHandler().sendHasDownloadMag(dlFile.length(), pParams.getFilePath(), pParams.getMd5(), pParams.getPart());
        }
        long lastSize = tmpDlFile.length();
        LogUtil.i(TAG, "分片下载，文件名=" + this.tmpFilePath + ",code=" + pParams.getCode() + "， 之前下载好的文件的大小=" + lastSize);
        LogUtil.i(TAG, "文件是否已经存在=" + dlFile.exists());
        if (dlFile.exists()) {
            String md5 = HashUtil.calculateHash(HashUtil.Algorithm.MD5, pParams.getFilePath());
            String existMd5 = SpUtil.getInstance().getString(Integer.valueOf(code), Const.KEY_MD5, null);
            LogUtil.i(TAG, "md5=" + md5 + ", existMd5=" + existMd5 + ", dlFile.length()=" + dlFile.length() + ", END - START = " + ((pParams.getSegmentEnd() - pParams.getSegmentStart()) + 1));
            if (existMd5 != null && existMd5.equalsIgnoreCase(md5) && dlFile.length() == (pParams.getSegmentEnd() - pParams.getSegmentStart()) + 1) {
                LogUtil.i(TAG, "part(" + code + ") already downloaded. " + pParams);
                LogUtil.i(TAG, String.valueOf(dlFile.getAbsolutePath()) + " 文件已经存在 直接返回");
                return 0;
            }
        }
        SpUtil.getInstance().setString(Integer.valueOf(code), Const.KEY_MD5, null, true);
        this.mHeader = new HashMap();
        SpUtil.getInstance().getLong(Integer.valueOf(code), Const.KEY_TIME, 0L);
        LogUtil.i(TAG, "lastSize=" + lastSize + "  act fileSize=" + tmpDlFile.length() + ", pParams.getPart()=" + pParams.getPart());
        if (!tmpDlFile.exists() || tmpDlFile.length() < lastSize) {
            LogUtil.i(TAG, "文件是否已经存在=" + tmpDlFile.exists() + ", 文件大小是否异常=" + (tmpDlFile.length() < lastSize));
            lastSize = 0;
        }
        long size = lastSize + pParams.getSegmentStart();
        this.mHeader.put("START", new StringBuilder(String.valueOf(size)).toString());
        LogUtil.i(TAG, "新的头部位置=" + this.mHeader.get("START") + ", size=" + size + ", pParams.getPart()=" + pParams.getPart() + ", pParams.getCode()=" + pParams.getCode());
        if (pParams.getSegmentEnd() > pParams.getSegmentStart()) {
            this.mHeader.put("END", String.valueOf(pParams.getSegmentEnd()));
            LogUtil.i(TAG, "新的尾部位置=" + this.mHeader.get("END"));
        }
        LogUtil.d(TAG, "(" + code + ")header=" + this.mHeader);
        ConfigParams2.getInstance();
        int reqCode = 1;
        try {
            this.mHost = StrUtil.getDomainFromUrl(pParams.getDownloadUrl());
            LogUtil.i(TAG, "DownloadPartCore [downloadPart] mHost=" + this.mHost);
            LogUtil.i(TAG, "分片=" + pParams.getPart() + "分支选择，普通cdn源分支下载=" + CdnIpController.getInstances().hasNextIp(this.mHost) + ",  切换另外一个host=" + CdnIpController.getInstances().hasNextUnit(pParams.getmChannel()) + ", httpdns分支下载=" + HttpdnsProxy.getInstances().hasNext(Const.HTTPDNS_CONFIG_CND));
            if (CdnIpController.getInstances().hasNextIp(this.mHost)) {
                LogUtil.i(TAG, "[QAQA] 本host下，切换ip，分片=" + pParams.getPart());
                this.mIp = CdnIpController.getInstances().nextIp(this.mHost);
                LogUtil.i(TAG, "[QAQA] 分片=" + pParams.getPart() + ", 分片下载的请求的host=" + this.mHost + ", ip=" + this.mIp + ", 请求链接=" + pParams.getDownloadUrl(this.mIp));
                this.mHeader.put("Host", this.mHost);
                CdnUseTimeProxy.getInstance().start(this.mHost);
                reqCode = ((Integer) NetUtil.doHttpReq(pParams.getDownloadUrl(this.mIp), null, "GET", this.mHeader, this.dealer)).intValue();
            } else if (CdnIpController.getInstances().hasNextUnit(pParams.getmChannel())) {
                LogUtil.i(TAG, "[QAQA] 切换host，分片=" + pParams.getPart());
                CdnIpController.CndIpControllerUnit cndIpControllerUnit = CdnIpController.getInstances().nextUnit(pParams.getmChannel());
                this.mHost = cndIpControllerUnit.mDomain;
                this.mIp = CdnIpController.getInstances().nextIp(this.mHost);
                LogUtil.i(TAG, "分片=" + pParams.getPart() + ", 分片下载的请求的host=" + this.mHost + ", ip=" + this.mIp + ", 请求链接=" + pParams.getDownloadUrl(this.mIp));
                this.mHeader.put("Host", this.mHost);
                CdnUseTimeProxy.getInstance().start(this.mHost);
                reqCode = ((Integer) NetUtil.doHttpReq(pParams.getDownloadUrl(this.mIp), null, "GET", this.mHeader, this.dealer)).intValue();
            } else if (HttpdnsProxy.getInstances().hasNext(Const.HTTPDNS_CONFIG_CND)) {
                LogUtil.i(TAG, "httpdns分支下载 ， 分片=" + pParams.getPart() + ", 频道=" + pParams.getmChannel());
                HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit httpdnsUrlSwitcherCoreUnit = HttpdnsProxy.getInstances().next(Const.HTTPDNS_CONFIG_CND, pParams.getmChannel());
                if (httpdnsUrlSwitcherCoreUnit != null) {
                    this.mHost = httpdnsUrlSwitcherCoreUnit.host;
                    this.mIp = httpdnsUrlSwitcherCoreUnit.ip;
                    LogUtil.i(TAG, "分片=" + pParams.getPart() + "分片下载的请求的host=" + this.mHost + ", ip=" + this.mIp + ", 请求链接=" + pParams.getDownloadUrl(this.mIp));
                    this.mHeader.put("Host", this.mHost);
                    CdnUseTimeProxy.getInstance().start(this.mHost);
                    reqCode = ((Integer) NetUtil.doHttpReq(pParams.getDownloadUrl(this.mIp), null, "GET", this.mHeader, this.dealer)).intValue();
                }
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new StringBuilder().append(e).toString());
            e.printStackTrace();
        }
        CdnUseTimeProxy.getInstance().finish(this.mHost);
        if (reqCode == 0) {
            SpUtil.getInstance().getString(Integer.valueOf(code), Const.KEY_MD5, null);
        } else if (!NetController.getInstances().isInterrupted() && NetworkStatus.getNetStatus() != 0) {
            LogUtil.i(TAG, "[QAQA] part=" + pParams.getPart() + "，切换分片之前，host为=" + this.mHost + ", ip=" + this.mIp);
            LogUtil.i(TAG, "part=" + pParams.getPart() + "，CdnIpController.getInstances().hasNextIp(host)=" + CdnIpController.getInstances().hasNextIp(this.mHost) + ", CdnIpController.getInstances().hasNextUnit()=" + CdnIpController.getInstances().hasNextUnit(pParams.getmChannel()));
            LogUtil.i(TAG, "CdnIpController 总览=" + CdnIpController.getInstances().mActualTimeMap.toString());
            if (CdnIpController.getInstances().hasNextIp(this.mHost) || CdnIpController.getInstances().hasNextUnit(pParams.getmChannel())) {
                LogUtil.stepLog("切换分片");
                LogUtil.i(TAG, "isSlow=" + this.mNeedRemove + ", 是否最后一个ip=" + CdnIpController.getInstances().isLastIp(pParams.getmChannel()));
                if ((!CdnIpController.getInstances().isLastIp(pParams.getmChannel()) && this.mOversea) || !this.mOversea) {
                    CdnIpController.getInstances().removeIp(this.mHost, this.mIp);
                }
                if (!CdnIpController.getInstances().hasNextIp(this.mHost) && CdnIpController.getInstances().hasNextUnit(pParams.getmChannel())) {
                    LogUtil.i(TAG, "没有下一个ip了，直接删除这个单元，删除的host=" + this.mHost);
                    CdnIpController.getInstances().removeUnit(this.mHost);
                }
            }
            if (CdnIpController.getInstances().hasNextUnit(pParams.getmChannel())) {
                this.mRestart = true;
                reqCode = downloadPart(pParams, Const.Stage.RE_DOWNLOAD);
            } else if (!this.mOversea) {
                LogUtil.stepLog("切换httpdns");
                if (!HttpdnsProxy.getInstances().containKey(Const.HTTPDNS_CONFIG_CND)) {
                    LogUtil.i(TAG, "分片中，开始httpdns");
                    HttpdnsProxy.getInstances().synStart(Const.HTTPDNS_CONFIG_CND, ConfigProxy.getInstances().getResult().getCndArray());
                } else {
                    HttpdnsProxy.getInstances().remove(Const.HTTPDNS_CONFIG_CND, this.mIp, pParams.getmChannel());
                }
                if (HttpdnsProxy.getInstances().next(Const.HTTPDNS_CONFIG_CND, pParams.getmChannel()) != null) {
                    this.mRestart = true;
                    reqCode = downloadPart(pParams, Const.Stage.RE_DOWNLOAD);
                }
            }
            if (pStage != Const.Stage.NORMAL) {
                return reqCode;
            }
        }
        int resultCode = reqCode;
        if (NetController.getInstances().isInterrupted()) {
            if (13 == NetController.getInstances().getInterruptedCode()) {
                return 13;
            }
            if (12 == NetController.getInstances().getInterruptedCode()) {
                return 12;
            }
        }
        if (pStage == Const.Stage.NORMAL) {
            LogUtil.i(TAG, "分片" + pParams.getPart() + ", 分片下载，最后结果 resultCode=" + resultCode);
        }
        return resultCode;
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

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
