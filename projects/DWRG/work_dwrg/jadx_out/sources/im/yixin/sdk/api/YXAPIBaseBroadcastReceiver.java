package im.yixin.sdk.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.channel.YXMessageProtocol;
import im.yixin.sdk.channel.YXMessageUtil;
import im.yixin.sdk.util.SDKLogger;
import java.util.Date;

/* loaded from: classes.dex */
public abstract class YXAPIBaseBroadcastReceiver extends BroadcastReceiver {
    protected abstract String getAppId();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        YXMessageProtocol protocol = YXMessageProtocol.parseProtocol(intent);
        if (protocol == null || !protocol.isValid()) {
            SDKLogger.e(YXAPIBaseBroadcastReceiver.class, "data received, but !protocol.isValid()");
            return;
        }
        SDKLogger.i(YXAPIBaseBroadcastReceiver.class, "Client data received@" + new Date() + ": PackageName=" + context.getPackageName() + ",AppId=" + protocol.getAppId() + ",Command=" + protocol.getCommand() + ",SdkVersion=" + protocol.getSdkVersion() + ",appPackage=" + protocol.getAppPackage());
        String command = protocol.getCommand();
        if ("yixinlaunch".equalsIgnoreCase(command)) {
            String appid = getAppId();
            if (YXMessageUtil.isBlank(appid)) {
                SDKLogger.e(YXAPIBaseBroadcastReceiver.class, "Error app id， appid=" + appid);
            } else {
                YXAPIFactory.createYXAPI(context, appid).registerApp();
            }
            onAfterYixinStart(protocol);
            return;
        }
        onOtherYixinNotify(protocol, intent.getExtras());
    }

    protected void onAfterYixinStart(YXMessageProtocol protocol) {
    }

    protected void onOtherYixinNotify(YXMessageProtocol protocol, Bundle bundle) {
    }
}
