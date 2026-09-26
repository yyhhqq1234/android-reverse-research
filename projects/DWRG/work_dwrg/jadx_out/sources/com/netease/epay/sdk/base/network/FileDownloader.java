package com.netease.epay.sdk.base.network;

import android.os.Looper;
import com.netease.epay.sdk.base.util.FileUtil;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.base.util.UIDispatcher;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class FileDownloader {
    private static OkHttpClient client;

    /* loaded from: classes.dex */
    public interface DownloadListener {
        void onFailed(String str);

        void onSuccess(File file);
    }

    public FileDownloader() {
        if (client == null) {
            synchronized (FileDownloader.class) {
                if (client == null) {
                    client = new OkHttpClient.Builder().retryOnConnectionFailure(true).connectTimeout(15L, TimeUnit.SECONDS).build();
                }
            }
        }
    }

    public void start(String fileUrl, File save, DownloadListener downloadListener) {
        start(fileUrl, save, downloadListener, Looper.getMainLooper());
    }

    public void start(final String fileUrl, final File save, final DownloadListener downloadListener, final Looper callBackLooper) {
        client.newCall(new Request.Builder().url(fileUrl).build()).enqueue(new Callback() { // from class: com.netease.epay.sdk.base.network.FileDownloader.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, final IOException e) {
                LogUtil.e("FileDownloader IOException " + fileUrl, e);
                if (downloadListener != null) {
                    UIDispatcher.runOnLooperThread(new Runnable() { // from class: com.netease.epay.sdk.base.network.FileDownloader.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            downloadListener.onFailed(e.getMessage());
                        }
                    }, callBackLooper);
                }
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                FileOutputStream fileOutputStream;
                InputStream inputStream = null;
                byte[] bArr = new byte[2048];
                try {
                    LogUtil.d("lic file size:" + response.body().contentLength());
                    InputStream byteStream = response.body().byteStream();
                    try {
                        fileOutputStream = new FileOutputStream(save);
                        while (true) {
                            try {
                                int read = byteStream.read(bArr);
                                if (read == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, read);
                                }
                            } catch (IOException e) {
                                e = e;
                                inputStream = byteStream;
                                try {
                                    LogUtil.e("FileDownloader IOException " + fileUrl, e);
                                    if (downloadListener != null) {
                                        UIDispatcher.runOnLooperThread(new Runnable() { // from class: com.netease.epay.sdk.base.network.FileDownloader.1.3
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                downloadListener.onFailed(e.getMessage());
                                            }
                                        }, callBackLooper);
                                    }
                                    FileUtil.closeStream(fileOutputStream);
                                    FileUtil.closeStream(inputStream);
                                    return;
                                } catch (Throwable th) {
                                    th = th;
                                    FileUtil.closeStream(fileOutputStream);
                                    FileUtil.closeStream(inputStream);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream = byteStream;
                                FileUtil.closeStream(fileOutputStream);
                                FileUtil.closeStream(inputStream);
                                throw th;
                            }
                        }
                        fileOutputStream.flush();
                        if (downloadListener != null) {
                            UIDispatcher.runOnLooperThread(new Runnable() { // from class: com.netease.epay.sdk.base.network.FileDownloader.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    downloadListener.onSuccess(save);
                                }
                            }, callBackLooper);
                        }
                        FileUtil.closeStream(fileOutputStream);
                        FileUtil.closeStream(byteStream);
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = null;
                        inputStream = byteStream;
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                        inputStream = byteStream;
                    }
                } catch (IOException e3) {
                    e = e3;
                    fileOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            }
        });
    }
}
