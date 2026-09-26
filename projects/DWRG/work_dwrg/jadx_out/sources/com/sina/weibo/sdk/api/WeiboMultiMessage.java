package com.sina.weibo.sdk.api;

import android.os.Bundle;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.utils.LogUtil;

/* loaded from: classes.dex */
public final class WeiboMultiMessage {
    private static final String TAG = "WeiboMultiMessage";
    public ImageObject imageObject;
    public BaseMediaObject mediaObject;
    public TextObject textObject;

    public WeiboMultiMessage() {
    }

    public WeiboMultiMessage(Bundle data) {
        toBundle(data);
    }

    public Bundle toBundle(Bundle data) {
        if (this.textObject != null) {
            data.putParcelable(WBConstants.Msg.TEXT, this.textObject);
            data.putString(WBConstants.Msg.TEXT_EXTRA, this.textObject.toExtraMediaString());
        }
        if (this.imageObject != null) {
            data.putParcelable(WBConstants.Msg.IMAGE, this.imageObject);
            data.putString(WBConstants.Msg.IMAGE_EXTRA, this.imageObject.toExtraMediaString());
        }
        if (this.mediaObject != null) {
            data.putParcelable(WBConstants.Msg.MEDIA, this.mediaObject);
            data.putString(WBConstants.Msg.MEDIA_EXTRA, this.mediaObject.toExtraMediaString());
        }
        return data;
    }

    public WeiboMultiMessage toObject(Bundle data) {
        this.textObject = (TextObject) data.getParcelable(WBConstants.Msg.TEXT);
        if (this.textObject != null) {
            this.textObject.toExtraMediaObject(data.getString(WBConstants.Msg.TEXT_EXTRA));
        }
        this.imageObject = (ImageObject) data.getParcelable(WBConstants.Msg.IMAGE);
        if (this.imageObject != null) {
            this.imageObject.toExtraMediaObject(data.getString(WBConstants.Msg.IMAGE_EXTRA));
        }
        this.mediaObject = (BaseMediaObject) data.getParcelable(WBConstants.Msg.MEDIA);
        if (this.mediaObject != null) {
            this.mediaObject.toExtraMediaObject(data.getString(WBConstants.Msg.MEDIA_EXTRA));
        }
        return this;
    }

    public boolean checkArgs() {
        if (this.textObject != null && !this.textObject.checkArgs()) {
            LogUtil.e(TAG, "checkArgs fail, textObject is invalid");
            return false;
        }
        if (this.imageObject != null && !this.imageObject.checkArgs()) {
            LogUtil.e(TAG, "checkArgs fail, imageObject is invalid");
            return false;
        }
        if (this.mediaObject != null && !this.mediaObject.checkArgs()) {
            LogUtil.e(TAG, "checkArgs fail, mediaObject is invalid");
            return false;
        }
        if (this.textObject == null && this.imageObject == null && this.mediaObject == null) {
            LogUtil.e(TAG, "checkArgs fail, textObject and imageObject and mediaObject is null");
            return false;
        }
        return true;
    }
}
