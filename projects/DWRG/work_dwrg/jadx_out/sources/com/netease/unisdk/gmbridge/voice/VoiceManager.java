package com.netease.unisdk.gmbridge.voice;

import android.content.Context;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.task.TaskExecutor;
import com.netease.unisdk.gmbridge.utils.StorageUtil;
import com.netease.unisdk.gmbridge.view.WebViewDialog;
import com.netease.unisdk.ngvoice.NgVoiceCallback;
import com.netease.unisdk.ngvoice.NgVoiceManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VoiceManager {
    private static final String TAG = "gm_bridge VoiceManager";
    private static VoiceManager sInstance;
    private NgVoiceCallback mCallback = new NgVoiceCallback() { // from class: com.netease.unisdk.gmbridge.voice.VoiceManager.1
        @Override // com.netease.unisdk.ngvoice.NgVoiceCallback
        public void onRecordFinish(boolean success, final String voiceFilePath, final float duration, String errorMsg) {
            NgLog.i(VoiceManager.TAG, "onRecordFinish");
            VoiceManager.this.mRecording = false;
            if (!success) {
                if (VoiceManager.this.mWebViewCallbackListener != null) {
                    String params = VoiceManager.this.getCallbackJsonParams(success, null, null, null, 0.0f);
                    VoiceManager.this.mWebViewCallbackListener.callback(params);
                    return;
                }
                return;
            }
            NgLog.i(VoiceManager.TAG, "voiceFilePath = " + voiceFilePath);
            VoiceUploader.upload(VoiceManager.this.mContext, voiceFilePath, new IVoiceUploadListener() { // from class: com.netease.unisdk.gmbridge.voice.VoiceManager.1.1
                @Override // com.netease.unisdk.gmbridge.voice.IVoiceUploadListener
                public void onFinish(boolean success2, String token, String objectName, String bucketName) {
                    File file = new File(voiceFilePath);
                    String oldName = file.getName();
                    String newName = file.getAbsolutePath().replace(oldName, objectName + ".amr");
                    NgLog.i(VoiceManager.TAG, "newName = " + newName);
                    file.renameTo(new File(newName));
                    String params2 = VoiceManager.this.getCallbackJsonParams(success2, token, objectName, bucketName, duration);
                    VoiceManager.this.mWebViewCallbackListener.callback(params2);
                }
            });
        }

        @Override // com.netease.unisdk.ngvoice.NgVoiceCallback
        public void onUploadFinish(boolean success, String filePath, String key) {
        }

        @Override // com.netease.unisdk.ngvoice.NgVoiceCallback
        public void onTranslateFinish(String key, String translatedText) {
        }

        @Override // com.netease.unisdk.ngvoice.NgVoiceCallback
        public void onDownloadFinish(boolean success, String key, String voiceFilePath) {
        }

        @Override // com.netease.unisdk.ngvoice.NgVoiceCallback
        public void onPlaybackFinish(boolean success) {
            NgLog.i(VoiceManager.TAG, "onPlaybackFinish, success = " + success);
            UnisdkNtGmBridge.sWebViewDialog.jsCallback("", "stop_play_record");
        }

        @Override // com.netease.unisdk.ngvoice.NgVoiceCallback
        public void onRequestPermissions(boolean b) {
        }
    };
    private Context mContext;
    private NgVoiceManager mNgVoiceManager;
    private boolean mRecording;
    private WebViewDialog.IWebViewCallbackListener mWebViewCallbackListener;

    private VoiceManager(Context context) {
        this.mContext = context;
        this.mNgVoiceManager = NgVoiceManager.getInstance(context);
        this.mNgVoiceManager.setCallback(this.mCallback);
    }

    public static VoiceManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (VoiceManager.class) {
                if (sInstance == null) {
                    sInstance = new VoiceManager(context);
                }
            }
        }
        return sInstance;
    }

    public void startRecord(WebViewDialog.IWebViewCallbackListener webViewCallbackListener) {
        if (!this.mRecording) {
            this.mWebViewCallbackListener = webViewCallbackListener;
            this.mNgVoiceManager.ntStartRecord(null);
            this.mRecording = true;
        }
    }

    public void stopRecord() {
        this.mNgVoiceManager.ntStopRecord();
    }

    public void playback(final String url, String name) {
        StringBuilder sb = new StringBuilder();
        if (StorageUtil.isSDCardAvailable()) {
            sb.append(StorageUtil.getExternalFileDir(this.mContext).getAbsolutePath());
        } else {
            sb.append(this.mContext.getFilesDir().getAbsolutePath());
        }
        sb.append(File.separator).append("ng_voice");
        File dir = new File(sb.toString());
        if (!dir.exists()) {
            dir.mkdirs();
        }
        final File file = new File(dir, name + ".amr");
        NgLog.i(TAG, "voicePath = " + file.getAbsolutePath());
        if (file.exists()) {
            startPlay(file.getAbsolutePath());
        } else {
            TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.gmbridge.voice.VoiceManager.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        NgLog.i(VoiceManager.TAG, "download voice");
                        Request request = new Request.Builder().url(url).build();
                        OkHttpClient client = new OkHttpClient();
                        Response response = client.newCall(request).execute();
                        InputStream in = response.body().byteStream();
                        OutputStream out = new FileOutputStream(file);
                        byte[] buf = new byte[1024];
                        while (true) {
                            int len = in.read(buf);
                            if (len > 0) {
                                out.write(buf, 0, len);
                            } else {
                                out.close();
                                in.close();
                                TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.voice.VoiceManager.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        VoiceManager.this.startPlay(file.getAbsolutePath());
                                    }
                                });
                                return;
                            }
                        }
                    } catch (Exception e) {
                        NgLog.e(VoiceManager.TAG, "download voice error : " + e.getMessage());
                        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.voice.VoiceManager.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                UnisdkNtGmBridge.sWebViewDialog.jsCallback("fail", "start_play_record");
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPlay(String path) {
        this.mNgVoiceManager.ntStartPlayback(path);
        UnisdkNtGmBridge.sWebViewDialog.jsCallback("success", "start_play_record");
    }

    public void stopPlayback() {
        this.mNgVoiceManager.ntStopPlayback();
    }

    public void cancelRecord() {
        this.mNgVoiceManager.ntCancelRecord();
        this.mRecording = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCallbackJsonParams(boolean success, String token, String objectName, String bucketName, float duration) {
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("success", success ? "1" : "0");
            if (token == null) {
                token = "";
            }
            jsonObject.put("token", token);
            if (objectName == null) {
                objectName = "";
            }
            jsonObject.put("objectName", objectName);
            if (bucketName == null) {
                bucketName = "";
            }
            jsonObject.put("bucketName", bucketName);
            jsonObject.put("duration", (int) duration);
            return jsonObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
