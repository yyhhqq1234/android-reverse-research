package com.netease.epay.sdk.base.hybrid.handle;

import android.content.Context;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.FinanceHandler;
import com.netease.epay.sdk.base.hybrid.msg.ShowToastMsg;
import com.netease.epay.sdk.base.util.ToastUtil;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShowToastHandler extends FinanceHandler<ShowToastMsg> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public void handleRequest(WebView view, Context context, ShowToastMsg setClipboardMsg, JsCallback jsCallback) {
        ToastUtil.show(context, setClipboardMsg.title);
        jsCallback.confirm(createRep(0, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    public ShowToastMsg buildMsgFromJson(JSONObject jsonObject) {
        return new ShowToastMsg(jsonObject);
    }
}
