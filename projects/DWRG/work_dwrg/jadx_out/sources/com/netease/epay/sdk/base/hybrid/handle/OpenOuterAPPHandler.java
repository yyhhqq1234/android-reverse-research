package com.netease.epay.sdk.base.hybrid.handle;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.FinanceHandler;
import com.netease.epay.sdk.base.hybrid.msg.OpenOuterAPPMsg;
import com.netease.epay.sdk.base.util.AppUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OpenOuterAPPHandler extends FinanceHandler<OpenOuterAPPMsg> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public void handleRequest(WebView view, Context context, OpenOuterAPPMsg openOuterAPPMsg, JsCallback jsCallback) {
        if (AppUtils.isPackageInstalled(openOuterAPPMsg.packageName, context) && !TextUtils.isEmpty(openOuterAPPMsg.openURL)) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(openOuterAPPMsg.openURL)));
        } else if (!TextUtils.isEmpty(openOuterAPPMsg.backupURL)) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(openOuterAPPMsg.backupURL)));
        }
        jsCallback.confirm(createRep(0, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public OpenOuterAPPMsg buildMsgFromJson(JSONObject jsonObject) {
        return new OpenOuterAPPMsg(jsonObject);
    }
}
