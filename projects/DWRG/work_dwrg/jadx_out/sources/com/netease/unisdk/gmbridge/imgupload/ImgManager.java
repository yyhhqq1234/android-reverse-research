package com.netease.unisdk.gmbridge.imgupload;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.task.TaskExecutor;
import com.netease.unisdk.gmbridge.utils.BitmapUtil;
import com.netease.unisdk.gmbridge.utils.FileUtil;
import im.yixin.sdk.http.multipart.FilePart;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.util.Iterator;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ImgManager {
    private static final String TAG = "gm_bridge ImgManager";

    public static void uploadImg(final Context context, final UploadInfo upInfo, final Object imgUri, final IUploadFinishListener listener) {
        if (imgUri == null) {
            listener.onFinish(null, upInfo.callback);
        } else {
            TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.gmbridge.imgupload.ImgManager.1
                @Override // java.lang.Runnable
                public void run() {
                    String imgFilePath = ImgManager.createSuitableImgFile(context, imgUri, upInfo.size);
                    if (TextUtils.isEmpty(imgFilePath)) {
                        NgLog.e(ImgManager.TAG, "can't ge a suitable img,it's over");
                        ImgManager.callbackInUIThread(listener, null, upInfo.callback);
                    } else {
                        NgLog.i(ImgManager.TAG, "img file path = %s", imgFilePath);
                        ImgManager.upload(imgFilePath, upInfo, listener);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void upload(String imgPath, UploadInfo upInfo, IUploadFinishListener listener) {
        try {
            OkHttpClient client = new OkHttpClient();
            RequestBody requestBody = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart(upInfo.filefield, upInfo.filefield, RequestBody.create(MediaType.parse(FilePart.DEFAULT_CONTENT_TYPE), new File(imgPath))).build();
            Request request = new Request.Builder().url(upInfo.uploadUrl).header(HttpHeaders.Names.COOKIE, getCookie(upInfo.cookies)).post(requestBody).build();
            Response response = client.newCall(request).execute();
            String responseStr = response.body().string();
            if (!TextUtils.isEmpty(responseStr)) {
                NgLog.i(TAG, "upload response = " + responseStr);
                JSONObject jsonObject = new JSONObject(responseStr);
                String imageId = jsonObject.optString("imageId");
                callbackInUIThread(listener, imageId, upInfo.callback);
            } else {
                callbackInUIThread(listener, null, upInfo.callback);
            }
        } catch (Exception e) {
            e.printStackTrace();
            callbackInUIThread(listener, null, upInfo.callback);
        } finally {
            FileUtil.deleteFile(imgPath);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void callbackInUIThread(final IUploadFinishListener listener, final String imageId, final String callback) {
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.imgupload.ImgManager.2
            @Override // java.lang.Runnable
            public void run() {
                IUploadFinishListener.this.onFinish(imageId, callback);
            }
        });
    }

    private static String getCookie(String cookieStr) {
        String cookie = "";
        try {
            JSONObject cookiesJSON = new JSONObject(cookieStr);
            Iterator<String> cookieKey = cookiesJSON.keys();
            StringBuilder sb = new StringBuilder();
            while (cookieKey.hasNext()) {
                String key = cookieKey.next();
                sb.append(String.format("%s=%s;", key, cookiesJSON.getString(key)));
            }
            cookie = sb.toString().substring(0, sb.length() - 2);
            NgLog.i(TAG, "cookie = %s", cookie);
            return cookie;
        } catch (Exception e) {
            e.printStackTrace();
            return cookie;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String createSuitableImgFile(Context context, Object imgUri, int sizeLimit) {
        Bitmap bitmap = BitmapUtil.createBitmap(context, imgUri);
        if (imgUri instanceof String) {
            FileUtil.deleteFile((String) imgUri);
        }
        if (bitmap == null) {
            NgLog.e(TAG, "can't create a bitmap");
            return null;
        }
        String imgSavePath = FileUtil.getImgSavePath(context);
        if (TextUtils.isEmpty(imgSavePath)) {
            NgLog.e(TAG, "can't get a save path");
            return null;
        }
        if (!BitmapUtil.saveBitmap(bitmap, new File(imgSavePath), sizeLimit)) {
            NgLog.e(TAG, "can't save bitmap");
            return null;
        }
        return imgSavePath;
    }
}
