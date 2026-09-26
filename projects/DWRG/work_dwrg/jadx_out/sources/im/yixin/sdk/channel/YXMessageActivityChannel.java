package im.yixin.sdk.channel;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.api.ExceptionInfo;
import im.yixin.sdk.util.DevicesUtils;
import im.yixin.sdk.util.SDKFeedBackUtils;
import im.yixin.sdk.util.SDKLogger;
import im.yixin.sdk.util.YixinConstants;
import java.util.Date;

/* loaded from: classes.dex */
public final class YXMessageActivityChannel {
    private YXMessageActivityChannel() {
    }

    public static boolean sendData2Yixin(Context paramContext, String paramPackageName, String paramActionName, String protocolData, Bundle paramBundle) {
        ExceptionInfo exceptionInfo = new ExceptionInfo(null, YXMessageActivityChannel.class);
        if (paramContext != null && paramPackageName != null) {
            try {
                if (paramPackageName.length() != 0 && paramActionName != null && paramActionName.length() != 0) {
                    SDKLogger.i(YXMessageActivityChannel.class, "sendToYx@" + new Date() + ": action=" + paramActionName + ",protocolData=" + protocolData + ",package=" + paramContext.getPackageName() + ", intent=" + paramActionName);
                    Intent intent = new Intent();
                    intent.setClassName(paramPackageName, paramActionName);
                    if (paramBundle != null) {
                        intent.putExtras(paramBundle);
                    }
                    String contextPackageName = paramContext.getPackageName();
                    intent.putExtra(YixinConstants.KEY_SDK_VERSION, YixinConstants.VALUE_SDK_VERSION);
                    intent.putExtra(YixinConstants.KEY_APP_PACKAGE, contextPackageName);
                    intent.putExtra(YixinConstants.KEY_CONTENT, protocolData);
                    intent.putExtra(YixinConstants.KEY_CHECK_SUM, YXMessageUtil.generateCheckSum(protocolData, contextPackageName));
                    intent.addFlags(268435456);
                    if (validateYixinMultipleTaskVersion(paramContext)) {
                        intent.addFlags(134217728);
                    }
                    paramContext.startActivity(intent);
                    SDKLogger.i(YXMessageActivityChannel.class, "sendToYx success: action=" + paramActionName + ",protocolData=" + protocolData + ",package=" + paramContext.getPackageName() + ", intent=" + paramActionName);
                    return true;
                }
            } catch (Throwable throwable) {
                exceptionInfo.throwable = throwable;
                SDKFeedBackUtils.getInstance().postErrorLog(exceptionInfo, "sendToYx Failed -  target ActivityNotFound: action=" + paramActionName + ",protocolData=" + protocolData + ",package=" + paramContext.getPackageName() + ", intent=" + paramActionName);
                return false;
            }
        }
        SDKFeedBackUtils.getInstance().postErrorLog(YXMessageActivityChannel.class, "sendToYx fail - invalid arguments: action=" + paramActionName + ",protocolData=" + protocolData + ", intent=" + paramActionName, null);
        return false;
    }

    private static boolean validateYixinMultipleTaskVersion(Context ctx) {
        int versionCode = DevicesUtils.getVersionCode4OtherApp(ctx, YixinConstants.YIXIN_APP_PACKAGE_NAME);
        SDKLogger.i(YXMessageActivityChannel.class, "validateYixinMultipleTaskVersion versionCode=" + versionCode + " true");
        return true;
    }
}
