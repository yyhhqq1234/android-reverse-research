package im.yixin.sdk.channel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.api.ExceptionInfo;
import im.yixin.sdk.util.SDKFeedBackUtils;
import im.yixin.sdk.util.SDKLogger;
import im.yixin.sdk.util.YixinConstants;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class YXMessageChannel {

    /* loaded from: classes.dex */
    public interface CallBack {
        void handleMessage(Intent intent);
    }

    public static boolean sendData2Yixin(Context paramContext, String yixinAppPackage, String paramActionName, String protocolData, Bundle paramBundle) {
        ExceptionInfo exceptionInfo = new ExceptionInfo(null, YXMessageActivityChannel.class);
        try {
            SDKLogger.i(YXMessageChannel.class, "send@" + new Date() + ": action=" + paramActionName + ",protocolData=" + protocolData + ",package=" + paramContext.getPackageName());
            Intent intent = new Intent(paramActionName);
            if (paramBundle != null) {
                intent.putExtras(paramBundle);
            }
            String contextPackageName = paramContext.getPackageName();
            intent.putExtra(YixinConstants.KEY_SDK_VERSION, YixinConstants.VALUE_SDK_VERSION);
            intent.putExtra(YixinConstants.KEY_APP_PACKAGE, contextPackageName);
            intent.putExtra(YixinConstants.KEY_CONTENT, protocolData);
            intent.putExtra(YixinConstants.KEY_CHECK_SUM, YXMessageUtil.generateCheckSum(protocolData, contextPackageName));
            paramContext.sendBroadcast(intent, YixinConstants.PERMISSION_NAME_BROADCAST_YIXIN_RECEIVER);
            SDKLogger.i(YXMessageChannel.class, "send success: action=" + paramActionName + ",protocolData=" + protocolData + ",package=" + paramContext.getPackageName() + ", intent=" + paramActionName + ", perm=" + YixinConstants.PERMISSION_NAME_BROADCAST_YIXIN_RECEIVER);
            return true;
        } catch (Throwable e) {
            exceptionInfo.throwable = e;
            SDKFeedBackUtils.getInstance().postErrorLog(exceptionInfo, "send fail: action=" + paramActionName + ",protocolData=" + protocolData + ",package=" + paramContext.getPackageName() + ", intent=" + paramActionName + ", perm=" + YixinConstants.PERMISSION_NAME_BROADCAST_YIXIN_RECEIVER);
            return false;
        }
    }

    public static void sendData2Yixin(Context paramContext, String paramPackageName, String paramActionName, String protocolData) {
        sendData2Yixin(paramContext, paramPackageName, paramActionName, protocolData, null);
    }

    /* loaded from: classes.dex */
    public static final class Receiver extends BroadcastReceiver {
        public static final Map<String, CallBack> callbacks = new HashMap();
        private final CallBack defaultCallback;

        public Receiver() {
            this(null);
        }

        public Receiver(CallBack paramCallBack) {
            this.defaultCallback = paramCallBack;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context paramContext, Intent paramIntent) {
            if (this.defaultCallback != null) {
                this.defaultCallback.handleMessage(paramIntent);
                return;
            }
            CallBack callBack = callbacks.get(paramIntent.getAction());
            if (callBack != null) {
                callBack.handleMessage(paramIntent);
            }
        }

        public static void registerCallBack(String actionName, CallBack callBack) {
            callbacks.put(actionName, callBack);
        }

        public static void unregisterCallBack(String actionName) {
            callbacks.remove(actionName);
        }
    }
}
