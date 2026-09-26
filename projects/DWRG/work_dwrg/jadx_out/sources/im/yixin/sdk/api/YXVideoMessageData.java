package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.SDKLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YXVideoMessageData implements YXMessage.YXMessageData {
    public String videoLowBandUrl;
    public String videoUrl;

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        if ((this.videoUrl == null || this.videoUrl.length() == 0) && (this.videoLowBandUrl == null || this.videoLowBandUrl.length() == 0)) {
            info.appendReason("videoUrl videoLowBandUrl is all blank");
            SDKHttpUtils.getInstance().get4ErrorLog(YXVideoMessageData.class, info.getReason());
            return false;
        }
        if (this.videoUrl != null && this.videoUrl.length() > 10240) {
            info.appendReason("videoUrl.length " + this.videoUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXVideoMessageData.class, info.getReason());
            return false;
        }
        if (this.videoLowBandUrl != null && this.videoLowBandUrl.length() > 10240) {
            info.appendReason("videoLowBandUrl.length " + this.videoLowBandUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXVideoMessageData.class, info.getReason());
            return false;
        }
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.videoUrl = fromBundle.getString("_yixinVideoMessageData_videoUrl");
        this.videoLowBandUrl = fromBundle.getString("_yixinVideoMessageData_videoLowBandUrl");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putString("_yixinVideoMessageData_videoUrl", this.videoUrl);
        toBundle.putString("_yixinVideoMessageData_videoLowBandUrl", this.videoLowBandUrl);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.VIDEO;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put("videoUrl", this.videoUrl);
            json.put("videoLowBandUrl", this.videoLowBandUrl);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }
}
