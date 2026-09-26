package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.SDKLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YXMusicMessageData implements YXMessage.YXMessageData {
    public String musicDataUrl;
    public String musicLowBandDataUrl;
    public String musicLowBandUrl;
    public String musicUrl;

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public boolean verifyData(ExceptionInfo info) {
        if ((this.musicUrl == null || this.musicUrl.length() == 0) && (this.musicLowBandUrl == null || this.musicLowBandUrl.length() == 0)) {
            info.appendReason("musicUrl, musicLowBandUrl is all blank");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMusicMessageData.class, info.getReason());
            return false;
        }
        if (this.musicUrl != null && this.musicUrl.length() > 10240) {
            info.appendReason("musicUrl.length " + this.musicUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMusicMessageData.class, info.getReason());
            return false;
        }
        if (this.musicLowBandUrl != null && this.musicLowBandUrl.length() > 10240) {
            info.appendReason("musicLowBandUrl.length " + this.musicLowBandUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMusicMessageData.class, info.getReason());
            return false;
        }
        if (this.musicDataUrl != null && this.musicDataUrl.length() > 10240) {
            info.appendReason("musicLowBandUrl.length " + this.musicDataUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMusicMessageData.class, info.getReason());
            return false;
        }
        if (this.musicLowBandDataUrl != null && this.musicLowBandDataUrl.length() > 10240) {
            info.appendReason("musicLowBandUrl.length " + this.musicLowBandDataUrl.length() + ">10240");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMusicMessageData.class, info.getReason());
            return false;
        }
        return true;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void read(Bundle fromBundle) {
        this.musicUrl = fromBundle.getString("_yixinMusicMessageData_musicUrl");
        this.musicLowBandUrl = fromBundle.getString("_yixinMusicMessageData_musicLowBandUrl");
        this.musicDataUrl = fromBundle.getString("_yixinMusicMessageData_musicDataUrl");
        this.musicLowBandDataUrl = fromBundle.getString("_yixinMusicMessageData_musicLowBandDataUrl");
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public void write(Bundle toBundle) {
        toBundle.putString("_yixinMusicMessageData_musicUrl", this.musicUrl);
        toBundle.putString("_yixinMusicMessageData_musicLowBandUrl", this.musicLowBandUrl);
        toBundle.putString("_yixinMusicMessageData_musicDataUrl", this.musicDataUrl);
        toBundle.putString("_yixinMusicMessageData_musicLowBandDataUrl", this.musicLowBandDataUrl);
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public YXMessage.MessageType dataType() {
        return YXMessage.MessageType.MUSIC;
    }

    @Override // im.yixin.sdk.api.YXMessage.YXMessageData
    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put("musicUrl", this.musicUrl);
            json.put("musicLowBandUrl", this.musicLowBandUrl);
            json.put("musicDataUrl", this.musicDataUrl);
            json.put("musicLowBandDataUrl", this.musicLowBandDataUrl);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }
}
