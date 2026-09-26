package com.netease.epay.sdk.base.hybrid.common;

import android.content.Context;
import android.util.Log;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.HybridHandler;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class FinanceHandler<T extends BaseMsg> implements HybridHandler {
    public static final int ALL = 0;
    public static final int HYBRID = 1;
    public static final int SCHEMA = 2;
    protected String command;
    protected Message<T> message;
    protected String msg;
    protected int protocol = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Protocol {
    }

    protected abstract T buildMsgFromJson(JSONObject jSONObject);

    protected abstract void handleRequest(WebView webView, Context context, T t, JsCallback jsCallback);

    @Override // com.netease.epay.sdk.base.hybrid.HybridHandler
    public final void handle(WebView view, String cmdName, JSONObject data, JsCallback callback) {
        this.msg = data.optString("msg");
        this.command = cmdName;
        this.message = parseMessage(data.toString());
        if (this.message != null) {
            if (!isSupport(this.protocol, this.message.v)) {
                callback.confirm(FinanceRep.createRep(5, null));
            }
            Context context = view != null ? view.getContext() : null;
            if (context != null) {
                handleRequest(view, context, this.message.msg, callback);
                return;
            } else {
                callback.confirm(FinanceRep.createRep(7, null));
                return;
            }
        }
        callback.confirm(FinanceRep.createRep(3, null));
    }

    protected boolean isSupport(int protocol, int protocolVersion) {
        return protocol == 1 && protocolVersion >= 2;
    }

    private Message<T> parseMessage(String params) {
        Message<T> message;
        Exception e;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(params);
            message = new Message<>();
        } catch (Exception e2) {
            message = null;
            e = e2;
        }
        try {
            message.platformId = jSONObject.optString("platformId");
            message.sign = jSONObject.optString("sign");
            message.v = jSONObject.optInt(JsConstant.VERSION);
            message.msg = buildMsgFromJson(jSONObject.optJSONObject("msg"));
        } catch (Exception e3) {
            e = e3;
            Log.e("AbsHandler_setParams", e.getMessage());
            return message;
        }
        return message;
    }

    public void clear() {
        TwoButtonMessageFragment.callback = null;
        this.message = null;
    }

    public FinanceRep createRep(int state, JSONObject obj) {
        return new FinanceRep(state, this.command, this.message.msg == null ? null : this.message.msg.context, obj);
    }
}
