package im.yixin.sdk.util;

import android.util.Log;
import com.alipay.sdk.cons.b;
import com.alipay.sdk.data.a;
import com.netease.ntsharesdk.ShareArgs;
import com.sina.weibo.sdk.constant.WBConstants;
import im.yixin.sdk.api.YXFileMessageData;
import im.yixin.sdk.api.YXImageMessageData;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.api.YXMusicMessageData;
import im.yixin.sdk.api.YXTextMessageData;
import im.yixin.sdk.api.YXVideoMessageData;
import im.yixin.sdk.api.YXWebPageMessageData;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

/* loaded from: classes.dex */
public final class SDKHttpUtils {
    public static final String CONTENT_TYPE_URLENCODED = "application/x-www-form-urlencoded";
    private static final String DEFAULT_AGENT = "yixin_sdk_httputils/1.0";
    private static final String ERROR_LOG_URL = "http://open.yixin.im/sdk/log?log=";
    private static final String TAG = "SDKHttpUtils";
    private static SDKHttpUtils instance;
    private DefaultHttpClient client;

    private SDKHttpUtils() {
        HttpParams params = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(params, a.d);
        HttpConnectionParams.setSoTimeout(params, 200000);
        HttpConnectionParams.setSocketBufferSize(params, 8192);
        HttpProtocolParams.setUseExpectContinue(params, true);
        ConnManagerParams.setTimeout(params, 20000L);
        SchemeRegistry schReg = new SchemeRegistry();
        schReg.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schReg.register(new Scheme(b.a, SSLSocketFactory.getSocketFactory(), 443));
        ClientConnectionManager conMgr = new ThreadSafeClientConnManager(params, schReg);
        this.client = new DefaultHttpClient(conMgr, params);
    }

    public static SDKHttpUtils getInstance() {
        SDKHttpUtils sDKHttpUtils;
        if (instance != null) {
            return instance;
        }
        synchronized (SDKHttpUtils.class) {
            if (instance == null) {
                instance = new SDKHttpUtils();
            }
            sDKHttpUtils = instance;
        }
        return sDKHttpUtils;
    }

    public String getOperationTypeByClass(Class typeClass) {
        if (typeClass == YXFileMessageData.class) {
            return "file";
        }
        if (typeClass == YXTextMessageData.class) {
            return ShareArgs.TEXT;
        }
        if (typeClass == YXImageMessageData.class) {
            return WBConstants.GAME_PARAMS_GAME_IMAGE_URL;
        }
        if (typeClass == YXMusicMessageData.class) {
            return "music";
        }
        if (typeClass == YXVideoMessageData.class) {
            return "video";
        }
        if (typeClass == YXWebPageMessageData.class) {
            return "webpage";
        }
        if (typeClass == YXMessage.class) {
            return "message";
        }
        return "other className=" + (typeClass != null ? typeClass.getName() : "NULL");
    }

    public String get4ErrorLog(Class cls, String errorLog) {
        return get4ErrorLog(cls, cls, errorLog);
    }

    public String get4ErrorLog(Class sourceClass, Class typeClass, String errorLog) {
        return "";
    }

    public String get(String url, Map<String, String> values) throws Exception {
        try {
            return EntityUtils.toString(getEntity(url, values));
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKHttpUtils.class, "SDKHttpUtils get data error", e);
            throw e;
        }
    }

    public String getByParams(String url, Map<String, String> params) throws Exception {
        try {
            URI uri = URI.create(url);
            String query = uri.getQuery() != null ? String.valueOf(uri.getQuery()) + com.alipay.sdk.sys.a.b : "";
            if (params != null && !params.isEmpty()) {
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    query = String.valueOf(query) + entry.getKey() + "=" + entry.getValue() + com.alipay.sdk.sys.a.b;
                }
            }
            HttpGet get = new HttpGet(new URI(uri.getScheme(), uri.getUserInfo(), uri.getHost(), uri.getPort(), uri.getPath(), query, uri.getFragment()));
            return EntityUtils.toString(fetchHttpEntity(get));
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKHttpUtils.class, "SDKHttpUtils get data error", e);
            throw e;
        }
    }

    private HttpEntity getEntity(String url, Map<String, String> values) throws Exception {
        HttpGet get = new HttpGet(url);
        get.setHeader(HttpHeaders.Names.USER_AGENT, DEFAULT_AGENT);
        if (values != null) {
            for (Map.Entry<String, String> stringStringEntry : values.entrySet()) {
                get.setHeader(stringStringEntry.getKey(), stringStringEntry.getValue());
            }
        }
        return fetchHttpEntity(get);
    }

    private HttpEntity fetchHttpEntity(HttpUriRequest request) throws Exception {
        try {
            HttpResponse response = this.client.execute(request);
            StatusLine statusLine = response.getStatusLine();
            if (statusLine == null) {
                Log.e(TAG, "StatusLine is null");
                throw new HttpCodeException(statusLine, response.getEntity());
            }
            int statusCode = statusLine.getStatusCode();
            if (statusCode < 200 || statusCode > 300) {
                throw new HttpCodeException(statusLine, response.getEntity());
            }
            return response.getEntity();
        } catch (Exception e) {
            throw e;
        }
    }

    public String post(String url, String contentType, HttpEntity entity) throws Exception {
        HttpPost post = new HttpPost(url);
        post.setHeader(HttpHeaders.Names.USER_AGENT, DEFAULT_AGENT);
        if (StringUtil.isNotBlank(contentType)) {
            post.setHeader(HttpHeaders.Names.CONTENT_TYPE, contentType);
        }
        post.setEntity(entity);
        return EntityUtils.toString(fetchHttpEntity(post));
    }

    /* loaded from: classes.dex */
    public static class HttpCodeException extends Exception {
        private HttpEntity httpEntity;
        private String response;
        private StatusLine statusLine;

        HttpCodeException(StatusLine statusLine, HttpEntity httpEntity) {
            this.statusLine = statusLine;
            this.httpEntity = httpEntity;
            try {
                this.response = EntityUtils.toString(httpEntity);
            } catch (IOException e) {
            }
        }

        public StatusLine getStatusLine() {
            return this.statusLine;
        }

        public HttpEntity getHttpEntity() {
            return this.httpEntity;
        }

        public String getResponse() {
            return this.response;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "HttpCodeException{response='" + this.response + "', statusLine=" + this.statusLine + '}';
        }
    }
}
