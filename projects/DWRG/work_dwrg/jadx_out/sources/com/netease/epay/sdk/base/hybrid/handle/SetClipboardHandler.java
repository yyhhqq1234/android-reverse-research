package com.netease.epay.sdk.base.hybrid.handle;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.FinanceHandler;
import com.netease.epay.sdk.base.hybrid.msg.SetClipboardMsg;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SetClipboardHandler extends FinanceHandler<SetClipboardMsg> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public void handleRequest(WebView view, Context context, SetClipboardMsg setClipboardMsg, JsCallback jsCallback) {
        ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Clipboard", setClipboardMsg.data));
        jsCallback.confirm(createRep(0, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public SetClipboardMsg buildMsgFromJson(JSONObject jsonObject) {
        return new SetClipboardMsg(jsonObject);
    }
}
