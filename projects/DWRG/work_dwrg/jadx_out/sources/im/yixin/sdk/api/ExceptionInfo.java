package im.yixin.sdk.api;

import im.yixin.sdk.api.SendMessageToYX;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.util.StringUtil;

/* loaded from: classes.dex */
public class ExceptionInfo {
    public static final String OPERATION_TYPE_OTHER_LOCALSHARE = "localshare";
    public String appIdThirdpart;
    public String appNameThirdpart;
    public Class classError;
    public String dataOther;
    public String feedBackTitle;
    public byte[] imageDataOther;
    public boolean isProductHttp;
    public String operationTypeOther;
    private String reason;
    public BaseReq req;
    public String sdkVersionThirdpart;
    public Throwable throwable;
    public byte[] thumbDataOther;

    public ExceptionInfo(Class classErrorParam, String errorInfo, Throwable throwableParam) {
        this.reason = "";
        this.appIdThirdpart = "";
        this.appNameThirdpart = "";
        this.sdkVersionThirdpart = "";
        this.isProductHttp = false;
        this.classError = classErrorParam;
        this.reason = errorInfo;
        this.throwable = throwableParam;
    }

    public ExceptionInfo(BaseReq paramBaseReq, Class classErrorParam) {
        this.reason = "";
        this.appIdThirdpart = "";
        this.appNameThirdpart = "";
        this.sdkVersionThirdpart = "";
        this.isProductHttp = false;
        this.req = paramBaseReq;
        this.classError = classErrorParam;
    }

    public void appendReason(String info) {
        if (!StringUtil.isBlank(info)) {
            this.reason = String.valueOf(StringUtil.isBlank(this.reason) ? "" : String.valueOf(this.reason) + " | ") + info;
        }
    }

    public String getReason() {
        return this.reason;
    }

    public SendMessageToYX.Req getReq() {
        if (this.req == null || !(this.req instanceof SendMessageToYX.Req)) {
            return null;
        }
        return (SendMessageToYX.Req) this.req;
    }

    public YXMessage getReqMessage() {
        SendMessageToYX.Req reqTmp = getReq();
        if (reqTmp != null) {
            return reqTmp.message;
        }
        return null;
    }

    public YXMessage.YXMessageData getReqMessageData() {
        YXMessage message = getReqMessage();
        if (message != null) {
            return message.messageData;
        }
        return null;
    }

    public byte[] getReqMessageThumbData() {
        YXMessage message = getReqMessage();
        if (message != null) {
            return message.thumbData;
        }
        return null;
    }
}
