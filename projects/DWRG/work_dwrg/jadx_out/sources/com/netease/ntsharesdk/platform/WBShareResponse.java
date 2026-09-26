package com.netease.ntsharesdk.platform;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareMgr;
import com.sina.weibo.sdk.api.share.BaseResponse;
import com.sina.weibo.sdk.api.share.IWeiboHandler;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;

/* loaded from: classes.dex */
public class WBShareResponse extends Activity implements IWeiboHandler.Response {
    private IWeiboShareAPI api;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Log.d("ntsharesdk", "in weibo oncreate");
        super.onCreate(savedInstanceState);
        if (ShareMgr.getInst().getPlatform(Platform.WEIBO) != null) {
            String app_id = ShareMgr.getInst().getPlatform(Platform.WEIBO).getConfig("app_id");
            this.api = WeiboShareSDK.createWeiboAPI(this, app_id);
            this.api.handleWeiboResponse(getIntent(), this);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        Log.v("ntsharesdk", "onNewIntent in wbshare");
        super.onNewIntent(intent);
        if (this.api != null) {
            this.api.handleWeiboResponse(intent, this);
        }
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboHandler.Response
    public void onResponse(BaseResponse arg0) {
        Log.v("ntsharesdk", "onResponse in wbshare");
        if (ShareMgr.getInst().getPlatform(Platform.WEIBO) != null) {
            ShareMgr.getInst().getPlatform(Platform.WEIBO).handleResponse(arg0);
        }
        finish();
    }
}
