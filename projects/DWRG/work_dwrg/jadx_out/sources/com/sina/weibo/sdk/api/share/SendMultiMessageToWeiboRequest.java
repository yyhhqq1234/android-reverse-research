package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.api.WeiboMultiMessage;

/* loaded from: classes.dex */
public class SendMultiMessageToWeiboRequest extends BaseRequest {
    public WeiboMultiMessage multiMessage;

    public SendMultiMessageToWeiboRequest() {
    }

    public SendMultiMessageToWeiboRequest(Bundle data) {
        fromBundle(data);
    }

    @Override // com.sina.weibo.sdk.api.share.Base
    public int getType() {
        return 1;
    }

    @Override // com.sina.weibo.sdk.api.share.BaseRequest, com.sina.weibo.sdk.api.share.Base
    public void fromBundle(Bundle data) {
        super.fromBundle(data);
        this.multiMessage = new WeiboMultiMessage(data);
    }

    @Override // com.sina.weibo.sdk.api.share.BaseRequest, com.sina.weibo.sdk.api.share.Base
    public void toBundle(Bundle data) {
        super.toBundle(data);
        data.putAll(this.multiMessage.toBundle(data));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sina.weibo.sdk.api.share.BaseRequest
    public final boolean check(Context context, WeiboAppManager.WeiboInfo weiboInfo, VersionCheckHandler handler) {
        if (this.multiMessage == null || weiboInfo == null || !weiboInfo.isLegal()) {
            return false;
        }
        if (handler == null || handler.checkRequest(context, weiboInfo, this.multiMessage)) {
            return this.multiMessage.checkArgs();
        }
        return false;
    }
}
