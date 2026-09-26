package com.netease.ntsharesdk.platform;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareMgr;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class WXEntry extends Activity implements IWXAPIEventHandler {
    private IWXAPI api;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String app_id = readConfig();
        this.api = WXAPIFactory.createWXAPI(this, app_id, false);
        this.api.registerApp(app_id);
        this.api.handleIntent(getIntent(), this);
    }

    private String readConfig() {
        String jsonStr;
        try {
            InputStream is = getAssets().open("ntshare_data", 3);
            int index = is.available();
            byte[] data = new byte[index];
            is.read(data);
            jsonStr = new String(data, "UTF-8");
        } catch (IOException e) {
            e = e;
        } catch (JSONException e2) {
            e = e2;
        }
        try {
            Platform.dLog("ntshare_data json:" + jsonStr);
            JSONTokener jsonParser = new JSONTokener(jsonStr);
            JSONObject conf = (JSONObject) jsonParser.nextValue();
            String appId = ((JSONObject) conf.get(Platform.WEIXIN)).optString("app_id");
            Platform.dLog("read ntshare_data weixin appid :" + appId);
            return appId;
        } catch (IOException e3) {
            e = e3;
            Platform.dLog("read ntshare_data error :" + e.getMessage());
            return "";
        } catch (JSONException e4) {
            e = e4;
            Platform.dLog("read ntshare_data error :" + e.getMessage());
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

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq arg0) {
        Log.v("ntsharesdk", "onReq");
        Platform pf = ShareMgr.getInst().getPlatform(Platform.WEIXIN);
        if (pf != null) {
            pf.handleRequest(arg0);
        }
        finish();
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp resp) {
        Log.v("ntsharesdk", "onResp");
        Platform pf = ShareMgr.getInst().getPlatform(Platform.WEIXIN);
        if (pf != null) {
            pf.handleResponse(resp);
        }
        finish();
    }
}
