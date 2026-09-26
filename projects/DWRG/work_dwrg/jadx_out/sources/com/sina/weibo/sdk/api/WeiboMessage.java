package com.sina.weibo.sdk.api;

import android.os.Bundle;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.utils.LogUtil;

/* loaded from: classes.dex */
public final class WeiboMessage {
    public BaseMediaObject mediaObject;

    public WeiboMessage() {
    }

    public WeiboMessage(Bundle data) {
        toBundle(data);
    }

    public Bundle toBundle(Bundle data) {
        if (this.mediaObject != null) {
            data.putParcelable(WBConstants.Msg.MEDIA, this.mediaObject);
            data.putString(WBConstants.Msg.MEDIA_EXTRA, this.mediaObject.toExtraMediaString());
        }
        return data;
    }

    public WeiboMessage toObject(Bundle data) {
        this.mediaObject = (BaseMediaObject) data.getParcelable(WBConstants.Msg.MEDIA);
        if (this.mediaObject != null) {
            this.mediaObject.toExtraMediaObject(data.getString(WBConstants.Msg.MEDIA_EXTRA));
        }
        return this;
    }

    public boolean checkArgs() {
        if (this.mediaObject == null) {
            LogUtil.e("Weibo.WeiboMessage", "checkArgs fail, mediaObject is null");
            return false;
        }
        if (this.mediaObject != null && !this.mediaObject.checkArgs()) {
            LogUtil.e("Weibo.WeiboMessage", "checkArgs fail, mediaObject is invalid");
            return false;
        }
        return true;
    }
}
