package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.text.TextUtils;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.api.CmdObject;
import com.sina.weibo.sdk.api.VoiceObject;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.utils.LogUtil;

/* loaded from: classes.dex */
public class VersionCheckHandler implements IVersionCheckHandler {
    private static final String TAG = VersionCheckHandler.class.getName();

    @Override // com.sina.weibo.sdk.api.share.IVersionCheckHandler
    public boolean checkRequest(Context context, WeiboAppManager.WeiboInfo weiboInfo, WeiboMessage message) {
        if (weiboInfo == null || !weiboInfo.isLegal()) {
            return false;
        }
        LogUtil.d(TAG, "WeiboMessage WeiboInfo package : " + weiboInfo.getPackageName());
        LogUtil.d(TAG, "WeiboMessage WeiboInfo supportApi : " + weiboInfo.getSupportApi());
        if (weiboInfo.getSupportApi() < 10351 && message.mediaObject != null && (message.mediaObject instanceof VoiceObject)) {
            message.mediaObject = null;
        }
        if (weiboInfo.getSupportApi() < 10352 && message.mediaObject != null && (message.mediaObject instanceof CmdObject)) {
            message.mediaObject = null;
        }
        return true;
    }

    @Override // com.sina.weibo.sdk.api.share.IVersionCheckHandler
    public boolean checkRequest(Context context, WeiboAppManager.WeiboInfo weiboInfo, WeiboMultiMessage message) {
        if (weiboInfo == null || !weiboInfo.isLegal()) {
            return false;
        }
        LogUtil.d(TAG, "WeiboMultiMessage WeiboInfo package : " + weiboInfo.getPackageName());
        LogUtil.d(TAG, "WeiboMultiMessage WeiboInfo supportApi : " + weiboInfo.getSupportApi());
        if (weiboInfo.getSupportApi() < 10351) {
            return false;
        }
        if (weiboInfo.getSupportApi() < 10352 && message.mediaObject != null && (message.mediaObject instanceof CmdObject)) {
            message.mediaObject = null;
        }
        return true;
    }

    @Override // com.sina.weibo.sdk.api.share.IVersionCheckHandler
    public boolean checkResponse(Context context, String weiboPackage, WeiboMessage message) {
        if (TextUtils.isEmpty(weiboPackage)) {
            return false;
        }
        WeiboAppManager.WeiboInfo weiboInfo = WeiboAppManager.getInstance(context).parseWeiboInfoByAsset(weiboPackage);
        return checkRequest(context, weiboInfo, message);
    }

    @Override // com.sina.weibo.sdk.api.share.IVersionCheckHandler
    public boolean checkResponse(Context context, String weiboPackage, WeiboMultiMessage message) {
        if (TextUtils.isEmpty(weiboPackage)) {
            return false;
        }
        WeiboAppManager.WeiboInfo weiboInfo = WeiboAppManager.getInstance(context).parseWeiboInfoByAsset(weiboPackage);
        return checkRequest(context, weiboInfo, message);
    }
}
