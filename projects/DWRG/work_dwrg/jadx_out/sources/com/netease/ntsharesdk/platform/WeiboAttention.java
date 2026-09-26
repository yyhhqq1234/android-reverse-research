package com.netease.ntsharesdk.platform;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.k;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.platform.HttpReqUtil;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.WidgetRequestParam;
import com.sina.weibo.sdk.utils.Utility;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class WeiboAttention {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface AttentionCallback {
        void attentResult(boolean z);
    }

    WeiboAttention() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void attention(Context ctx, boolean viaApi, String key, String token, String uid, AttentionCallback callback) {
        if (viaApi) {
            attentionViaApi(token, uid, callback);
        } else {
            attentionViaView(ctx, key, token, uid, callback);
        }
    }

    private static void attentionViaView(Context ctx, String key, String token, String uid, final AttentionCallback callback) {
        WidgetRequestParam req = new WidgetRequestParam(ctx);
        req.setUrl("http://widget.weibo.com/relationship/followsdk.php");
        req.setSpecifyTitle("��ע");
        req.setAppKey(key);
        req.setAttentionFuid(uid);
        req.setAuthListener(null);
        req.setToken(token);
        req.setWidgetRequestCallback(new WidgetRequestParam.WidgetRequestCallback() { // from class: com.netease.ntsharesdk.platform.WeiboAttention.1
            @Override // com.sina.weibo.sdk.component.WidgetRequestParam.WidgetRequestCallback
            public void onWebViewResult(String url) {
                Bundle b = Utility.parseUri(url);
                String result = b.getString(k.c);
                boolean suc = !TextUtils.isEmpty(result);
                if (suc) {
                    try {
                        long attented = Integer.parseInt(result);
                        suc = 1 == attented;
                    } catch (NumberFormatException var6) {
                        Platform.dLog(new StringBuilder().append(var6).toString());
                        suc = false;
                    }
                }
                if (AttentionCallback.this != null) {
                    AttentionCallback.this.attentResult(suc);
                }
            }
        });
        Bundle data = req.createRequestParamBundle();
        Intent intent = new Intent(ctx, (Class<?>) WeiboSdkBrowser.class);
        intent.putExtras(data);
        ctx.startActivity(intent);
    }

    private static void attentionViaApi(final String token, final String uid, final AttentionCallback callback) {
        List<NameValuePair> nameValuePairs = new LinkedList<>();
        nameValuePairs.add(new NameValuePair() { // from class: com.netease.ntsharesdk.platform.WeiboAttention.2
            @Override // org.apache.http.NameValuePair
            public String getName() {
                return "access_token";
            }

            @Override // org.apache.http.NameValuePair
            public String getValue() {
                return token;
            }
        });
        nameValuePairs.add(new NameValuePair() { // from class: com.netease.ntsharesdk.platform.WeiboAttention.3
            @Override // org.apache.http.NameValuePair
            public String getName() {
                return "uid";
            }

            @Override // org.apache.http.NameValuePair
            public String getValue() {
                return uid;
            }
        });
        HttpReqUtil.wpost("https://api.weibo.com/2/friendships/create.json", nameValuePairs, new HttpReqUtil.WgetDoneCallback() { // from class: com.netease.ntsharesdk.platform.WeiboAttention.4
            @Override // com.netease.ntsharesdk.platform.HttpReqUtil.WgetDoneCallback
            public void ProcessResult(String result) {
                boolean suc = !TextUtils.isEmpty(result);
                if (suc) {
                    try {
                        JSONObject object = new JSONObject(result);
                        Platform.dLog(object.toString());
                    } catch (JSONException e) {
                        Platform.dLog(new StringBuilder().append(e).toString());
                        suc = false;
                    }
                }
                if (AttentionCallback.this != null) {
                    AttentionCallback.this.attentResult(suc);
                }
            }
        });
    }
}
