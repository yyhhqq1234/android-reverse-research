package com.netease.download.downloader;

import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.check.CheckTime;
import com.netease.download.config2.ConfigProxy;
import com.netease.download.config2.Lvsip;
import com.netease.download.config2.PatchListProxy;
import com.netease.download.dns.CdnIpController;
import com.netease.download.handler.Dispatcher;
import com.netease.download.httpdns2.HttpdnsProxy;
import com.netease.download.listener.DownloadListener;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.network.ConnectionChangeReceiver;
import com.netease.download.network.NetController;
import com.netease.download.network.NetworkStatus;
import com.netease.download.progress.ProgressProxy;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.reporter.ReportProxy;
import com.netease.download.reporter.ReportUtil;
import com.netease.download.task.Pre;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DownloadProxy {
    private static final String TAG = "DownloadProxy";
    private DownloadListener mListener = null;
    private List<DownloadParams> mParamsList = null;
    private static DownloadProxy sDownloadProxy = null;
    public static Context mContext = null;
    public static boolean mIsStart = false;
    public static boolean sOnceStop = false;
    private static ConnectionChangeReceiver mReceiver = null;

    private DownloadProxy() {
    }

    public static DownloadProxy getInstance() {
        if (sDownloadProxy == null) {
            sDownloadProxy = new DownloadProxy();
        }
        return sDownloadProxy;
    }

    public static void registerReceiver(Context context) {
        LogUtil.i(TAG, "注册网络广播监听器");
        mReceiver = new ConnectionChangeReceiver();
        context.registerReceiver(mReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public static void unregisterReceiver() {
        LogUtil.i(TAG, "注销网络广播监听器");
        if (mContext != null && mReceiver != null) {
            mContext.unregisterReceiver(mReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init(Context context, DownloadListener listener) {
        if (mContext == null) {
            mContext = context;
        }
        if (this.mListener == null) {
            this.mListener = listener;
        }
        NetworkStatus.initialize(mContext);
        registerReceiver(mContext);
        DownloadInitInfo.getInstances().setContext(mContext);
    }

    public boolean isStart() {
        return mIsStart;
    }

    public void asyncDownloadArray(final Context pContext, final JSONObject paramsJson, final DownloadListener pListener) {
        if (pContext == null) {
            LogUtil.w(TAG, "DownloadProxy [asyncDownloadArray] pContext is null");
            return;
        }
        if (pListener == null) {
            LogUtil.w(TAG, "DownloadProxy [asyncDownloadArray] pListener is null");
            return;
        }
        if (paramsJson == null) {
            LogUtil.w(TAG, "DownloadProxy [asyncDownloadArray] paramsJson is null");
        } else if (mIsStart) {
            LogUtil.w(TAG, "DownloadProxy [asyncDownloadArray] already start");
        } else {
            new Thread(new Runnable() { // from class: com.netease.download.downloader.DownloadProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    DownloadProxy.mIsStart = true;
                    ReportProxy.getInstance().setNeedDeleteFile(true);
                    LogUtil.i(DownloadProxy.TAG, "DownloadParams [createParamsArray] 下载前期，发送日志（上一次遗留文件）");
                    ReportProxy.getInstance().report(pContext, true);
                    ReportProxy.getInstance().init(pContext);
                    DownloadProxy.this.init(pContext, pListener);
                    DownloadProxy.this.reset();
                    if (!NetworkStatus.isConnected(pContext)) {
                        DownloadProxy.mIsStart = false;
                        DownloadListenerCore.getInstances();
                        DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(11, 0L, 0L, "__DOWNLOAD_NETWORK_LOST__", "__DOWNLOAD_NETWORK_LOST__", "0");
                        LogUtil.w(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] no network connected");
                        return;
                    }
                    String downloadId = paramsJson.optString("downloadid");
                    LogUtil.w(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] downloadId=" + downloadId + ", DownloadInitInfo downloadId=" + DownloadInitInfo.getInstances().getmDownloadId());
                    DownloadProxy.this.mParamsList = DownloadProxy.this.parseParam(paramsJson);
                    DownloadProxy.init();
                    LogUtil.w(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] this is a wifi only task1=" + NetworkStatus.isConnectedMobile(pContext));
                    LogUtil.w(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] this is a wifi only task2=" + DownloadInitInfo.getInstances().ismWifiOnly());
                    if (!NetworkStatus.isConnectedMobile(pContext) || !DownloadInitInfo.getInstances().ismWifiOnly()) {
                        if (DownloadProxy.this.mParamsList == null || DownloadProxy.this.mParamsList.size() <= 0) {
                            LogUtil.i(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] mParamsList params error");
                            ReportProxy.getInstance().setOpen(false);
                            return;
                        }
                        if (Const.TYPE_TARGET_NORMAL.equals(DownloadInitInfo.getInstances().getmType())) {
                            LogUtil.i(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] 列表文件下载");
                            DownloadParams downloadParams = (DownloadParams) DownloadProxy.this.mParamsList.get(0);
                            if (downloadParams != null) {
                                PatchListProxy.getInstances().init(DownloadProxy.mContext, downloadParams);
                                PatchListProxy.getInstances().start();
                                return;
                            }
                            return;
                        }
                        LogUtil.i(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] patch文件下载");
                        Pre.getInstatnces().init(DownloadProxy.mContext, DownloadInitInfo.getInstances().getProjectId());
                        int preResult = Pre.getInstatnces().start();
                        LogUtil.i(DownloadProxy.TAG, "预处理结果=" + preResult);
                        if (preResult == 0) {
                            LogUtil.i(DownloadProxy.TAG, "开启一个patch系列下载");
                            Dispatcher.getInstance().startSyn(DownloadProxy.mContext, DownloadProxy.this.mParamsList);
                            return;
                        } else {
                            LogUtil.i(DownloadProxy.TAG, "预处理不成功，直接上传日志。");
                            ReportProxy.getInstance().close(1L);
                            return;
                        }
                    }
                    LogUtil.w(DownloadProxy.TAG, "DownloadProxy [asyncDownloadArray] this is a wifi only task");
                }
            }).start();
        }
    }

    public static void clearDownloadId(Context context, String downloadId) {
        LogUtil.i(TAG, "clearDownloadId downloadId=" + downloadId);
        if (context == null) {
            LogUtil.i(TAG, SdkConstants.RESULT_MESSAGE_CONTEXT_NULL);
            return;
        }
        if (TextUtils.isEmpty(downloadId)) {
            LogUtil.i(TAG, "clearDownloadId param error");
            return;
        }
        if (Const.ALL_DOWNLOADID.equals(downloadId)) {
            ProgressProxy.getInstances().clearAllDownloadId(context);
        } else {
            ProgressProxy.getInstances().removeInfo(context, downloadId);
        }
        DownloadListenerCore.getInstances();
        DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(0, 0L, 0L, "__DOWNLOAD_CLEAN_CACHE__", "__DOWNLOAD_CLEAN_CACHE__", ReportUtil.getInstances().getCurrentSessionId());
    }

    public static synchronized void stopAll() {
        synchronized (DownloadProxy.class) {
            sOnceStop = true;
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, Constants.VIA_REPORT_TYPE_MAKE_FRIEND);
            ReportInfo.getInstance().mStatus = 2;
            NetController.getInstances().setInterruptedCode(12);
        }
    }

    public static String getDownloadId() {
        LogUtil.d(TAG, "getDownloadId");
        return StrUtil.getRandomId();
    }

    public static String getCurrentSessionId() {
        return ReportUtil.getInstances().getCurrentSessionId();
    }

    public static void init() {
        ReportUtil.getInstances().init(mContext);
        ReportInfo.getInstance().mGameCode = DownloadInitInfo.getInstances().getProjectId();
        ReportInfo.getInstance().mDownloadid = String.valueOf(DownloadInitInfo.getInstances().getmDownloadId()) + "_" + ReportUtil.getInstances().getDeviceId();
        ReportInfo.getInstance().mOsName = ReportUtil.getInstances().getOsName();
        ReportInfo.getInstance().mOsVer = ReportUtil.getInstances().getOsVer();
        ReportInfo.getInstance().mUdtVer = ReportUtil.getInstances().getUdtVer();
        ReportInfo.getInstance().mAreaZone = ReportUtil.getInstances().getAreaZone();
        ReportInfo.getInstance().mTimeZone = ReportUtil.getInstances().getTimeZone();
        ReportInfo.getInstance().mNetWork = ReportUtil.getInstances().getNetworkType();
        ReportInfo reportInfo = ReportInfo.getInstance();
        ReportUtil.getInstances();
        reportInfo.mMobileType = ReportUtil.getSystemModel();
        ReportInfo.getInstance().mNetworkSignal = ReportUtil.getInstances().getNetworkSignal();
        ReportInfo.getInstance().mCliIp = ReportUtil.getInstances().getLocalIp();
        ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_DATASOURCE, "download_sdk");
        ReportInfo.getInstance().mUdid = ReportUtil.getInstances().getDeviceId();
        ReportInfo.getInstance().mSessionid = ReportUtil.getInstances().getCurrentSessionId();
        String logTest = DownloadInitInfo.getInstances().getmLogTest();
        int logtest = 0;
        if (!TextUtils.isEmpty(logTest)) {
            logtest = Integer.parseInt(logTest);
        }
        ReportInfo.getInstance().mLogTest = logtest;
        if (ReportUtil.getInstances().hasPhonePermission()) {
            LogUtil.i(TAG, "有读手机权限");
            ReportInfo.getInstance().mNetworkIsp = ReportUtil.getInstances().getNetworkIsp();
        } else {
            LogUtil.i(TAG, "没有读手机权限");
        }
        new Thread(new Runnable() { // from class: com.netease.download.downloader.DownloadProxy.2
            @Override // java.lang.Runnable
            public void run() {
                String localGW = StrUtil.getWifiRouteIPAddress(DownloadProxy.mContext);
                if (!TextUtils.isEmpty(localGW)) {
                    String result = ReportUtil.getInstances().ping(localGW, 4, 2);
                    try {
                        JSONObject jsonObject = new JSONObject(result);
                        int cost = jsonObject.optInt("cost");
                        int lost = jsonObject.optInt("lost");
                        LogUtil.i(DownloadProxy.TAG, "DownloadProxy [init] ping localGW=" + localGW + ", cost=" + cost + ", lost=" + lost);
                    } catch (JSONException e) {
                        LogUtil.i(DownloadProxy.TAG, "DownloadProxy [init] ping JSONException=" + e);
                    }
                }
                LogUtil.i(DownloadProxy.TAG, "DownloadProxy [init] 下载前期，发送日志");
                ReportProxy.getInstance().setNeedDeleteFile(false);
                ReportProxy.getInstance().reportInfo(DownloadProxy.mContext, 1);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        DownloadListenerCore.getInstances().init(this.mListener);
        DownloadListenerCore.getInstances().clear();
        ReportProxy.getInstance().init(mContext);
        ReportProxy.getInstance().setNeedDeleteFile(false);
        HttpdnsProxy.getInstances().clean();
        CdnIpController.getInstances().clean();
        CheckTime.clean();
        Lvsip.getInstance().clean();
        ConfigProxy.getInstances().clean();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<DownloadParams> parseParam(JSONObject paramsJson) {
        String type;
        ArrayList<DownloadParams> result = new ArrayList<>();
        if (paramsJson == null) {
            LogUtil.w(TAG, "DownloadProxy [parseParam] paramsJson is null");
        } else {
            LogUtil.w(TAG, "DownloadProxy [parseParam] paramsJson =" + paramsJson.toString());
            try {
                type = paramsJson.optString("type");
            } catch (NumberFormatException e) {
                LogUtil.w(TAG, "DownloadProxy [parseParam] NumberFormatException = " + e);
                type = "error";
            }
            DownloadInitInfo.getInstances().setmType(type);
            String downloadId = paramsJson.optString("downloadid");
            DownloadInitInfo.getInstances().setmDownloadId(downloadId);
            LogUtil.i(TAG, "downloadid =" + downloadId);
            if (!TextUtils.isEmpty(downloadId) && type.equals(Const.TYPE_TARGET_PATCH)) {
                ProgressProxy.getInstances().init(mContext);
                String params = ProgressProxy.getInstances().getParentTask(downloadId, paramsJson.toString());
                if (!TextUtils.isEmpty(params)) {
                    try {
                        paramsJson = new JSONObject(params);
                    } catch (JSONException e2) {
                        LogUtil.w(TAG, "DownloadProxy [parseParam] JSONException = " + e2);
                        LogUtil.w(TAG, "持久化数据中获取父任务失败，选用传入参数中的任务参数进行此次下载");
                        e2.printStackTrace();
                    }
                }
            }
            LogUtil.i(TAG, "从持久化中获取数据，转为json=" + paramsJson.toString());
            String projectId = paramsJson.optString("projectid");
            DownloadInitInfo.getInstances().setProjectId(projectId);
            boolean wifiOnly = "true".equals(paramsJson.optString("wifionly"));
            LogUtil.i(TAG, "从持久化中获取数据，转为json11=" + paramsJson.optString("wifionly"));
            LogUtil.i(TAG, "从持久化中获取数据，转为json22=" + wifiOnly);
            DownloadInitInfo.getInstances().setmWifiOnly(wifiOnly);
            boolean logOpen = "true".equals(paramsJson.optString("logopen"));
            DownloadInitInfo.getInstances().setmLogOpen(logOpen);
            LogUtil.setIsShowLog(logOpen);
            String oversea = paramsJson.optString("oversea");
            DownloadInitInfo.getInstances().setOverSea(oversea);
            int threadnum = 3;
            try {
                threadnum = Integer.parseInt(paramsJson.optString("threadnum"));
            } catch (Exception e3) {
                LogUtil.w(TAG, "DownloadProxy [parseParam] get threadnum Exception=" + e3);
            }
            DownloadInitInfo.getInstances().setmThreadnum(threadnum);
            String testLog = paramsJson.optString("testlog");
            DownloadInitInfo.getInstances().setmLogTest(testLog);
            long allSize = 0;
            JSONArray array = paramsJson.optJSONArray("downfile");
            if (array != null) {
                for (int i = 0; i < array.length(); i++) {
                    DownloadParams params2 = new DownloadParams();
                    params2.setIsParted(false);
                    params2.setIsUiCallback(true);
                    JSONObject downfile = array.optJSONObject(i);
                    if (downfile != null) {
                        params2.setTargetUrl(downfile.optString("targeturl"));
                        params2.setmChannel(StrUtil.getCdnChannel(params2.getTargetUrl()));
                        params2.setFilePath(downfile.optString("filepath"));
                        params2.setUrlSuffix(StrUtil.getSuffixFromUrl(downfile.optString("targeturl")));
                        params2.setOriginPrefix(StrUtil.getPrefixFromUrl(downfile.optString("targeturl")));
                        params2.setUrlPrefix(StrUtil.getPrefixFromUrl(downfile.optString("targeturl")));
                        long size = 0;
                        if (downfile.has("first") && downfile.has("last")) {
                            LogUtil.i(TAG, "DownloadProxy [parseParam] 参数选择first last方式，忽略size字段");
                            try {
                                params2.setSegmentStart(Integer.parseInt(downfile.optString("first")));
                                params2.setSegmentEnd(Integer.parseInt(downfile.optString("last")));
                                if (params2.getSegmentEnd() > params2.getSegmentStart()) {
                                    size = params2.getSegmentEnd() - params2.getSegmentStart();
                                }
                            } catch (Exception e4) {
                                LogUtil.i(TAG, "DownloadProxy [parseParam] first & last Exception=" + e4);
                            }
                        } else {
                            LogUtil.i(TAG, "参数选择size方式，忽略first last字段");
                            try {
                                size = Integer.parseInt(downfile.optString(Const.KEY_SIZE));
                            } catch (NumberFormatException e5) {
                                LogUtil.i(TAG, "DownloadProxy [parseParam] size NumberFormatException=" + e5);
                            }
                        }
                        allSize += size;
                        params2.setMd5(downfile.optString(Const.KEY_MD5));
                    }
                    params2.setFileId(new StringBuilder(String.valueOf(params2.hashCode())).toString());
                    LogUtil.i(TAG, "params=" + params2.toString());
                    result.add(params2);
                }
            }
            LogUtil.i(TAG, "list=" + result.toString());
            LogUtil.i(TAG, "allSize=" + allSize);
            DownloadInitInfo.getInstances().setAllSize(allSize);
            ReportInfo.getInstance().mTotalSize = allSize;
            LogUtil.i(TAG, "所有文件总大小=" + allSize);
            long downloadedSize = ProgressProxy.getInstances().getDownloadedSize(result);
            LogUtil.i(TAG, "已经下载好的总大小为=" + downloadedSize);
            ReportInfo.getInstance().mDlSize.put(KeyConst.KEY_OVERALL, Long.valueOf(downloadedSize));
            String mConfigurl = null;
            if (paramsJson.has("configurl")) {
                mConfigurl = paramsJson.optString("configurl");
            }
            DownloadInitInfo.getInstances().setmConfigurl(mConfigurl);
        }
        return result;
    }

    private void sendFinish(DownloadListener pListener) {
        JSONObject data = new JSONObject();
        if (this.mParamsList != null && this.mParamsList.size() > 0) {
            DownloadParams mParams = this.mParamsList.get(0);
            try {
                data.put(Const.KEY_SIZE, mParams.getSize());
                data.put("filename", mParams.getUrlSuffix());
                data.put("code", 13);
                data.put("filepath", mParams.getFilePath());
                data.put(Const.KEY_MD5, mParams.getMd5());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            LogUtil.i(TAG, "onFinish data2=" + data);
        }
        if (pListener != null) {
            pListener.onFinish(data);
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
