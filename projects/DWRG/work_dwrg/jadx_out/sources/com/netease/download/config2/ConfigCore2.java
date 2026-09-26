package com.netease.download.config2;

import android.content.Context;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.network.NetUtil;
import com.netease.download.network.NetworkDealer;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ConfigCore2 {
    private static final String TAG = "ConfigCore2";
    private HashMap<String, String> mLogData = new HashMap<>();
    private String mHost = null;
    private NetworkDealer<Boolean> dealer = new NetworkDealer<Boolean>() { // from class: com.netease.download.config2.ConfigCore2.1
        @Override // com.netease.download.network.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
            ArrayList<String> list;
            ArrayList<String> slowIps;
            ArrayList<String> errorIps;
            LogUtil.i(ConfigCore2.TAG, "pHeader=" + pHeader.toString() + ", pCode=" + pCode + ", resUrl=" + resUrl);
            if (200 != pCode && 206 != pCode && pCode != 0) {
                int count = ReportInfo.getInstance().mAbnormalRetnum.containsKey(new StringBuilder(String.valueOf(pCode)).toString()) ? ReportInfo.getInstance().mAbnormalRetnum.get(new StringBuilder(String.valueOf(pCode)).toString()).intValue() : 0;
                ReportInfo.getInstance().mAbnormalRetnum.put(new StringBuilder(String.valueOf(pCode)).toString(), Integer.valueOf(count + 1));
                String ip = StrUtil.getDomainFromUrl(resUrl);
                String domainUrl = StrUtil.replaceDomainWithIpAddr(resUrl, ConfigCore2.this.mHost, "/");
                if (ReportInfo.getInstance().mRetcodeFiles.containsKey(String.valueOf(pCode) + "!" + domainUrl)) {
                    list = ReportInfo.getInstance().mRetcodeFiles.get(String.valueOf(pCode) + "!" + domainUrl);
                } else {
                    list = new ArrayList<>();
                }
                if (!list.contains(ip)) {
                    list.add(ip);
                    LogUtil.i(ConfigCore2.TAG, "记录起来的出错的key=" + pCode + "!" + domainUrl + ", list是=" + list.toString());
                }
                ReportInfo.getInstance().mRetcodeFiles.put(String.valueOf(pCode) + "!" + domainUrl, list);
                ReportInfo.getInstance().mIpRemoved = 1;
                if (ReportInfo.getInstance().mSlowIps.get(ConfigCore2.this.mHost) != null) {
                    slowIps = ReportInfo.getInstance().mSlowIps.get(ConfigCore2.this.mHost);
                } else {
                    slowIps = new ArrayList<>();
                }
                if (!slowIps.contains(ip)) {
                    if (ReportInfo.getInstance().mErrorIps.get(ConfigCore2.this.mHost) != null) {
                        errorIps = ReportInfo.getInstance().mErrorIps.get(ConfigCore2.this.mHost);
                    } else {
                        errorIps = new ArrayList<>();
                    }
                    if (!errorIps.contains(ip)) {
                        errorIps.add(ip);
                        ReportInfo.getInstance().mErrorIps.put(ConfigCore2.this.mHost, errorIps);
                    }
                }
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.download.network.NetworkDealer
        public Boolean processContent(InputStream pInputStream) throws Exception {
            LogUtil.stepLog("下载配置文件，解析");
            boolean result = false;
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
            LogUtil.i(ConfigCore2.TAG, "请求内容=" + resp);
            if (TextUtils.isEmpty(resp)) {
                return false;
            }
            ConfigParams2 configParams = ConfigParams2.init(resp);
            if (configParams != null) {
                result = true;
            }
            LogUtil.i(ConfigCore2.TAG, "配置文件内容=" + configParams);
            return Boolean.valueOf(result);
        }
    };

    public int start(Context context, String projectId, String ipAddr) {
        this.mLogData.put("lvsip", "false");
        int result = downloadConfig(context, projectId, ipAddr);
        return result;
    }

    private int downloadConfig(Context context, String projectId, String ipAddr) {
        String configUrl;
        LogUtil.stepLog("下载配置文件");
        this.mLogData.put("state", Const.LOG_TYPE_STATE_START);
        this.mLogData.put("filetype", "CFG");
        LogUtil.i(TAG, "接入方设置的config=" + DownloadInitInfo.getInstances().mConfigurl);
        if (!TextUtils.isEmpty(DownloadInitInfo.getInstances().mConfigurl)) {
            configUrl = DownloadInitInfo.getInstances().mConfigurl;
        } else {
            configUrl = String.format(Const.URL_CONFIG_FORMAT, projectId);
        }
        String domain = StrUtil.getDomainFromUrl(configUrl);
        ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_SERVER_LIST_HOST, domain);
        Map<String, String> header = null;
        if (!TextUtils.isEmpty(ipAddr)) {
            LogUtil.i(TAG, "ipAddr=" + ipAddr);
            configUrl = StrUtil.replaceDomainWithIpAddr(configUrl, ipAddr, "/");
            header = new HashMap<>();
            this.mHost = domain;
            header.put("Host", domain);
        }
        LogUtil.i(TAG, "请求链接=" + configUrl + "，域名=" + domain);
        try {
            if (TextUtils.isEmpty(ipAddr)) {
                return 11;
            }
            int result = ((Integer) NetUtil.doHttpReq(configUrl, null, "GET", header, this.dealer)).intValue();
            LogUtil.i(TAG, "下载结果=" + result + "，请求链接=" + configUrl);
            return result;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return 4;
        } catch (SocketTimeoutException e2) {
            e2.printStackTrace();
            return 13;
        } catch (Exception e3) {
            e3.printStackTrace();
            return 11;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
