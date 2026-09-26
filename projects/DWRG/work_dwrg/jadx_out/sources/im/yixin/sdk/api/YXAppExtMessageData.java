package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YXAppExtMessageData implements YXMessage.YXMessageData {
    public String extInfo;
    public byte[] fileData;
    public String filePath;

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.extInfo = fromBundle.getString("_yxAppExtMessageData_extInfo");
        this.filePath = fromBundle.getString("_yxAppExtMessageData_filePath");
        this.fileData = fromBundle.getByteArray("_yxAppExtMessageData_fileData");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putString("_yxAppExtMessageData_filePath", this.filePath);
        toBundle.putString("_yxAppExtMessageData_extInfo", this.extInfo);
        toBundle.putByteArray("_yxAppExtMessageData_fileData", this.fileData);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.APP_EXT;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put("extInfo", this.extInfo);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }
}
