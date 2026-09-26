package com.netease.cloud.nos.android.http;

import android.content.Context;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.constants.Constants;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import java.io.IOException;
import java.util.concurrent.Callable;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpPostTask implements Callable<HttpResult> {
    private static final String LOGTAG = LogUtil.makeLogTag(HttpPostTask.class);
    protected final byte[] chunkData;
    protected final Context ctx;
    protected volatile HttpPost postRequest;
    protected final String token;
    protected final String url;

    public HttpPostTask(String url, String token, Context ctx, byte[] chunkData) {
        this.url = url;
        this.token = token;
        this.ctx = ctx;
        this.chunkData = chunkData;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public HttpResult call() throws Exception {
        HttpResult rs;
        HttpResult rs2;
        LogUtil.d(LOGTAG, "http post task is executing");
        try {
            this.postRequest = Util.newPost(this.url);
            this.postRequest.addHeader(Constants.HEADER_TOKEN, this.token);
            this.postRequest.setEntity(buildHttpEntity(this.chunkData));
            HttpResponse response = Util.getHttpClient(this.ctx).execute(this.postRequest);
            if (response != null && response.getStatusLine() != null && response.getEntity() != null) {
                int statusCode = response.getStatusLine().getStatusCode();
                String result = EntityUtils.toString(response.getEntity());
                if (statusCode == 200) {
                    LogUtil.d(LOGTAG, "http post response is correct, response: " + result);
                    rs = null;
                } else {
                    rs = new HttpResult(statusCode, null, null);
                    try {
                        try {
                            LogUtil.d(LOGTAG, "http post response is failed, status code: " + statusCode);
                            if (response.getEntity() != null) {
                                LogUtil.d(LOGTAG, "http post response is failed, result: " + result);
                            }
                        } catch (Exception e) {
                            e = e;
                            LogUtil.e(LOGTAG, "http post exception", e);
                            rs2 = new HttpResult(Code.HTTP_EXCEPTION, null, e);
                            this.postRequest = null;
                            return rs2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        this.postRequest = null;
                        throw th;
                    }
                }
                rs2 = new HttpResult(statusCode, new JSONObject(result), null);
            } else {
                HttpResult rs3 = new HttpResult(Code.HTTP_NO_RESPONSE, null, null);
                rs2 = rs3;
            }
            this.postRequest = null;
        } catch (Exception e2) {
            e = e2;
            rs = null;
        } catch (Throwable th2) {
            th = th2;
            this.postRequest = null;
            throw th;
        }
        return rs2;
    }

    private HttpEntity buildHttpEntity(byte[] isa) throws IOException {
        ByteArrayEntity en = new ByteArrayEntity(isa);
        return en;
    }
}
