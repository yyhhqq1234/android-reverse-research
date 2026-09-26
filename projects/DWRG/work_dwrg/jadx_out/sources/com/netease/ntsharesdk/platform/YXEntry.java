package com.netease.ntsharesdk.platform;

import android.util.Log;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareMgr;
import im.yixin.sdk.api.BaseReq;
import im.yixin.sdk.api.BaseResp;
import im.yixin.sdk.api.BaseYXEntryActivity;
import im.yixin.sdk.api.IYXAPI;

/* loaded from: classes.dex */
public class YXEntry extends BaseYXEntryActivity {
    @Override // im.yixin.sdk.api.IYXAPICallbackEventHandler
    public void onReq(BaseReq arg0) {
        Log.v("ntsharesdk", "Yixin on Req");
        ShareMgr.getInst().getPlatform(Platform.YIXIN).handleRequest(arg0);
        finish();
    }

    @Override // im.yixin.sdk.api.IYXAPICallbackEventHandler
    public void onResp(BaseResp arg0) {
        Log.v("ntsharesdk", "Yixin on onResp");
        Log.v("ntsharesdk", "onResp called: errCode=" + arg0.errCode + ",errStr=" + arg0.errStr + ",transaction=" + arg0.transaction);
        ShareMgr.getInst().getPlatform(Platform.YIXIN).handleResponse(arg0);
        finish();
    }

    @Override // im.yixin.sdk.api.BaseYXEntryActivity
    protected IYXAPI getIYXAPI() {
        return (IYXAPI) ShareMgr.getInst().getPlatform(Platform.YIXIN).getAPIInst();
    }
}
