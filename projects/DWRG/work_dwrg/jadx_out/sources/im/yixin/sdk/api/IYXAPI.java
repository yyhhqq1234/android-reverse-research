package im.yixin.sdk.api;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public interface IYXAPI {
    String getAppId();

    Context getApplicationContext();

    boolean handleIntent(Intent intent, IYXAPICallbackEventHandler iYXAPICallbackEventHandler);

    boolean isSupportCollect();

    boolean isSupportOauth();

    boolean isYXAppInstalled();

    boolean registerApp();

    boolean sendRequest(BaseReq baseReq);

    void unRegisterApp();
}
