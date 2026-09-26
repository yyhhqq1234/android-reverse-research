package im.yixin.sdk.util;

import android.content.Context;
import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import com.google.zxing.common.StringUtils;
import com.netease.environment.config.SdkConstants;
import im.yixin.sdk.api.ExceptionInfo;
import im.yixin.sdk.api.SendMessageToYX;
import im.yixin.sdk.api.YXAPIFactory;
import im.yixin.sdk.api.YXImageMessageData;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.http.multipart.ByteArrayPartSource;
import im.yixin.sdk.http.multipart.FilePart;
import im.yixin.sdk.http.multipart.MultipartEntity;
import im.yixin.sdk.http.multipart.Part;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public final class SDKFeedBackUtils {
    private static final String FEEDBACK_UPDATE_FILE_OR_PICTURE = "http://fankui.163.com/ft/upCmtAttach.fb";
    private static final String FEEDBACK_UPLOAD_FILE_URL = "http://fankui.163.com/ft/file.fb?op=up";
    private static final String FEEDBACK_URL = "http://fankui.163.com/ft/commentInner.fb?cid";
    private static final String LINE_SPLIT = "\n";
    private static final String PART_SPLIT = ", ";
    private static SDKFeedBackUtils instance;
    private Context applicationContext;
    private static String NORMAL_PRODUCT_ID = "29001";
    private static String HTTP_PRODUCT_ID = "30001";
    private static String FEEDBACK_ID = "16025";
    private static String FEEDBACK_TITLE = "android SDK分享失败";
    private static long lastPostTime = 0;

    private SDKFeedBackUtils() {
    }

    public static synchronized SDKFeedBackUtils getInstance() {
        SDKFeedBackUtils sDKFeedBackUtils;
        synchronized (SDKFeedBackUtils.class) {
            if (instance == null) {
                instance = new SDKFeedBackUtils();
            }
            if (instance.applicationContext == null && YXAPIFactory.getInstance() != null) {
                instance.applicationContext = YXAPIFactory.getInstance().getApplicationContext();
            }
            sDKFeedBackUtils = instance;
        }
        return sDKFeedBackUtils;
    }

    public void setApplicationContext(Context applicationContextParam) {
        this.applicationContext = applicationContextParam.getApplicationContext();
    }

    private String getStackTrace(Throwable ex) {
        Writer writer = new StringWriter();
        PrintWriter printWriter = new PrintWriter(writer);
        ex.printStackTrace(printWriter);
        for (Throwable cause = ex.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        return writer.toString();
    }

    private String genContent(ExceptionInfo info) {
        SendMessageToYX.Req req = info.getReq();
        StringBuilder sb = new StringBuilder();
        sb.append("os=android").append(Build.VERSION.RELEASE).append(LINE_SPLIT);
        sb.append("device=").append(DevicesUtils.collectDeviceInfo(this.applicationContext)).append(LINE_SPLIT).append(LINE_SPLIT);
        sb.append("sdkversion=").append(YixinConstants.VALUE_SDK_VERSION).append(LINE_SPLIT);
        String appId = "";
        if (YXAPIFactory.getInstance() != null) {
            appId = YXAPIFactory.getInstance().getAppId();
        }
        sb.append("app=").append(appId).append(PART_SPLIT).append(DevicesUtils.getAppName(this.applicationContext)).append(PART_SPLIT).append(DevicesUtils.getVersionName(this.applicationContext)).append(LINE_SPLIT);
        sb.append("appThirdPart=").append(info.appIdThirdpart).append(PART_SPLIT).append(info.appNameThirdpart).append(PART_SPLIT).append(info.sdkVersionThirdpart).append(LINE_SPLIT);
        String operationType = StringUtil.isNotBlank(info.operationTypeOther) ? info.operationTypeOther : EnvironmentCompat.MEDIA_UNKNOWN;
        if (req != null && req.message != null && req.message.messageData != null) {
            operationType = SDKHttpUtils.getInstance().getOperationTypeByClass(req.message.messageData.getClass());
        }
        sb.append("operation=").append(operationType).append(LINE_SPLIT);
        sb.append("network=").append(SDKNetworkUtil.getNetworkName(this.applicationContext)).append(PART_SPLIT).append(SDKNetworkUtil.getNetworkType(this.applicationContext)).append(LINE_SPLIT).append(LINE_SPLIT);
        if (req != null) {
            sb.append("data=").append(req.scene);
            if (req.message != null) {
                sb.append(PART_SPLIT).append(req.message.toJson4Log());
            }
            if (req.message.messageData != null) {
                sb.append(PART_SPLIT).append(req.message.messageData.toJson4Log());
            }
            if (info.dataOther != null) {
                sb.append(PART_SPLIT).append(info.dataOther);
            }
            sb.append(LINE_SPLIT).append(LINE_SPLIT);
        }
        sb.append("reason=").append(info.getReason()).append(" [").append(info.classError != null ? info.classError.getName() : "NULL").append("]").append(LINE_SPLIT).append(LINE_SPLIT);
        if (info.throwable != null) {
            sb.append(getStackTrace(info.throwable)).append(LINE_SPLIT);
        }
        return sb.toString();
    }

    private String getProductId(ExceptionInfo info) {
        if (info.throwable instanceof SocketException) {
            return HTTP_PRODUCT_ID;
        }
        if (info.throwable instanceof SocketTimeoutException) {
            return HTTP_PRODUCT_ID;
        }
        if (info.throwable instanceof UnknownHostException) {
            return HTTP_PRODUCT_ID;
        }
        if (info.isProductHttp) {
            return HTTP_PRODUCT_ID;
        }
        return NORMAL_PRODUCT_ID;
    }

    public HttpEntity createFeedBackReqeust(ExceptionInfo info, String title, String fileId, String pictureId, String productId) throws UnsupportedEncodingException {
        List<NameValuePair> list = new ArrayList<>();
        list.add(new BasicNameValuePair("feedbackId", FEEDBACK_ID));
        list.add(new BasicNameValuePair("productId", productId));
        list.add(new BasicNameValuePair("userName", DevicesUtils.getAppName(this.applicationContext)));
        list.add(new BasicNameValuePair("title", title));
        list.add(new BasicNameValuePair("content", genContent(info)));
        if (StringUtil.isNotBlank(fileId)) {
            list.add(new BasicNameValuePair("fileId", fileId));
        }
        if (StringUtil.isNotBlank(pictureId)) {
            list.add(new BasicNameValuePair("pictureId", pictureId));
        }
        return new UrlEncodedFormEntity(list, StringUtils.GB2312);
    }

    public void updateFeedBackFileIdOrPictureId(String cid, String fileId, String pictureId, String productId) {
        HttpEntity entity;
        List<NameValuePair> list = new ArrayList<>();
        list.add(new BasicNameValuePair("cid", cid));
        list.add(new BasicNameValuePair("productId", productId));
        if (StringUtil.isNotBlank(fileId)) {
            list.add(new BasicNameValuePair("fileId", fileId));
            list.add(new BasicNameValuePair("fileName", fileId));
        } else if (StringUtil.isNotBlank(pictureId)) {
            list.add(new BasicNameValuePair("pictureId", pictureId));
        } else {
            return;
        }
        try {
            entity = new UrlEncodedFormEntity(list, StringUtils.GB2312);
        } catch (Exception e) {
            e = e;
        }
        try {
            SDKHttpUtils.getInstance().post(FEEDBACK_UPDATE_FILE_OR_PICTURE, "application/x-www-form-urlencoded", entity);
        } catch (Exception e2) {
            e = e2;
            SDKLogger.e(SDKFeedBackUtils.class, "updateFeedBackFileId error", e);
        }
    }

    private String parseFileidFromPostFileResponse(String response) {
        SDKLogger.i(SDKFeedBackUtils.class, response);
        if (StringUtil.isBlank(response)) {
            return null;
        }
        try {
            JSONObject object = (JSONObject) new JSONTokener(response).nextValue();
            if (object == null) {
                return null;
            }
            boolean isSuccess = object.getBoolean("success");
            if (!isSuccess) {
                return null;
            }
            String fileId = object.getString("fileId");
            return fileId;
        } catch (Exception e) {
            SDKLogger.e(SDKFeedBackUtils.class, "parseFileidFromPostFileResponse error: " + response);
            return null;
        }
    }

    private String postFileData(byte[] fileData, String fileName) {
        try {
            ByteArrayPartSource byteArrayPartSource = new ByteArrayPartSource(fileName, fileData);
            FilePart filePart = new FilePart("Filedata", byteArrayPartSource);
            MultipartEntity entity = new MultipartEntity(new Part[]{filePart});
            String response = SDKHttpUtils.getInstance().post(FEEDBACK_UPLOAD_FILE_URL, null, entity);
            return parseFileidFromPostFileResponse(response);
        } catch (Exception e) {
            SDKLogger.e(SDKFeedBackUtils.class, "FeedBackUtils postFileData error fileName=" + fileName, e);
            return null;
        }
    }

    private String postImageData(ExceptionInfo info) {
        byte[] imageData = (byte[]) null;
        String imagePath = null;
        YXMessage.YXMessageData messageData = info.getReqMessageData();
        if (messageData != null && (messageData instanceof YXImageMessageData)) {
            imageData = ((YXImageMessageData) messageData).imageData;
            imagePath = ((YXImageMessageData) messageData).imagePath;
        }
        if (imageData == null && StringUtil.isNotBlank(imagePath)) {
            imageData = FileUtil.fileToByteArray(imagePath);
        }
        if (imageData == null) {
            imageData = info.imageDataOther;
        }
        if (imageData == null) {
            return null;
        }
        if (imageData.length > 1048576) {
            info.appendReason("postImageData not post because imageData.length=" + imageData.length);
            return null;
        }
        byte[] zipData = FileUtil.zip(imageData);
        return postFileData(zipData, "imageData");
    }

    private String postThumbData(ExceptionInfo info) {
        byte[] thumbData = info.getReqMessageThumbData();
        if (thumbData == null) {
            thumbData = info.thumbDataOther;
        }
        if (thumbData == null) {
            return null;
        }
        return postFileData(thumbData, "thumbData");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postErrorLogWorker(ExceptionInfo info) {
        try {
            if (!DevicesUtils.getPermissions(this.applicationContext).contains("android.permission.INTERNET")) {
                info.appendReason(". no postErrorLog because no android.permission.INTERNET. " + (this.applicationContext == null ? "applicationContext is null" : ""));
                SDKLogger.e(info.classError, info.getReason(), info.throwable);
                return;
            }
            SDKLogger.e(info.classError, info.getReason(), info.throwable);
            String productId = getProductId(info);
            String title = String.valueOf(FEEDBACK_TITLE) + (StringUtil.isBlank(info.feedBackTitle) ? "" : "-" + info.feedBackTitle) + YixinConstants.VALUE_SDK_VERSION;
            String cid = SDKHttpUtils.getInstance().post(FEEDBACK_URL, "application/x-www-form-urlencoded", createFeedBackReqeust(info, title, null, null, productId));
            String pictureId = postThumbData(info);
            updateFeedBackFileIdOrPictureId(cid, null, pictureId, productId);
            if (SDKNetworkUtil.NETWORK_TYPE_WIFI.equals(SDKNetworkUtil.getNetworkName(this.applicationContext))) {
                String fileId = postImageData(info);
                updateFeedBackFileIdOrPictureId(cid, fileId, null, productId);
            }
        } catch (Exception e) {
            SDKLogger.e(SDKFeedBackUtils.class, "FeedBackUtils post data error", e);
        }
    }

    public void postErrorLog(final ExceptionInfo info, String errorInfo) {
        if (info == null) {
            SDKLogger.e(SDKFeedBackUtils.class, "FeedBackUtils post data is null");
            return;
        }
        if (StringUtil.isNotBlank(errorInfo)) {
            info.appendReason(errorInfo);
        }
        SDKLogger.e(SDKFeedBackUtils.class, info.getReason());
        if (info.throwable == null) {
            info.throwable = new Exception(errorInfo);
        }
        if (System.currentTimeMillis() - lastPostTime < SdkConstants.A_MUNITE) {
            SDKLogger.i(SDKFeedBackUtils.class, "postErrorLog can not post twice in 1 minutes");
        } else {
            lastPostTime = System.currentTimeMillis();
            new Thread(new Runnable() { // from class: im.yixin.sdk.util.SDKFeedBackUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    SDKFeedBackUtils.this.postErrorLogWorker(info);
                }
            }).start();
        }
    }

    public void postErrorLog(Class clazz, String errorInfo, Throwable throwable) {
        ExceptionInfo info = new ExceptionInfo(clazz, errorInfo, throwable);
        postErrorLog(info, null);
    }

    public void postErrorHttpLog(Class clazz, String errorInfo, Throwable throwable) {
        ExceptionInfo info = new ExceptionInfo(clazz, errorInfo, throwable);
        info.isProductHttp = true;
        postErrorLog(info, null);
    }

    public void postErrorLog(Class clazz, String errorInfo, Throwable throwable, String appIdThirdpart, String appNameThirdpart, String sdkVersionThirdpart) {
        ExceptionInfo info = new ExceptionInfo(clazz, errorInfo, throwable);
        info.appIdThirdpart = appIdThirdpart;
        info.appNameThirdpart = appNameThirdpart;
        info.sdkVersionThirdpart = sdkVersionThirdpart;
        postErrorLog(info, null);
    }
}
