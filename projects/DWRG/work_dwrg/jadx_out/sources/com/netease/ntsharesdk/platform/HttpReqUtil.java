package com.netease.ntsharesdk.platform;

import java.io.IOException;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

/* loaded from: classes.dex */
public class HttpReqUtil {
    private static int CONNECTION_TIMEOUT = 5000;
    private static int SO_TIMEOUT = 10000;

    /* loaded from: classes.dex */
    interface WgetDoneCallback {
        void ProcessResult(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void wpost(final String url, final List<NameValuePair> nameValuePairs, final WgetDoneCallback cb) {
        new Thread(new Runnable() { // from class: com.netease.ntsharesdk.platform.HttpReqUtil.1
            @Override // java.lang.Runnable
            public void run() {
                HttpClient httpClient = new DefaultHttpClient();
                HttpParams httpParams = httpClient.getParams();
                HttpConnectionParams.setConnectionTimeout(httpParams, HttpReqUtil.CONNECTION_TIMEOUT);
                HttpConnectionParams.setSoTimeout(httpParams, HttpReqUtil.SO_TIMEOUT);
                HttpResponse response = null;
                HttpPost request = new HttpPost(url);
                try {
                    request.setEntity(new UrlEncodedFormEntity(nameValuePairs, "UTF-8"));
                    response = httpClient.execute(request);
                } catch (ConnectTimeoutException e) {
                    e.printStackTrace();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                String strResp = "";
                if (response != null) {
                    try {
                        strResp = EntityUtils.toString(response.getEntity());
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                if (cb != null) {
                    cb.ProcessResult(strResp);
                }
            }
        }).start();
    }
}
