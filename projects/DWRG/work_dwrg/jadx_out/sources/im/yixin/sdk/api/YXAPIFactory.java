package im.yixin.sdk.api;

import android.content.Context;
import im.yixin.sdk.channel.YXMessageUtil;
import im.yixin.sdk.util.SDKFeedBackUtils;
import im.yixin.sdk.util.SDKLogger;

/* loaded from: classes.dex */
public final class YXAPIFactory {
    private static IYXAPI instance = null;

    public static IYXAPI createYXAPI(Context paramContext, String paramAppId) {
        IYXAPI iyxapi;
        if (paramContext == null || YXMessageUtil.isBlank(paramAppId)) {
            SDKFeedBackUtils.getInstance().postErrorLog(YXAPIFactory.class, "Error param: paramContext == null || YXMessageUtil.isBlank(paramAppId)", null);
            return null;
        }
        if (instance != null) {
            return instance;
        }
        synchronized (YXAPIFactory.class) {
            if (instance == null) {
                SDKFeedBackUtils.getInstance().setApplicationContext(paramContext.getApplicationContext());
                instance = new YXApiImplementation(paramContext, paramAppId);
                SDKLogger.i(YXAPIFactory.class, "createYXAPI called: PackageName=" + paramContext.getPackageName() + ",paramAppId=" + paramAppId);
            }
            iyxapi = instance;
        }
        return iyxapi;
    }

    public static IYXAPI getInstance() {
        return instance;
    }
}
