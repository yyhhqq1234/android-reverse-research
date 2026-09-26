package com.netease.cloud.nos.android.monitor;

import android.content.Context;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.util.EntityUtils;

/* loaded from: classes.dex */
public class MonitorHttp {
    private static final String LOGTAG = LogUtil.makeLogTag(MonitorHttp.class);

    public static void post(Context ctx, String url) {
        HttpPost postMethod = Util.newPost(Util.getMonitorUrl(url));
        postMethod.addHeader(HttpHeaders.Names.CONTENT_ENCODING, HttpHeaders.Values.GZIP);
        List<StatisticItem> list = Monitor.get();
        ByteArrayOutputStream bos = Monitor.getPostData(list);
        if (bos == null) {
            LogUtil.d(LOGTAG, "post data is null");
            return;
        }
        postMethod.setEntity(new ByteArrayEntity(bos.toByteArray()));
        try {
            try {
                try {
                    HttpResponse response = Util.getHttpClient(ctx).execute(postMethod);
                    if (response != null && response.getStatusLine() != null && response.getEntity() != null) {
                        int statusCode = response.getStatusLine().getStatusCode();
                        String result = EntityUtils.toString(response.getEntity());
                        if (statusCode == 200) {
                            LogUtil.d(LOGTAG, "http post response is correct, response: " + result);
                        } else {
                            LogUtil.d(LOGTAG, "http post response is failed, status code: " + statusCode);
                            if (response.getEntity() != null) {
                                LogUtil.d(LOGTAG, "http post response is failed, result: " + result);
                            }
                        }
                    }
                    if (list != null) {
                        list.clear();
                    }
                    if (bos != null) {
                        try {
                            bos.close();
                        } catch (IOException e) {
                            LogUtil.e(LOGTAG, "bos close exception", e);
                        }
                    }
                } catch (Throwable th) {
                    if (list != null) {
                        list.clear();
                    }
                    if (bos != null) {
                        try {
                            bos.close();
                        } catch (IOException e2) {
                            LogUtil.e(LOGTAG, "bos close exception", e2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                LogUtil.e(LOGTAG, "post monitor data failed with io exception", e3);
                if (list != null) {
                    list.clear();
                }
                if (bos != null) {
                    try {
                        bos.close();
                    } catch (IOException e4) {
                        LogUtil.e(LOGTAG, "bos close exception", e4);
                    }
                }
            }
        } catch (ClientProtocolException e5) {
            LogUtil.e(LOGTAG, "post monitor data failed with client protocol exception", e5);
            if (list != null) {
                list.clear();
            }
            if (bos != null) {
                try {
                    bos.close();
                } catch (IOException e6) {
                    LogUtil.e(LOGTAG, "bos close exception", e6);
                }
            }
        }
    }
}
