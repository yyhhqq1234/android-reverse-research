package com.netease.cloud.nos.android.http;

import android.content.Context;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.core.RequestCallback;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpGetTask implements Runnable {
    private static final String LOGTAG = LogUtil.makeLogTag(HttpGetTask.class);
    protected final RequestCallback callback;
    protected final Context ctx;
    protected volatile HttpGet getRequest;
    protected final Map<String, String> map;
    protected final String url;

    public HttpGetTask(String url, Context ctx, Map<String, String> map, RequestCallback callback) {
        this.url = url;
        this.ctx = ctx;
        this.map = map;
        this.callback = callback;
    }

    @Override // java.lang.Runnable
    public void run() {
        HttpEntity httpEntity = null;
        try {
            try {
                this.getRequest = Util.newGet(this.url);
                if (this.map != null) {
                    this.getRequest = (HttpGet) Util.setHeader(this.getRequest, this.map);
                }
                HttpResponse response = Util.getLbsHttpClient(this.ctx).execute(this.getRequest);
                if (response != null && response.getStatusLine() != null && (httpEntity = response.getEntity()) != null) {
                    int statusCode = response.getStatusLine().getStatusCode();
                    String result = EntityUtils.toString(httpEntity);
                    JSONObject msg = new JSONObject(result);
                    if (statusCode == 200) {
                        LogUtil.d(LOGTAG, "http get response is correct, response: " + result);
                    } else {
                        LogUtil.d(LOGTAG, "http get response is failed.");
                    }
                    this.callback.onResult(new HttpResult(statusCode, msg, null));
                } else {
                    this.callback.onResult(new HttpResult(Code.HTTP_NO_RESPONSE, new JSONObject(), null));
                }
                if (httpEntity != null) {
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException e) {
                        LogUtil.e(LOGTAG, "Consume Content exception", e);
                    }
                }
                this.getRequest = null;
            } catch (Exception e2) {
                LogUtil.e(LOGTAG, "http get task exception", e2);
                this.callback.onResult(new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), e2));
                if (0 != 0) {
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException e3) {
                        LogUtil.e(LOGTAG, "Consume Content exception", e3);
                    }
                }
                this.getRequest = null;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    httpEntity.consumeContent();
                } catch (IOException e4) {
                    LogUtil.e(LOGTAG, "Consume Content exception", e4);
                }
            }
            this.getRequest = null;
            throw th;
        }
    }
}
