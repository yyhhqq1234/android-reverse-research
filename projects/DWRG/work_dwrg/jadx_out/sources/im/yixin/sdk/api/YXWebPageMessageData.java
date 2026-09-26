package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.SDKLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YXWebPageMessageData implements YXMessage.YXMessageData {
    public String webPageUrl;

    public YXWebPageMessageData() {
    }

    public YXWebPageMessageData(String webPageUrl) {
        this.webPageUrl = webPageUrl;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        if (this.webPageUrl == null || this.webPageUrl.length() == 0 || this.webPageUrl.length() > 10240) {
            info.appendReason((this.webPageUrl == null || this.webPageUrl.length() == 0) ? "webPageUrl is blank" : "webPageUrl.length " + this.webPageUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXWebPageMessageData.class, info.getReason());
            return false;
        }
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.webPageUrl = fromBundle.getString("_yxWebPageMessageData_webPageUrl");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putString("_yxWebPageMessageData_webPageUrl", this.webPageUrl);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.WEB_PAGE;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put("webPageUrl", this.webPageUrl);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }
}
