package com.netease.unisdk.gmbridge.voice;

import android.content.Context;
import com.netease.cloud.nos.android.core.CallRet;
import com.netease.cloud.nos.android.core.Callback;
import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.core.WanNOSObject;
import com.netease.cloud.nos.android.exception.InvalidParameterException;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.task.TaskExecutor;
import com.netease.unisdk.gmbridge.utils.FileUtil;
import java.io.File;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VoiceUploader {
    public static final String NOS_TOKEN_URL = "http://gmsdk.gameyw.netease.com/nos/gen_token";
    private static final String TAG = "gm_bridge VoiceUploader";

    public static void upload(final Context context, final String voiceFilePath, final IVoiceUploadListener listener) {
        TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.gmbridge.voice.VoiceUploader.1
            @Override // java.lang.Runnable
            public void run() {
                Request request = new Request.Builder().url(VoiceUploader.NOS_TOKEN_URL).build();
                try {
                    OkHttpClient client = new OkHttpClient();
                    Response response = client.newCall(request).execute();
                    JSONObject jsonObject = new JSONObject(response.body().string());
                    final String token = jsonObject.optString("token");
                    final String objectName = jsonObject.optString("objectName");
                    final String bucketName = jsonObject.optString("bucketName");
                    String contentType = FileUtil.getMimeType(voiceFilePath);
                    NgLog.i(VoiceUploader.TAG, "[token=%s,objectName=%s,bucketName=%s,contentType=%s]", token, objectName, bucketName, contentType);
                    WanNOSObject wanNOSObject = new WanNOSObject();
                    wanNOSObject.setNosBucketName(bucketName);
                    wanNOSObject.setNosObjectName(objectName);
                    wanNOSObject.setContentType(contentType);
                    wanNOSObject.setUploadToken(token);
                    try {
                        WanAccelerator.putFileByHttp(context, new File(voiceFilePath), voiceFilePath, voiceFilePath, wanNOSObject, new Callback() { // from class: com.netease.unisdk.gmbridge.voice.VoiceUploader.1.1
                            @Override // com.netease.cloud.nos.android.core.Callback
                            public void onUploadContextCreate(Object o, String s, String s1) {
                            }

                            @Override // com.netease.cloud.nos.android.core.Callback
                            public void onProcess(Object o, long l, long l1) {
                            }

                            @Override // com.netease.cloud.nos.android.core.Callback
                            public void onSuccess(CallRet callRet) {
                                NgLog.i(VoiceUploader.TAG, "nos onSuccess");
                                VoiceUploader.callbackOnUIThread(IVoiceUploadListener.this, true, token, objectName, bucketName);
                            }

                            @Override // com.netease.cloud.nos.android.core.Callback
                            public void onFailure(CallRet callRet) {
                                NgLog.i(VoiceUploader.TAG, "nos onFailure :" + callRet.getException());
                                VoiceUploader.callbackOnUIThread(IVoiceUploadListener.this, false, null, null, null);
                            }

                            @Override // com.netease.cloud.nos.android.core.Callback
                            public void onCanceled(CallRet callRet) {
                                VoiceUploader.callbackOnUIThread(IVoiceUploadListener.this, false, null, null, null);
                            }
                        });
                    } catch (InvalidParameterException e) {
                        e.printStackTrace();
                        VoiceUploader.callbackOnUIThread(IVoiceUploadListener.this, false, null, null, null);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    VoiceUploader.callbackOnUIThread(IVoiceUploadListener.this, false, null, null, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void callbackOnUIThread(final IVoiceUploadListener listener, final boolean success, final String token, final String objectName, final String bucketName) {
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.voice.VoiceUploader.2
            @Override // java.lang.Runnable
            public void run() {
                IVoiceUploadListener.this.onFinish(success, token, objectName, bucketName);
            }
        });
    }
}
