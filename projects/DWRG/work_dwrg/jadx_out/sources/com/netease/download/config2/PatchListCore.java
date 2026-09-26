package com.netease.download.config2;

import android.content.Context;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.dns.DnsCore;
import com.netease.download.dns.DnsParams;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.network.NetUtil;
import com.netease.download.network.NetworkDealer;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.reporter.ReportUtil;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class PatchListCore implements Callable<Integer> {
    private static final String TAG = "PatchListCore";
    private Context mContext = null;
    private String mUrlPath = null;
    private String mFileName = null;
    private String mMd5 = null;
    private String mFilePath = null;
    private String mHost = null;
    private HashMap<String, String> mLogData = new HashMap<>();
    private NetworkDealer<Boolean> dealer = new NetworkDealer<Boolean>() { // from class: com.netease.download.config2.PatchListCore.1
        @Override // com.netease.download.network.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
            ArrayList<String> list;
            ArrayList<String> slowIps;
            ArrayList<String> errorIps;
            LogUtil.i(PatchListCore.TAG, "pHeader=" + pHeader.toString() + ", pCode=" + pCode + ", resUrl=" + resUrl);
            if (200 != pCode && 206 != pCode && pCode != 0) {
                int count = ReportInfo.getInstance().mAbnormalRetnum.containsKey(new StringBuilder(String.valueOf(pCode)).toString()) ? ReportInfo.getInstance().mAbnormalRetnum.get(new StringBuilder(String.valueOf(pCode)).toString()).intValue() : 0;
                ReportInfo.getInstance().mAbnormalRetnum.put(new StringBuilder(String.valueOf(pCode)).toString(), Integer.valueOf(count + 1));
                String ip = StrUtil.getDomainFromUrl(resUrl);
                String domainUrl = StrUtil.replaceDomainWithIpAddr(resUrl, PatchListCore.this.mHost, "/");
                if (ReportInfo.getInstance().mRetcodeFiles.containsKey(String.valueOf(pCode) + "!" + domainUrl)) {
                    list = ReportInfo.getInstance().mRetcodeFiles.get(String.valueOf(pCode) + "!" + domainUrl);
                } else {
                    list = new ArrayList<>();
                }
                if (!list.contains(ip)) {
                    list.add(ip);
                    LogUtil.i(PatchListCore.TAG, "记录起来的出错的key=" + pCode + "!" + domainUrl + ", list是=" + list.toString());
                }
                ReportInfo.getInstance().mRetcodeFiles.put(String.valueOf(pCode) + "!" + domainUrl, list);
                ReportInfo.getInstance().mIpRemoved = 1;
                if (ReportInfo.getInstance().mSlowIps.get(PatchListCore.this.mHost) != null) {
                    slowIps = ReportInfo.getInstance().mSlowIps.get(PatchListCore.this.mHost);
                } else {
                    slowIps = new ArrayList<>();
                }
                if (!slowIps.contains(ip)) {
                    if (ReportInfo.getInstance().mErrorIps.get(PatchListCore.this.mHost) != null) {
                        errorIps = ReportInfo.getInstance().mErrorIps.get(PatchListCore.this.mHost);
                    } else {
                        errorIps = new ArrayList<>();
                    }
                    if (!errorIps.contains(ip)) {
                        errorIps.add(ip);
                        ReportInfo.getInstance().mErrorIps.put(PatchListCore.this.mHost, errorIps);
                    }
                }
                ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, "2");
            } else {
                ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, "32");
            }
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_SERVER_LIST_HOST, PatchListCore.this.mHost);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.download.network.NetworkDealer
        public Boolean processContent(InputStream pInputStream) throws Exception {
            LogUtil.i(PatchListCore.TAG, "文件存储路径=" + PatchListCore.this.mFilePath);
            File file = new File(String.valueOf(PatchListCore.this.mFilePath) + ".tmp");
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            FileOutputStream fileStream = new FileOutputStream(String.valueOf(PatchListCore.this.mFilePath) + ".tmp");
            byte[] buffer = new byte[1024];
            BufferedInputStream inputStream = new BufferedInputStream(pInputStream);
            while (true) {
                int len = inputStream.read(buffer);
                if (len != -1) {
                    DownloadListenerCore.getInstances();
                    DownloadListenerCore.getDownloadListenerHandler().sendProgressMsg(DownloadInitInfo.getInstances().getAllSize(), len, PatchListCore.this.mFilePath, PatchListCore.this.mFilePath);
                    fileStream.write(buffer, 0, len);
                } else {
                    inputStream.close();
                    fileStream.close();
                    return true;
                }
            }
        }
    };

    public void init(Context context, String urlPath, String md5, String filePath, String fileName) {
        this.mContext = context;
        this.mUrlPath = urlPath;
        this.mMd5 = md5;
        this.mFilePath = filePath;
        this.mFileName = fileName;
    }

    public int start() {
        this.mLogData.put("state", Const.LOG_TYPE_STATE_START);
        this.mLogData.put("filetype", "CFG");
        DnsCore.getInstances().init(this.mUrlPath);
        ArrayList<DnsParams.Unit> dnsIpNodeUnitList = DnsCore.getInstances().start();
        LogUtil.i(TAG, "列表文件做DNS解析，DNS结果=" + dnsIpNodeUnitList.toString());
        if (dnsIpNodeUnitList != null && dnsIpNodeUnitList.size() > 0) {
            DownloadListenerCore.getInstances();
            DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(0, 0L, 0L, "__DOWNLOAD_DNS_RESOLVED__", "__DOWNLOAD_DNS_RESOLVED__", ReportUtil.getInstances().getCurrentSessionId());
        } else {
            DownloadListenerCore.getInstances();
            DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(11, 0L, 0L, "__DOWNLOAD_DNS_RESOLVED__", "__DOWNLOAD_DNS_RESOLVED__", ReportUtil.getInstances().getCurrentSessionId());
        }
        ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_SERVER_LIST_HOST, this.mUrlPath);
        int result = 11;
        if (dnsIpNodeUnitList != null && dnsIpNodeUnitList.size() > 0) {
            ReportInfo.getInstance().mUpdateSvrIps = dnsIpNodeUnitList.get(0).ipArrayList;
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_SERVER_LIST_HOST, dnsIpNodeUnitList.get(0).domain);
            Iterator<DnsParams.Unit> it = dnsIpNodeUnitList.iterator();
            while (it.hasNext()) {
                DnsParams.Unit unit = it.next();
                ArrayList<String> ipArray = unit.ipArrayList;
                Iterator<String> it2 = ipArray.iterator();
                while (it2.hasNext()) {
                    result = downloadConfig(this.mContext, this.mUrlPath, it2.next());
                    LogUtil.i(TAG, "downloadConfig result1=" + result);
                    if (result == 0) {
                        break;
                    }
                }
                LogUtil.i(TAG, "downloadConfig result2=" + result);
                if (result == 0) {
                    break;
                }
            }
        }
        if (result != 0) {
            LogUtil.stepLog("采用lvsip");
            if (!Lvsip.getInstance().isCteateIp()) {
                String[] ips = ConfigParams2.getInstance() != null ? ConfigParams2.getInstance().getLvsipArray() : null;
                if (ips == null || ips.length <= 0) {
                    String oversea = DownloadInitInfo.getInstances().getOverSea();
                    if ("1".equals(oversea) || "2".equals(oversea)) {
                        ips = Const.REQ_IPS_WS_OVERSEA;
                    } else if ("0".equals(oversea) || "-1".equals(oversea)) {
                        ips = Const.REQ_IPS_WS_CHINA;
                    } else {
                        ips = Const.REQ_IPS_WS;
                    }
                }
                Lvsip.getInstance().init(ips);
                Lvsip.getInstance().createLvsip();
            }
            while (Lvsip.getInstance().hasNext() && result != 0) {
                String ip = Lvsip.getInstance().getNewIpFromArray();
                LogUtil.i(TAG, "列表请求环节--采用lvsip，将要使用的ip=" + ip);
                if (!TextUtils.isEmpty(ip)) {
                    result = downloadConfig(this.mContext, this.mUrlPath, ip);
                }
            }
        }
        File pfile = new File(String.valueOf(this.mFilePath) + ".tmp");
        LogUtil.i(TAG, "列表请求环节--临时文件是否存在=" + pfile.exists() + ", mFilePath=" + pfile.getAbsolutePath());
        if (result == 0) {
            this.mLogData.put("state", Const.LOG_TYPE_STATE_FINISH);
            this.mLogData.put("filetype", "CFG");
            File file = new File(this.mFilePath);
            if (pfile.exists()) {
                LogUtil.i(TAG, "列表请求环节--下载成功，命名为正式文件");
                pfile.renameTo(file);
            }
        } else {
            this.mLogData.put("state", "error");
            this.mLogData.put("filetype", "CFG");
            if (pfile.exists()) {
                LogUtil.i(TAG, "列表请求环节--下载失败，删除临时文件");
                pfile.delete();
            }
        }
        return result;
    }

    private int downloadConfig(Context context, String url, String ipAddr) {
        LogUtil.stepLog("下载配置列表文件");
        String configUrl = url;
        Map<String, String> header = null;
        String domain = StrUtil.getDomainFromUrl(url);
        if (!TextUtils.isEmpty(ipAddr)) {
            LogUtil.i(TAG, "ipAddr=" + ipAddr);
            configUrl = StrUtil.replaceDomainWithIpAddr(configUrl, ipAddr, "/");
            header = new HashMap<>();
            this.mHost = domain;
            header.put("Host", domain);
        }
        LogUtil.i(TAG, "configUrl=" + configUrl + ", domain=" + domain);
        boolean lvsip = false;
        if (Const.Not_MD5_BUT_LVSIP.equals(this.mMd5)) {
            LogUtil.i(TAG, "没有设置MD5，直接走lvsip");
            lvsip = true;
            this.mMd5 = null;
        }
        Integer result = 11;
        if (!lvsip) {
            try {
                if (!TextUtils.isEmpty(ipAddr)) {
                    result = (Integer) NetUtil.doHttpReq(configUrl, null, "GET", header, this.dealer);
                    LogUtil.i(TAG, "result=" + result + "，configUrl=" + configUrl);
                }
            } catch (FileNotFoundException e) {
                result = 4;
                e.printStackTrace();
            } catch (SocketTimeoutException e2) {
                result = 13;
                e2.printStackTrace();
            } catch (Exception e3) {
                result = 11;
                e3.printStackTrace();
            }
        }
        return result.intValue();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        int result = start();
        int mRetry = 3;
        while (result != 0 && mRetry > 0) {
            LogUtil.i(TAG, "列表文件重新下载,还有" + mRetry + "次重试机会");
            mRetry--;
            Lvsip.getInstance().clean();
            result = start();
        }
        return Integer.valueOf(result);
    }
}
