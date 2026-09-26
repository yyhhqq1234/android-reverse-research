package im.yixin.sdk.api;

import android.graphics.Bitmap;
import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.SDKLogger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YXImageMessageData implements YXMessage.YXMessageData {
    public byte[] imageData;
    public String imagePath;
    public String imageUrl;

    public YXImageMessageData() {
    }

    public YXImageMessageData(byte[] paramArrayOfByte) {
        this.imageData = paramArrayOfByte;
    }

    public YXImageMessageData(Bitmap paramBitmap) {
        try {
            ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
            paramBitmap.compress(Bitmap.CompressFormat.JPEG, 85, localByteArrayOutputStream);
            this.imageData = localByteArrayOutputStream.toByteArray();
            localByteArrayOutputStream.close();
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        if ((this.imageData == null || this.imageData.length == 0) && ((this.imagePath == null || this.imagePath.length() == 0) && (this.imageUrl == null || this.imageUrl.length() == 0))) {
            info.appendReason("imageData imagePath imageUrl is all blank");
            SDKHttpUtils.getInstance().get4ErrorLog(YXImageMessageData.class, info.getReason());
            return false;
        }
        if (this.imageData != null && this.imageData.length > 10485760) {
            info.appendReason("imageData.length " + this.imageData.length + ">10485760");
            SDKHttpUtils.getInstance().get4ErrorLog(YXImageMessageData.class, info.getReason());
            return false;
        }
        if (this.imagePath != null) {
            File file = new File(this.imagePath);
            if (!file.exists() || file.length() > 10485760) {
                info.appendReason(!file.exists() ? "file not exist or can not read" : "file.length " + file.length() + ">10485760");
                SDKHttpUtils.getInstance().get4ErrorLog(YXImageMessageData.class, info.getReason());
                return false;
            }
        }
        if (this.imageUrl != null && this.imageUrl.length() > 10240) {
            info.appendReason("imageUrl.length " + this.imageUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXImageMessageData.class, info.getReason());
            return false;
        }
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.imageData = fromBundle.getByteArray("_yixinImageMessageData_imageData");
        this.imagePath = fromBundle.getString("_yixinImageMessageData_imagePath");
        this.imageUrl = fromBundle.getString("_yixinImageMessageData_imageUrl");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putByteArray("_yixinImageMessageData_imageData", this.imageData);
        toBundle.putString("_yixinImageMessageData_imagePath", this.imagePath);
        toBundle.putString("_yixinImageMessageData_imageUrl", this.imageUrl);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.IMAGE;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put("imagePath", this.imagePath);
            json.put("imageUrl", this.imageUrl);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }
}
