package im.yixin.sdk.api;

import android.os.Bundle;
import com.netease.ntsharesdk.ShareArgs;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.SDKLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YXTextMessageData implements YXMessage.YXMessageData {
    public String text;

    public YXTextMessageData() {
    }

    public YXTextMessageData(String text) {
        this.text = text;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        if (this.text == null || this.text.length() == 0 || this.text.length() > 10240) {
            info.appendReason((this.text == null || this.text.length() == 0) ? "text is blank" : "text.length " + this.text.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXTextMessageData.class, info.getReason());
            return false;
        }
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.text = fromBundle.getString("_yixinTextMessageData_text");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putString("_yixinTextMessageData_text", this.text);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.TEXT;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put(ShareArgs.TEXT, this.text);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }
}
