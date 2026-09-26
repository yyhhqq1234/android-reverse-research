package com.netease.cloud.nos.android.core;

import android.content.Context;
import com.alipay.sdk.util.i;
import com.netease.cloud.nos.android.constants.Constants;
import com.netease.cloud.nos.android.http.HttpGetTask;
import com.netease.cloud.nos.android.http.HttpResult;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IOManager {
    private static final String LOGTAG = LogUtil.makeLogTag(IOManager.class);

    public static HttpResult getLBSAddress(Context ctx, String bucketName, boolean useLBSKey) {
        String urls = String.valueOf(WanAccelerator.getConf().getLbsHost()) + i.b + WanAccelerator.getConf().getLbsIP();
        HttpResult result = null;
        String lbsIP = Util.getData(ctx, String.valueOf(bucketName) + Constants.LBS_KEY);
        if (useLBSKey && lbsIP != null) {
            urls = String.valueOf(lbsIP) + i.b + urls;
        }
        LogUtil.d(LOGTAG, "get lbs address with multiple urls: " + urls);
        String[] urlArray = urls.split(i.b);
        for (String url : urlArray) {
            LogUtil.d(LOGTAG, "get lbs address with url: " + url);
            result = executeQueryTask(Util.buildLBSUrl(url, bucketName), ctx, null);
            if (result.getStatusCode() == 200) {
                JSONObject msg = result.getMsg();
                LogUtil.d(LOGTAG, "LBS address result: " + msg.toString());
                result = Util.setLBSData(ctx, bucketName, msg);
                if (result.getStatusCode() == 200) {
                    return result;
                }
            }
            LogUtil.w(LOGTAG, "failed to query LBS url " + url + " result: " + result.getStatusCode() + " msg: " + result.getMsg().toString());
        }
        if (result == null) {
            result = new HttpResult(400, new JSONObject(), null);
        }
        return result;
    }

    private static HttpResult executeQueryTask(String url, Context ctx, Map<String, String> map) {
        final HttpResult[] result = new HttpResult[1];
        final CountDownLatch latch = Util.acquireLock();
        HttpGetTask task = new HttpGetTask(url, ctx, map, new RequestCallback() { // from class: com.netease.cloud.nos.android.core.IOManager.1
            @Override // com.netease.cloud.nos.android.core.RequestCallback
            public void onResult(HttpResult rs) {
                if (rs.getStatusCode() == 200) {
                    LogUtil.d(IOManager.LOGTAG, "http query success");
                } else {
                    LogUtil.w(IOManager.LOGTAG, "http query failed status code: " + rs.getStatusCode());
                }
                result[0] = rs;
                Util.releaseLock(latch);
            }
        });
        ExecutorService executor = Util.getExecutorService();
        executor.execute(task);
        Util.setLock(latch);
        return result[0];
    }
}
