package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.api.WeiboMessage;

/* loaded from: classes.dex */
public class SendMessageToWeiboRequest extends BaseRequest {
    public WeiboMessage message;

    public SendMessageToWeiboRequest() {
    }

    public SendMessageToWeiboRequest(Bundle data) {
        fromBundle(data);
    }

    @Override // com.sina.weibo.sdk.api.share.Base
    public int getType() {
        return 1;
    }

    @Override // com.sina.weibo.sdk.api.share.BaseRequest, com.sina.weibo.sdk.api.share.Base
    public void fromBundle(Bundle data) {
        super.fromBundle(data);
        this.message = new WeiboMessage(data);
    }

    @Override // com.sina.weibo.sdk.api.share.BaseRequest, com.sina.weibo.sdk.api.share.Base
    public void toBundle(Bundle data) {
        super.toBundle(data);
        data.putAll(this.message.toBundle(data));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sina.weibo.sdk.api.share.BaseRequest
    public final boolean check(Context context, WeiboAppManager.WeiboInfo weiboInfo, VersionCheckHandler handler) {
        if (this.message == null || weiboInfo == null || !weiboInfo.isLegal()) {
            return false;
        }
        if (handler == null || handler.checkRequest(context, weiboInfo, this.message)) {
            return this.message.checkArgs();
        }
        return false;
    }
}
