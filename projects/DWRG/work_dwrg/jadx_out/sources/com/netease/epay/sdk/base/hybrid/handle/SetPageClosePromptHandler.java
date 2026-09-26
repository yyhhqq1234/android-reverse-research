package com.netease.epay.sdk.base.hybrid.handle;

import android.content.Context;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.FinanceHandler;
import com.netease.epay.sdk.base.hybrid.msg.SetPageClosePromptMsg;
import com.netease.epay.sdk.base.view.BaseWebView;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SetPageClosePromptHandler extends FinanceHandler<SetPageClosePromptMsg> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public void handleRequest(WebView webView, Context context, SetPageClosePromptMsg setPageClosePromptMsg, JsCallback jsCallback) {
        if (webView != null && (webView instanceof BaseWebView)) {
            ((BaseWebView) webView).setPageClosePrompt(setPageClosePromptMsg.status == 1, setPageClosePromptMsg.title);
        }
        jsCallback.confirm(createRep(0, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public SetPageClosePromptMsg buildMsgFromJson(JSONObject jsonObject) {
        return new SetPageClosePromptMsg(jsonObject);
    }
}
