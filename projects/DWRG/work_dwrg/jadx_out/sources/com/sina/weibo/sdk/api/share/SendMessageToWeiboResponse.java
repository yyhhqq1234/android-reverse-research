package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes.dex */
public class SendMessageToWeiboResponse extends BaseResponse {
    public SendMessageToWeiboResponse() {
    }

    public SendMessageToWeiboResponse(Bundle data) {
        fromBundle(data);
    }

    @Override // com.sina.weibo.sdk.api.share.Base
    public int getType() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sina.weibo.sdk.api.share.BaseResponse
    public final boolean check(Context context, VersionCheckHandler handler) {
        return true;
    }
}
