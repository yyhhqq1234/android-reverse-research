package com.netease.unisdk.ngvoice;

import android.content.Context;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.netease.unisdk.ngvoice.log.NgLog;
import com.netease.unisdk.ngvoice.utils.FileUtil;
import im.yixin.sdk.http.multipart.FilePart;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.InputStream;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* loaded from: classes.dex */
public class NgVoiceHttpHelper {
    private static final String TAG = "ng_voice HttpHelper";
    private static OkHttpClient mClient;
    private NgVoiceSettings mSettings;

    public NgVoiceHttpHelper() {
        mClient = new OkHttpClient();
    }

    public void setVoiceSettings(NgVoiceSettings settings) {
        this.mSettings = settings;
    }

    public String upload(File voiceFile) {
        String uploadUrl = getUploadUrl(FileUtil.fileMD5(voiceFile.getAbsolutePath()));
        NgLog.i(TAG, "upload url = " + uploadUrl);
        RequestBody requestBody = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("upload", "upload", RequestBody.create(MediaType.parse(FilePart.DEFAULT_CONTENT_TYPE), voiceFile)).build();
        Request request = new Request.Builder().url(uploadUrl).header(HttpHeaders.Names.USER_AGENT, this.mSettings.useragent).post(requestBody).build();
        try {
            Response response = mClient.newCall(request).execute();
            String responseStr = response.body().string();
            if (!TextUtils.isEmpty(responseStr)) {
                NgLog.i(TAG, "upload response = " + responseStr);
                if ('0' == responseStr.charAt(0)) {
                    return responseStr.substring(2);
                }
            }
        } catch (Exception e) {
        }
        return null;
    }

    private String getUploadUrl(String md5) {
        StringBuilder builder = new StringBuilder(this.mSettings.url);
        if (this.mSettings.url.endsWith("/")) {
            builder.append("upload?");
        } else {
            builder.append("/upload?");
        }
        builder.append("md5=").append(md5);
        builder.append("&usernum=").append(this.mSettings.uid);
        builder.append("&host=").append(this.mSettings.host);
        builder.append("&tousers=").append(this.mSettings.tousers);
        builder.append("&keep_type=").append(this.mSettings.keep_type);
        return builder.toString();
    }

    public String getTranslation(String key) {
        String url = getTranslationUrl(key);
        NgLog.i(TAG, "getTranslation url = " + url);
        Request request = new Request.Builder().url(url).header(HttpHeaders.Names.USER_AGENT, this.mSettings.useragent).build();
        try {
            Response response = mClient.newCall(request).execute();
            String responseStr = response.body().string();
            if (!TextUtils.isEmpty(responseStr)) {
                NgLog.i(TAG, "getTranslation response = " + responseStr);
                if ('0' == responseStr.charAt(0)) {
                    return responseStr.substring(2);
                }
            }
        } catch (Exception e) {
        }
        return null;
    }

    private String getTranslationUrl(String key) {
        StringBuilder builder = new StringBuilder(this.mSettings.url);
        if (this.mSettings.url.endsWith("/")) {
            builder.append("get_translation?");
        } else {
            builder.append("/get_translation?");
        }
        builder.append("key=").append(key);
        return builder.toString();
    }

    public InputStream downloadVoiceFile(String key) {
        String url = getDownloadVoiceFileUrl(key);
        NgLog.i(TAG, "download file url = " + url);
        Request request = new Request.Builder().url(url).header(HttpHeaders.Names.USER_AGENT, this.mSettings.useragent).build();
        try {
            Response response = mClient.newCall(request).execute();
            return response.body().byteStream();
        } catch (Exception e) {
            return null;
        }
    }

    private String getDownloadVoiceFileUrl(String key) {
        StringBuilder builder = new StringBuilder(this.mSettings.url);
        if (this.mSettings.url.endsWith("/")) {
            builder.append("getfile?");
        } else {
            builder.append("/getfile?");
        }
        builder.append("key=").append(key);
        builder.append("&usernum=").append(this.mSettings.uid);
        builder.append("&host=").append(this.mSettings.host);
        return builder.toString();
    }

    public static boolean isNetworkAvailable(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        if (cm == null || cm.getActiveNetworkInfo() == null) {
            return false;
        }
        return cm.getActiveNetworkInfo().isAvailable();
    }
}
