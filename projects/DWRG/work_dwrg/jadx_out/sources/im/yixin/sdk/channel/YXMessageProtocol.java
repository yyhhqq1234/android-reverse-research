package im.yixin.sdk.channel;

import android.content.Intent;
import android.net.Uri;
import im.yixin.sdk.api.ExceptionInfo;
import im.yixin.sdk.util.SDKFeedBackUtils;
import im.yixin.sdk.util.YixinConstants;

/* loaded from: classes.dex */
public class YXMessageProtocol {
    private String uri = null;
    private String appId = null;
    private String command = null;
    private long sdkVersion = 0;
    private String appPackage = null;
    private byte[] checkSum = null;

    private YXMessageProtocol() {
    }

    public final boolean isValid() {
        ExceptionInfo info = new ExceptionInfo(null, YXMessageProtocol.class);
        if (YXMessageUtil.isBlank(this.appId) || YXMessageUtil.isBlank(this.command)) {
            info.appendReason(YXMessageUtil.isBlank(this.appId) ? "appId is blank" : "command is blank");
            SDKFeedBackUtils.getInstance().postErrorLog(info, null);
            return false;
        }
        if (this.sdkVersion < 1 || YXMessageUtil.isBlank(this.appPackage)) {
            info.appendReason(this.sdkVersion < 1 ? "sdkVersion < 1L " : "appPackage is blank");
            SDKFeedBackUtils.getInstance().postErrorLog(info, null);
            return false;
        }
        byte[] newChecksum = YXMessageUtil.generateCheckSum(String.valueOf(this.uri) + this.sdkVersion, this.appPackage);
        if (newChecksum == null || this.checkSum == null || newChecksum.length != this.checkSum.length) {
            info.appendReason("checkSum is error");
            SDKFeedBackUtils.getInstance().postErrorLog(info, null);
            return false;
        }
        for (int i = 0; i < this.checkSum.length; i++) {
            if (this.checkSum[i] != newChecksum[i]) {
                info.appendReason("check checksum fail");
                SDKFeedBackUtils.getInstance().postErrorLog(info, null);
                return false;
            }
        }
        return true;
    }

    public static final YXMessageProtocol parseProtocol(Intent intent) {
        YXMessageProtocol p = new YXMessageProtocol();
        if (intent != null) {
            p.parseUri(intent.getStringExtra(YixinConstants.KEY_CONTENT));
            p.sdkVersion = intent.getLongExtra(YixinConstants.KEY_SDK_VERSION, 0L);
            p.appPackage = intent.getStringExtra(YixinConstants.KEY_APP_PACKAGE);
            p.checkSum = intent.getByteArrayExtra(YixinConstants.KEY_CHECK_SUM);
        }
        return p;
    }

    private void parseUri(String protocolData) {
        if (YXMessageUtil.isBlank(protocolData) || !protocolData.startsWith(YixinConstants.PROTOCOL_PREFIX)) {
            SDKFeedBackUtils.getInstance().postErrorLog(YXMessageProtocol.class, "error when parseUri,protocolData=" + protocolData, null);
            return;
        }
        this.uri = protocolData;
        Uri parseUri = Uri.parse(this.uri);
        this.appId = parseUri.getQueryParameter("appid");
        this.command = parseUri.getAuthority();
    }

    public String getAppId() {
        return this.appId;
    }

    public String getCommand() {
        return this.command;
    }

    public long getSdkVersion() {
        return this.sdkVersion;
    }

    public String getAppPackage() {
        return this.appPackage;
    }
}
