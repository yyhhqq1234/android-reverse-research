package com.netease.epay.sdk.base.network;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.netease.epay.sdk.base.BuildConfig;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.UIDispatcher;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpClient {
    private static Gson gson;
    private static IParseCallback parseCallback;

    public static boolean isCallbackNull() {
        return parseCallback == null;
    }

    public static void setParseCallback(IParseCallback callback) {
        if (callback != null) {
            parseCallback = callback;
        }
    }

    public static <T> void startRequest(@NonNull String url, @NonNull JSONObject obj, boolean isHome, FragmentActivity activity, @NonNull INetCallback<T> callback, boolean needLoadingDialog) {
        if (needLoadingDialog) {
            LoadingHandler.getInstance().showLoading(activity);
        }
        realStartRequest(new EpayNetRequest(url, isHome, obj, null), activity, callback);
    }

    public static <T> void startRequest(@NonNull String url, @NonNull JSONObject obj, boolean isHome, FragmentActivity activity, @NonNull INetCallback<T> callback) {
        LoadingHandler.getInstance().showLoading(activity);
        realStartRequest(new EpayNetRequest(url, isHome, obj, null), activity, callback);
    }

    public static <T> void startRequest(@NonNull String url, @NonNull IParamsCallback paramsCallback, boolean isHome, FragmentActivity activity, @NonNull INetCallback<T> callback) {
        if (paramsCallback != null) {
            LoadingHandler.getInstance().showLoading(activity);
            realStartRequest(new EpayNetRequest(url, isHome, null, paramsCallback), activity, callback);
        }
    }

    private static <T> void realStartRequest(final EpayNetRequest netRequest, final FragmentActivity activity, @NonNull final INetCallback<T> callback) {
        try {
            Request.Builder builder = new Request.Builder();
            builder.url(SdkConfig.getUrl() + netRequest.url).tag(netRequest);
            InstanceHolder.access$200().newCall(builder.build()).enqueue(new Callback() { // from class: com.netease.epay.sdk.base.network.HttpClient.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, final IOException e) {
                    if (!HttpClient.check(FragmentActivity.this, callback)) {
                        UIDispatcher.runOnUiThread(new Runnable() { // from class: com.netease.epay.sdk.base.network.HttpClient.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                callback.onResponseArrived();
                                HttpClient.parseCallback.parseFailure(FragmentActivity.this, netRequest.isHome, new NewBaseResponse(ErrorCode.FAIL_NETWORK_ERROR, e.getMessage()), netRequest.url, null, callback);
                            }
                        });
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    final NewBaseResponse newBaseResponse;
                    if (!HttpClient.check(FragmentActivity.this, callback)) {
                        if (response.isSuccessful()) {
                            newBaseResponse = HttpClient.gsonConvert(response, callback);
                        } else {
                            newBaseResponse = new NewBaseResponse(ErrorCode.FAIL_NETWORK_ERROR, response.message());
                        }
                        final JSONObject jSONObject = ((EpayNetRequest) response.request().tag()).reqParams;
                        UIDispatcher.runOnUiThread(new Runnable() { // from class: com.netease.epay.sdk.base.network.HttpClient.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (callback != null) {
                                    callback.onResponseArrived();
                                }
                                if (HttpClient.parseCallback != null) {
                                    HttpClient.parseCallback.parse(FragmentActivity.this, netRequest.isHome, newBaseResponse, netRequest.url, jSONObject, callback);
                                }
                            }
                        });
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LoadingHandler.getInstance().dismissLoading(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> boolean check(FragmentActivity activity, @NonNull INetCallback<T> callback) {
        LoadingHandler.getInstance().dismissLoading(activity);
        return callback == null;
    }

    @Keep
    public static <T> NewBaseResponse gsonConvert(Response response, @NonNull INetCallback<T> iNetCallback) {
        String convert = Base64DataConverter.convert(response);
        try {
            if (gson == null) {
                gson = new Gson();
            }
            NewBaseResponse newBaseResponse = (NewBaseResponse) gson.getAdapter(NewBaseResponse.class).fromJson(convert);
            Type genericSuperclass = iNetCallback.getClass().getGenericSuperclass();
            if (!(genericSuperclass instanceof ParameterizedType) && iNetCallback.getClass().getGenericInterfaces().length >= 1) {
                genericSuperclass = iNetCallback.getClass().getGenericInterfaces()[0];
            }
            if ((genericSuperclass instanceof ParameterizedType) && ((ParameterizedType) genericSuperclass).getActualTypeArguments().length >= 1) {
                newBaseResponse.result = gson.getAdapter(TypeToken.get(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0])).fromJson(convert);
                return newBaseResponse;
            }
            return newBaseResponse;
        } catch (Exception e) {
            e.printStackTrace();
            return new NewBaseResponse(ErrorCode.FAIL_NETWORK_ERROR, ErrorCode.FAIL_SERVER_RESPONSE_STRING);
        }
    }

    public static void cancelAll() {
        InstanceHolder.access$200().dispatcher().cancelAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InstanceHolder {
        private static OkHttpClient client;

        private InstanceHolder() {
        }

        static /* synthetic */ OkHttpClient access$200() {
            return getInstance();
        }

        private static OkHttpClient getInstance() {
            if (client == null) {
                synchronized (HttpClient.class) {
                    if (client == null) {
                        client = new OkHttpClient.Builder().connectTimeout(10L, TimeUnit.SECONDS).writeTimeout(40L, TimeUnit.SECONDS).readTimeout(40L, TimeUnit.SECONDS).addInterceptor(new UrlSuffixInterceptor()).addInterceptor(new CookieInterceptor()).sslSocketFactory(getFactory(), new MyX509TrustManager()).hostnameVerifier(getHostnameVerify()).build();
                    }
                }
            }
            return client;
        }

        private static SSLSocketFactory getFactory() {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, new TrustManager[]{new MyX509TrustManager()}, new SecureRandom());
                return sSLContext.getSocketFactory();
            } catch (KeyManagementException e) {
                e.printStackTrace();
                return null;
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        private static HostnameVerifier getHostnameVerify() {
            return new HostnameVerifier() { // from class: com.netease.epay.sdk.base.network.HttpClient.InstanceHolder.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String hostname, SSLSession session) {
                    return BuildConfig.EX_HOST_RUL.equals(hostname) || BuildConfig.EX_HOST_RUL.equals(hostname);
                }
            };
        }
    }
}
