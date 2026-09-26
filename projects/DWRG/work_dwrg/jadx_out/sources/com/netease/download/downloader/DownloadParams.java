package com.netease.download.downloader;

import android.content.Context;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.check.CheckTime;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.config2.Lvsip;
import com.netease.download.dns.CdnIpController;
import com.netease.download.httpdns2.HttpdnsProxy;
import com.netease.download.listener.DownloadListener;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.progress.ProgressProxy;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.reporter.ReportProxy;
import com.netease.download.util.HashUtil;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DownloadParams {
    private static final Random RANDOM = new Random(System.currentTimeMillis());
    private static final String TAG = "DownloadParams";
    private long mDownloadedSize;
    private String mFileId;
    private String mHost;
    private String mHttpdnsIp;
    private String mIdentifier;
    private boolean mIsPart;
    private boolean mIsUiCallback;
    private String mLocalPath;
    private String mMd5;
    private String mOriginPrefix;
    private boolean mRenew;
    private long mSize;
    private String mTargetUrl;
    private int mTotalWeight;
    private String mUrlPrefix;
    private String mUrlSuffix;
    private int mPart = 0;
    private int mTotalPart = 1;
    private long mSegmentStart = 0;
    private long mSegmentEnd = 0;
    private int mCode = 0;
    private Timer timer = null;
    private String mChannel = null;

    /* loaded from: classes.dex */
    private class DownloadSegmentChannel {
        String url;
        int weight;

        DownloadSegmentChannel(String url, int weight) {
            this.url = url;
            this.weight = weight;
        }

        public String toString() {
            return "DownloadSegmentChannel{, url='" + this.url + "', weight=" + this.weight + '}';
        }
    }

    public String getmChannel() {
        return this.mChannel;
    }

    public void setmChannel(String mChannel) {
        this.mChannel = mChannel;
    }

    public void setTotalWeight(int pTotalWeight) {
        this.mTotalWeight = pTotalWeight;
    }

    public String getUrlSuffix() {
        return this.mUrlSuffix;
    }

    private String getUrl() {
        StringBuilder sb = new StringBuilder(this.mUrlPrefix);
        if (!this.mUrlPrefix.endsWith("/")) {
            sb.append("/");
        }
        if (this.mUrlSuffix.startsWith("/")) {
            sb.append(this.mUrlSuffix.substring(1));
        } else {
            sb.append(this.mUrlSuffix);
        }
        return sb.toString();
    }

    public String getDownloadUrl() {
        return this.mHttpdnsIp == null ? getUrl() : StrUtil.replaceDomainWithIpAddr(getUrl(), this.mHttpdnsIp, "/");
    }

    public String getDownloadUrl(String ip) {
        return StrUtil.replaceDomainWithIpAddr(getUrl(), ip, "/");
    }

    public String getDomainFromUrl() {
        return StrUtil.getDomainFromUrl(getOriginPrefix());
    }

    public void setUrlPrefix(String mUrl) {
        this.mUrlPrefix = mUrl;
    }

    public String getUrlPrefix() {
        return this.mUrlPrefix;
    }

    public void setUrlSuffix(String pSuffix) {
        this.mUrlSuffix = pSuffix;
    }

    public void setOriginPrefix(String pPrefix) {
        this.mOriginPrefix = pPrefix;
    }

    public String getOriginPrefix() {
        return this.mOriginPrefix;
    }

    public long getSize() {
        return this.mSize;
    }

    public void setSize(long pSize) {
        this.mSize = pSize;
    }

    public long getDownloadedSize() {
        return this.mDownloadedSize;
    }

    public void setDownloadedSize(long pDownloadedSize) {
        this.mDownloadedSize = pDownloadedSize;
    }

    public String getMd5() {
        if (TextUtils.isEmpty(this.mMd5)) {
            this.mMd5 = "12345678";
        }
        return this.mMd5;
    }

    public void setMd5(String pMd5) {
        this.mMd5 = pMd5;
    }

    public String getFilePath() {
        return this.mLocalPath;
    }

    public void setFilePath(String mFilePath) {
        this.mLocalPath = mFilePath;
    }

    boolean isUiCallback() {
        return this.mIsUiCallback;
    }

    public void setIsUiCallback(boolean mIsUiCallback) {
        this.mIsUiCallback = mIsUiCallback;
    }

    public boolean isValid() {
        LogUtil.i(TAG, "TextUtils.isEmpty(getUrlSuffix()=" + TextUtils.isEmpty(getUrlSuffix()) + ", TextUtils.isEmpty(getFilePath())=" + TextUtils.isEmpty(getFilePath()));
        return (TextUtils.isEmpty(getUrlSuffix()) || TextUtils.isEmpty(getFilePath())) ? false : true;
    }

    public long getSegmentEnd() {
        return this.mSegmentEnd;
    }

    public void setSegmentEnd(long mSegmentEnd) {
        this.mSegmentEnd = mSegmentEnd;
    }

    public long getSegmentStart() {
        return this.mSegmentStart;
    }

    public void setSegmentStart(long mSegmentStart) {
        this.mSegmentStart = mSegmentStart;
    }

    public void setTotalPart(int total) {
        this.mTotalPart = total;
    }

    private void setPart(int mPart) {
        this.mPart = mPart;
    }

    public int getPart() {
        return this.mPart;
    }

    public boolean isParted() {
        return this.mIsPart;
    }

    public void setIsParted(boolean isPart) {
        this.mIsPart = isPart;
    }

    public int getTotalPart() {
        return this.mTotalPart;
    }

    public int getCode() {
        return this.mCode;
    }

    public void setCode(int pCode) {
        this.mCode = pCode;
    }

    public String getIdentifier() {
        return this.mIdentifier;
    }

    public void setIdentifier(String mIdentifier) {
        this.mIdentifier = mIdentifier;
    }

    public String getFileId() {
        return this.mFileId;
    }

    public void setFileId(String mFileId) {
        this.mFileId = mFileId;
    }

    public String getTargetUrl() {
        return this.mTargetUrl;
    }

    public void setTargetUrl(String mTargetUrl) {
        this.mTargetUrl = mTargetUrl;
    }

    public String getHost() {
        return this.mHost;
    }

    public void setHost(String mHost) {
        this.mHost = mHost;
    }

    public String getmHttpdnsIp() {
        return this.mHttpdnsIp;
    }

    public void setmHttpdnsIp(String mHttpdnsIp) {
        this.mHttpdnsIp = mHttpdnsIp;
    }

    public DownloadParams produceSegment(int pPart, long pStart, long pEnd, String pHost) {
        return new DownloadParams(this, pPart, pStart, pEnd, pHost);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadParams() {
    }

    public static List<DownloadParams> createParamsArray(Context pContext, JSONObject paramsJson, DownloadListener pListener) {
        String type;
        long size;
        LogUtil.i(TAG, "下载器开始");
        LogUtil.i(TAG, "create params array");
        if (DownloadProxy.mIsStart) {
            LogUtil.i(TAG, "already start");
            return null;
        }
        DownloadListenerCore.getInstances().init(pListener);
        DownloadListenerCore.getInstances().clear();
        ReportProxy.getInstance().init(pContext);
        ReportProxy.getInstance().setNeedDeleteFile(true);
        LogUtil.i(TAG, "DownloadParams [createParamsArray] 下载前期，发送日志（上一次遗留文件）");
        ReportProxy.getInstance().report(pContext, true);
        HttpdnsProxy.getInstances().clean();
        CdnIpController.getInstances().clean();
        CheckTime.clean();
        Lvsip.getInstance().clean();
        List<DownloadParams> list = new ArrayList<>();
        if (paramsJson != null) {
            try {
                type = paramsJson.optString("type");
            } catch (NumberFormatException e) {
                type = "error";
            }
            String downloadId = paramsJson.optString("downloadid");
            LogUtil.i(TAG, "downloadid =" + downloadId);
            if (!TextUtils.isEmpty(downloadId) && type.equals(Const.TYPE_TARGET_PATCH)) {
                ProgressProxy.getInstances().init(pContext);
                String params = ProgressProxy.getInstances().getParentTask(downloadId, paramsJson.toString());
                if (!TextUtils.isEmpty(params)) {
                    try {
                        paramsJson = new JSONObject(params);
                    } catch (JSONException e2) {
                        LogUtil.e(TAG, "持久化数据中获取父任务失败，选用传入参数中的任务参数进行此次下载");
                        e2.printStackTrace();
                    }
                }
            }
            LogUtil.i(TAG, "从持久化中获取数据，转为json=" + paramsJson.toString());
            long allSize = 0;
            JSONArray array = paramsJson.optJSONArray("downfile");
            if (array != null) {
                JSONObject downfile = null;
                for (int i = 0; i < array.length(); i++) {
                    DownloadParams params2 = new DownloadParams();
                    try {
                        String threadnumString = paramsJson.optString("threadnum");
                        if (!TextUtils.isEmpty(threadnumString)) {
                            Integer.parseInt(threadnumString);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    params2.setIsParted(false);
                    params2.setIsUiCallback(true);
                    try {
                        downfile = array.getJSONObject(i);
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                    }
                    if (downfile != null) {
                        params2.setTargetUrl(downfile.optString("targeturl"));
                        params2.setmChannel(StrUtil.getCdnChannel(params2.getTargetUrl()));
                        params2.setFilePath(downfile.optString("filepath"));
                        params2.setUrlSuffix(StrUtil.getSuffixFromUrl(downfile.optString("targeturl")));
                        params2.setOriginPrefix(StrUtil.getPrefixFromUrl(downfile.optString("targeturl")));
                        params2.setUrlPrefix(StrUtil.getPrefixFromUrl(downfile.optString("targeturl")));
                        if (downfile.has("first") && downfile.has("last")) {
                            LogUtil.i(TAG, "参数选择first last方式，忽略size字段");
                            try {
                                params2.setSegmentStart(Integer.parseInt(downfile.optString("first")));
                                params2.setSegmentEnd(Integer.parseInt(downfile.optString("last")));
                                size = params2.getSegmentEnd() - params2.getSegmentStart();
                            } catch (Exception e5) {
                                size = -100;
                            }
                        } else {
                            LogUtil.i(TAG, "参数选择size方式，忽略first last字段");
                            try {
                                size = Integer.parseInt(downfile.optString(Const.KEY_SIZE));
                            } catch (NumberFormatException e6) {
                                size = -100;
                            }
                        }
                        allSize += size;
                        LogUtil.i(TAG, "最终的size为=" + size + ", 头部=" + params2.getSegmentStart() + ", 尾部=" + params2.getSegmentEnd());
                        params2.setSize(size);
                        params2.setMd5(downfile.optString(Const.KEY_MD5));
                        Const.TYPE_TARGET_NORMAL.equals(type);
                    }
                    params2.setFileId(new StringBuilder(String.valueOf(params2.hashCode())).toString());
                    LogUtil.i(TAG, "params=" + params2.toString());
                    list.add(params2);
                }
            }
            LogUtil.i(TAG, "allSize=" + allSize);
            DownloadInitInfo.getInstances().setAllSize(allSize);
            ReportInfo.getInstance().mTotalSize = allSize;
            LogUtil.i(TAG, "所有文件总大小=" + allSize);
            long downloadedSize = ProgressProxy.getInstances().getDownloadedSize(list);
            LogUtil.i(TAG, "已经下载好的总大小为=" + downloadedSize);
            ReportInfo.getInstance().mDlSize.put(KeyConst.KEY_OVERALL, Long.valueOf(downloadedSize));
            return list;
        }
        return list;
    }

    public void setConfigParam(ConfigParams2 pCachedConfigParam) {
    }

    private DownloadParams(DownloadParams pCopy, int pPart, long pStart, long pEnd, String pHost) {
        setUrlSuffix(pCopy.getUrlSuffix());
        setFilePath(String.valueOf(pCopy.getFilePath()) + "_" + pPart);
        setIsUiCallback(false);
        setPart(pPart + 1);
        setIsParted(true);
        setSegmentStart(pStart);
        setMd5(pCopy.getMd5());
        setFileId(pCopy.getFileId());
        setSegmentEnd(pEnd);
        setOriginPrefix(pCopy.getOriginPrefix());
        setTotalPart(pCopy.getTotalPart());
        setUrlPrefix(StrUtil.replaceDomainWithIpAddr(pCopy.getUrlPrefix(), pHost, "/"));
    }

    public int hashCode() {
        if (getCode() == 0) {
            setCode(HashUtil.getCrc(getUrlSuffix(), getFilePath()));
            setIdentifier("ad-" + getCode() + "-" + (System.currentTimeMillis() / 100));
        }
        return getCode();
    }

    public String toString() {
        return "DownloadParams{mUrlPrefix='" + this.mUrlPrefix + "', mOriginPrefix='" + this.mOriginPrefix + "', mChannel='" + this.mChannel + "', mUrlSuffix='" + this.mUrlSuffix + "', mLocalPath='" + this.mLocalPath + "', mMd5='" + this.mMd5 + "', mSize=" + this.mSize + ", mDownloadedSize=" + this.mDownloadedSize + ", mRenew=" + this.mRenew + ", mIsUiCallback=" + this.mIsUiCallback + ", mPart=" + this.mPart + ", mTotalPart=" + this.mTotalPart + ", mFileId=" + this.mFileId + ", mSegmentStart=" + this.mSegmentStart + ", mSegmentEnd=" + this.mSegmentEnd + ", mCode=" + this.mCode + "', mIdentifier='" + this.mIdentifier + "'}";
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
