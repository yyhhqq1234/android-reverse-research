package com.sina.weibo.sdk.net;

import android.content.Context;
import android.os.AsyncTask;
import com.sina.weibo.sdk.cmd.WbAppActivator;
import com.sina.weibo.sdk.exception.WeiboException;

/* loaded from: classes.dex */
public class AsyncWeiboRunner {
    private Context mContext;

    public AsyncWeiboRunner(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.sina.weibo.sdk.net.AsyncWeiboRunner$1] */
    @Deprecated
    public void requestByThread(final String url, final WeiboParameters params, final String httpMethod, final RequestListener listener) {
        new Thread() { // from class: com.sina.weibo.sdk.net.AsyncWeiboRunner.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    String resp = HttpManager.openUrl(AsyncWeiboRunner.this.mContext, url, httpMethod, params);
                    if (listener != null) {
                        listener.onComplete(resp);
                    }
                } catch (WeiboException e) {
                    if (listener != null) {
                        listener.onWeiboException(e);
                    }
                }
            }
        }.start();
    }

    public String request(String url, WeiboParameters params, String httpMethod) throws WeiboException {
        WbAppActivator.getInstance(this.mContext, params.getAppKey()).activateApp();
        return HttpManager.openUrl(this.mContext, url, httpMethod, params);
    }

    public void requestAsync(String url, WeiboParameters params, String httpMethod, RequestListener listener) {
        WbAppActivator.getInstance(this.mContext, params.getAppKey()).activateApp();
        new RequestRunner(this.mContext, url, params, httpMethod, listener).execute(new Void[1]);
    }

    /* loaded from: classes.dex */
    static class RequestRunner extends AsyncTask<Void, Void, AsyncTaskResult<String>> {
        private final Context mContext;
        private final String mHttpMethod;
        private final RequestListener mListener;
        private final WeiboParameters mParams;
        private final String mUrl;

        public RequestRunner(Context context, String url, WeiboParameters params, String httpMethod, RequestListener listener) {
            this.mContext = context;
            this.mUrl = url;
            this.mParams = params;
            this.mHttpMethod = httpMethod;
            this.mListener = listener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public AsyncTaskResult<String> doInBackground(Void... params) {
            try {
                String result = HttpManager.openUrl(this.mContext, this.mUrl, this.mHttpMethod, this.mParams);
                return new AsyncTaskResult<>(result);
            } catch (WeiboException e) {
                return new AsyncTaskResult<>(e);
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(AsyncTaskResult<String> result) {
            WeiboException exception = result.getError();
            if (exception != null) {
                this.mListener.onWeiboException(exception);
            } else {
                this.mListener.onComplete(result.getResult());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AsyncTaskResult<T> {
        private WeiboException error;
        private T result;

        public T getResult() {
            return this.result;
        }

        public WeiboException getError() {
            return this.error;
        }

        public AsyncTaskResult(T result) {
            this.result = result;
        }

        public AsyncTaskResult(WeiboException error) {
            this.error = error;
        }
    }
}
