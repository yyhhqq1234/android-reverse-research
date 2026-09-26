package com.netease.epay.sdk.base.hybrid.handle;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.FinanceHandler;
import com.netease.epay.sdk.base.hybrid.msg.OpenEpayAppMsg;
import com.netease.epay.sdk.base.util.AppUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OpenEpayAppHandler extends FinanceHandler<OpenEpayAppMsg> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public void handleRequest(WebView view, Context context, OpenEpayAppMsg openEpayAppMsg, JsCallback jsCallback) {
        if (AppUtils.isPackageInstalled(BaseConstants.EPAY_APP_PKG_NAME, context) && AppUtils.getAppVersionCode(BaseConstants.EPAY_APP_PKG_NAME, context) >= 43 && !TextUtils.isEmpty(openEpayAppMsg.routeURL)) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(openEpayAppMsg.routeURL)));
        } else if (!TextUtils.isEmpty(openEpayAppMsg.downloadURL)) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(openEpayAppMsg.downloadURL)));
        }
        jsCallback.confirm(createRep(0, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public OpenEpayAppMsg buildMsgFromJson(JSONObject jsonObject) {
        return new OpenEpayAppMsg(jsonObject);
    }
}
