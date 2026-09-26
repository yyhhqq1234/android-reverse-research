package com.netease.dwrg.wxapi;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.netease.mpay.auth.WeixinHandlerActivity;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareMgr;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class WXEntryActivity extends WeixinHandlerActivity {
    private IWXAPI api;

    @Override // com.netease.mpay.auth.WeixinHandlerActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String readConfig = readConfig();
        this.api = WXAPIFactory.createWXAPI(this, readConfig, false);
        this.api.registerApp(readConfig);
        super.onCreate(bundle);
    }

    private String readConfig() {
        try {
            InputStream open = getAssets().open("ntshare_data", 3);
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            String str = new String(bArr, "UTF-8");
            Platform.dLog("ntshare_data json:" + str);
            String optString = ((JSONObject) ((JSONObject) new JSONTokener(str).nextValue()).get(Platform.WEIXIN)).optString("app_id");
            Platform.dLog("read ntshare_data weixin appid :" + optString);
            return optString;
        } catch (IOException e) {
            Platform.dLog("read ntshare_data error :" + e.getMessage());
            return "";
        } catch (JSONException e2) {
            Platform.dLog("read ntshare_data error :" + e2.getMessage());
            return "";
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        Log.v("ntsharesdk", "onNewIntent");
        super.onNewIntent(intent);
        setIntent(intent);
        this.api.handleIntent(intent, this);
    }

    @Override // com.netease.mpay.auth.WeixinHandlerActivity, com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
        Log.v("ntsharesdk", "onReq");
        Platform platform = ShareMgr.getInst().getPlatform(Platform.WEIXIN);
        if (platform != null) {
            platform.handleRequest(baseReq);
        }
        finish();
    }

    @Override // com.netease.mpay.auth.WeixinHandlerActivity, com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        Log.v("ntsharesdk", "onResp");
        Platform platform = ShareMgr.getInst().getPlatform(Platform.WEIXIN);
        if (platform != null) {
            platform.handleResponse(baseResp);
        }
        super.onResp(baseResp);
    }
}
