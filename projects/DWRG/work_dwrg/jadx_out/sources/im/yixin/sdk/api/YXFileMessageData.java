package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKHttpUtils;
import java.io.File;

/* loaded from: classes.dex */
public class YXFileMessageData implements YXMessage.YXMessageData {
    public byte[] fileData;
    public String filePath;

    public YXFileMessageData() {
        this.fileData = null;
        this.filePath = null;
    }

    public YXFileMessageData(byte[] fileData) {
        this.fileData = fileData;
    }

    public YXFileMessageData(String filePath) {
        this.filePath = filePath;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        if ((this.fileData == null || this.fileData.length == 0) && (this.filePath == null || this.filePath.length() == 0)) {
            info.appendReason("filePath fileData is all blank");
            SDKHttpUtils.getInstance().get4ErrorLog(YXFileMessageData.class, info.getReason());
            return false;
        }
        if (this.fileData != null && this.fileData.length > 10485760) {
            info.appendReason("fileData.length " + this.fileData.length + ">10485760");
            SDKHttpUtils.getInstance().get4ErrorLog(YXFileMessageData.class, info.getReason());
            return false;
        }
        if (this.filePath != null) {
            File file = new File(this.filePath);
            if (!file.exists() || !file.canRead() || file.length() > 10485760) {
                info.appendReason((file.exists() && file.canRead()) ? "file.length " + file.length() + ">10485760" : "file not exist or can not read");
                SDKHttpUtils.getInstance().get4ErrorLog(YXFileMessageData.class, info.getReason());
                return false;
            }
        }
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.fileData = fromBundle.getByteArray("_yixinFileMessageData_fileData");
        this.filePath = fromBundle.getString("_yixinFileMessageData_filePath");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putByteArray("_yixinFileMessageData_fileData", this.fileData);
        toBundle.putString("_yixinFileMessageData_filePath", this.filePath);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.FILE;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        return this.filePath;
    }
}
