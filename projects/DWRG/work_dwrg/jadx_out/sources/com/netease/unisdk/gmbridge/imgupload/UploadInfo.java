package com.netease.unisdk.gmbridge.imgupload;

import android.net.Uri;
import com.netease.unisdk.gmbridge.utils.SafeCastUtil;

/* loaded from: classes.dex */
public class UploadInfo {
    private static final int DEFAULT_MAX_SIZE = 2000000;
    private static final String URI_PARAM_CALLBACK = "callback";
    private static final String URI_PARAM_COOKIES = "cookies";
    private static final String URI_PARAM_FILE_FIELD = "filefield";
    private static final String URI_PARAM_SIZE = "size";
    private static final String URI_PARAM_UPLOAD_URL = "upload_url";
    public String callback;
    public String cookies;
    public String filefield;
    public int size;
    public String uploadUrl;

    public String toString() {
        return "UploadInfo{uploadUrl='" + this.uploadUrl + "', filefield='" + this.filefield + "', cookies='" + this.cookies + "', size=" + this.size + ", callback='" + this.callback + "'}";
    }

    public static UploadInfo obtain(String url) {
        Uri uri = Uri.parse(url);
        UploadInfo info = new UploadInfo();
        info.uploadUrl = getQueryParameter(uri, URI_PARAM_UPLOAD_URL);
        info.filefield = getQueryParameter(uri, URI_PARAM_FILE_FIELD);
        info.cookies = getQueryParameter(uri, URI_PARAM_COOKIES);
        info.size = SafeCastUtil.str2int(getQueryParameter(uri, "size"), DEFAULT_MAX_SIZE);
        info.callback = getQueryParameter(uri, "callback");
        return info;
    }

    public static String getQueryParameter(Uri uri, String key) {
        try {
            return uri.getQueryParameter(key);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getQueryParameter(String url, String key) {
        try {
            Uri uri = Uri.parse(url);
            return uri.getQueryParameter(key);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
