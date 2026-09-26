package im.yixin.sdk.api;

import android.os.Bundle;
import com.netease.ntsharesdk.ShareArgs;
import im.yixin.sdk.util.BitmapUtil;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.SDKLogger;
import im.yixin.sdk.util.StringUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class YXMessage {
    public String comment;
    public String description;
    public YXMessageData messageData;
    public byte[] thumbData;
    public String title;
    private int version = 100;

    /* loaded from: classes.dex */
    public enum MessageType {
        UNKNOWN,
        TEXT,
        IMAGE,
        MUSIC,
        VIDEO,
        FILE,
        MAP,
        CARD,
        WEB_PAGE,
        APP_EXT;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static MessageType[] valuesCustom() {
            MessageType[] valuesCustom = values();
            int length = valuesCustom.length;
            MessageType[] messageTypeArr = new MessageType[length];
            System.arraycopy(valuesCustom, 0, messageTypeArr, 0, length);
            return messageTypeArr;
        }
    }

    /* loaded from: classes.dex */
    public interface YXMessageData {
        MessageType dataType();

        void read(Bundle bundle);

        String toJson4Log();

        boolean verifyData(ExceptionInfo exceptionInfo);

        void write(Bundle bundle);
    }

    public YXMessage() {
    }

    public YXMessage(YXMessageData messageData) {
        this.messageData = messageData;
    }

    public boolean verifyData(ExceptionInfo info) {
        if (this.messageData == null) {
            info.appendReason("messageData is null");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMessage.class, info.getReason());
            return false;
        }
        if (this.thumbData != null && this.thumbData.length > 65536) {
            info.appendReason("thumbData.length " + this.thumbData.length + ">65536");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMessage.class, this.messageData.getClass(), info.getReason());
            return false;
        }
        if (this.thumbData != null && BitmapUtil.byteArrayToBmp(this.thumbData) == null) {
            info.appendReason("thumbData is not an image");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMessage.class, this.messageData.getClass(), info.getReason());
            return false;
        }
        if (this.title != null && this.title.length() > 512) {
            info.appendReason("title.length " + this.title.length() + ">512");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMessage.class, this.messageData.getClass(), info.getReason());
            return false;
        }
        if (this.description != null && this.description.length() > 1024) {
            info.appendReason("description.length " + this.description.length() + ">1024");
            SDKHttpUtils.getInstance().get4ErrorLog(YXMessage.class, this.messageData.getClass(), info.getReason());
            return false;
        }
        return this.messageData.verifyData(info);
    }

    public String toJson4Log() {
        try {
            JSONObject json = new JSONObject();
            json.put("version", this.version);
            json.put("title", this.title);
            json.put("description", this.description);
            json.put(ShareArgs.COMMENT, this.comment);
            return json.toString();
        } catch (JSONException e) {
            SDKLogger.e(YXMessage.class, "toJson4Log error " + e.getMessage());
            return "";
        }
    }

    /* loaded from: classes.dex */
    public static class Converter {
        private static final String DATA_CLASS_KEY = "_yixinmessage_dataClass";
        private static final String VERSION_KEY = "_yixinmessage_version";

        public static Bundle write(YXMessage yxMessage) {
            Bundle localBundle = new Bundle();
            localBundle.putInt(VERSION_KEY, yxMessage.version);
            localBundle.putString("_yixinmessage_title", yxMessage.title);
            localBundle.putString("_yixinmessage_description", yxMessage.description);
            localBundle.putString("_yixinmessage_comment", yxMessage.comment);
            localBundle.putByteArray("_yixinmessage_thumbdata", yxMessage.thumbData);
            if (yxMessage.messageData != null) {
                localBundle.putString(DATA_CLASS_KEY, yxMessage.messageData.getClass().getName());
                yxMessage.messageData.write(localBundle);
            }
            return localBundle;
        }

        public static YXMessage read(Bundle paramBundle) {
            YXMessage yxMessage = new YXMessage();
            yxMessage.version = paramBundle.getInt(VERSION_KEY);
            yxMessage.title = StringUtil.substringByByteCount(paramBundle.getString("_yixinmessage_title"), 40, true);
            yxMessage.description = StringUtil.substringByByteCount(paramBundle.getString("_yixinmessage_description"), 72, true);
            yxMessage.comment = StringUtil.substringByCharCount(paramBundle.getString("_yixinmessage_comment"), 297, true);
            yxMessage.thumbData = paramBundle.getByteArray("_yixinmessage_thumbdata");
            String str = paramBundle.getString(DATA_CLASS_KEY);
            if (str == null || str.length() <= 0) {
                SDKLogger.i(YXMessage.class, " data class is blank");
            } else {
                try {
                    Class localClass = Class.forName(str);
                    yxMessage.messageData = (YXMessageData) localClass.newInstance();
                    yxMessage.messageData.read(paramBundle);
                } catch (Exception localException) {
                    SDKLogger.e(YXMessage.class, " data class is not found  " + str, localException);
                }
            }
            return yxMessage;
        }
    }
}
