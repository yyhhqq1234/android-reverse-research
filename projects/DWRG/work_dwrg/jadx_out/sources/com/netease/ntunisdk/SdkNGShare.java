package com.netease.ntunisdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.netease.mpay.sharer.ShareChannel;
import com.netease.ntsharesdk.OnShareEndListener;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareArgs;
import com.netease.ntsharesdk.ShareMgr;
import com.netease.ntunisdk.base.OnFinishInitListener;
import com.netease.ntunisdk.base.OrderInfo;
import com.netease.ntunisdk.base.SdkBase;
import com.netease.ntunisdk.base.SdkMgr;
import com.netease.ntunisdk.base.ShareInfo;
import com.netease.ntunisdk.base.UniSdkUtils;

/* loaded from: classes.dex */
public class SdkNGShare extends SdkBase {
    private static final String TAG = "UniSDK ngshare";

    public SdkNGShare(Context ctx) {
        super(ctx);
        setPropInt("INNER_MODE_SECOND_CHANNEL", 1);
    }

    public void init(OnFinishInitListener initListner) {
        UniSdkUtils.d(TAG, "init...");
        setPropInt("INNER_MODE_NO_PAY", 1);
        setPropInt("FEATURE_HAS_SHARE", 1);
        ShareMgr.getInst().setContext(this.myCtx);
        ShareMgr.getInst().setShareEndListener(new OnShareEndListener() { // from class: com.netease.ntunisdk.SdkNGShare.1
            @Override // com.netease.ntsharesdk.OnShareEndListener
            public void onShareEnd(String pf, int result, ShareArgs args) {
                Object[] objArr = new Object[3];
                objArr[0] = pf;
                objArr[1] = Integer.valueOf(result);
                objArr[2] = args == null ? "" : args.getFailMsg();
                UniSdkUtils.d(SdkNGShare.TAG, String.format("pf:%s,result:%s, failmsg:%s", objArr));
                SdkMgr.getInst().setPropStr("CHANNEL_ID", pf);
                if (args != null && args.getFailMsg() != null) {
                    SdkMgr.getInst().setPropStr("NT_CALLBACK_MESSAGE", args.getFailMsg());
                }
                if (result == 0) {
                    SdkNGShare.this.shareFinished(true);
                } else {
                    SdkNGShare.this.shareFinished(false);
                }
            }
        });
        initListner.finishInit(0);
    }

    public void login() {
        setPropStr("UIN", "NGSshareUid");
        setPropStr("SESSION", "NGSshareSession");
        setPropInt("LOGIN_STAT", 1);
        loginDone(0);
    }

    public String getLoginSession() {
        return hasLogin() ? getPropStr("SESSION") : "not_login";
    }

    public String getLoginUid() {
        return hasLogin() ? getPropStr("UIN") : "";
    }

    public void checkOrder(OrderInfo order) {
    }

    public void logout() {
    }

    public void openManager() {
    }

    public String getChannel() {
        return getChannelSts();
    }

    public static String getChannelSts() {
        return "ngshare";
    }

    public void upLoadUserInfo() {
    }

    public void sdkOnActivityResult(int requestCode, int resultCode, Intent data) {
        UniSdkUtils.d(TAG, "sdkOnActivityResult...");
        ShareMgr.getInst().handleActivityResult(requestCode, resultCode, data);
    }

    public boolean checkArgs(ShareInfo shareInfo) {
        UniSdkUtils.d(TAG, "checkArgs:" + shareInfo.toString());
        String platform = Platform.OTHER;
        if (101 == shareInfo.getShareChannel() || 102 == shareInfo.getShareChannel() || 118 == shareInfo.getShareChannel()) {
            platform = Platform.WEIXIN;
        } else if (105 == shareInfo.getShareChannel() || 106 == shareInfo.getShareChannel()) {
            platform = "QQ";
        } else if (103 == shareInfo.getShareChannel() || 104 == shareInfo.getShareChannel()) {
            platform = Platform.YIXIN;
        } else if (100 == shareInfo.getShareChannel() || 117 == shareInfo.getShareChannel()) {
            platform = Platform.WEIBO;
        }
        ShareArgs args = genShareArgs(shareInfo);
        Platform pf = ShareMgr.getInst().getPlatform(platform);
        if (pf != null) {
            boolean res = pf.checkArgs(args).booleanValue();
            shareInfo.setFailMsg(args.getFailMsg());
            return res;
        }
        shareInfo.setFailMsg("unsupport this platfrom");
        return false;
    }

    public void share(ShareInfo shareInfo) {
        UniSdkUtils.d(TAG, String.format("scope:%s, shareChannle:%s, title:%s, text:%s, comment:%s, imgPath:%s, url:%s, bitmap:%s, shareThumb:%s, type:%s", shareInfo.getScope(), Integer.valueOf(shareInfo.getShareChannel()), shareInfo.getTitle(), shareInfo.getText(), shareInfo.getDesc(), shareInfo.getImage(), shareInfo.getLink(), shareInfo.getShareBitmap(), shareInfo.getShareThumb(), shareInfo.getType()));
        String platform = Platform.OTHER;
        if (101 == shareInfo.getShareChannel() || 102 == shareInfo.getShareChannel() || 118 == shareInfo.getShareChannel()) {
            platform = Platform.WEIXIN;
        } else if (105 == shareInfo.getShareChannel() || 106 == shareInfo.getShareChannel()) {
            platform = "QQ";
        } else if (103 == shareInfo.getShareChannel() || 104 == shareInfo.getShareChannel()) {
            platform = Platform.YIXIN;
        } else if (100 == shareInfo.getShareChannel() || 117 == shareInfo.getShareChannel()) {
            platform = Platform.WEIBO;
        }
        ShareArgs args = genShareArgs(shareInfo);
        ShareMgr.getInst().share(args, platform, (Activity) this.myCtx);
    }

    private ShareArgs genShareArgs(ShareInfo shareInfo) {
        ShareArgs args = new ShareArgs();
        args.setValue("title", shareInfo.getTitle());
        args.setValue(ShareArgs.TEXT, shareInfo.getText());
        if (!TextUtils.isEmpty(shareInfo.getDesc())) {
            args.setValue(ShareArgs.COMMENT, shareInfo.getDesc());
        }
        if (!TextUtils.isEmpty(shareInfo.getImage())) {
            UniSdkUtils.d(TAG, "!TextUtils.isEmpty(shareInfo.getImage())");
            if (shareInfo.getImage().startsWith("http")) {
                args.setValue(ShareArgs.IMG_URL, shareInfo.getImage());
            } else {
                args.setValue(ShareArgs.IMG_PATH, shareInfo.getImage());
            }
        }
        if (!TextUtils.isEmpty(shareInfo.getLink())) {
            UniSdkUtils.d(TAG, "!TextUtils.isEmpty(shareInfo.getLink())");
            args.setValue("url", shareInfo.getLink());
        }
        if (102 == shareInfo.getShareChannel() || 104 == shareInfo.getShareChannel() || 106 == shareInfo.getShareChannel()) {
            args.setValue(ShareArgs.TO_BLOG, "1");
        }
        if (117 == shareInfo.getShareChannel()) {
            if (shareInfo.isShowShareDialog()) {
                args.setValue(ShareArgs.COMMENT, "show");
            } else {
                args.setValue(ShareArgs.COMMENT, null);
            }
            args.setValue("title", shareInfo.getToUser());
            args.setValue(ShareArgs.TO_BLOG, "2");
        }
        if (118 == shareInfo.getShareChannel()) {
            args.setValue("title", shareInfo.getToUser());
            args.setValue(ShareArgs.TO_BLOG, "2");
        }
        if (shareInfo.getShareThumb() != null) {
            UniSdkUtils.d(TAG, "null != shareInfo.getShareThumb()");
            args.setValue(ShareArgs.THUMB_DATA, shareInfo.getShareThumb());
        }
        if (shareInfo.getShareBitmap() != null) {
            UniSdkUtils.d(TAG, "null != shareInfo.getShareBitmap()");
            args.setValue(ShareArgs.IMG_DATA, shareInfo.getShareBitmap());
        }
        return args;
    }

    public void updateApi(String key, String platform) {
        UniSdkUtils.d(TAG, "call updateApi key:" + key + ",platform:" + platform);
        String pf = platform;
        if (Integer.toString(101).equals(platform) || Integer.toString(102).equals(platform) || Integer.toString(118).equals(platform)) {
            pf = Platform.WEIXIN;
        } else if (Integer.toString(103).equals(platform) || Integer.toString(ShareChannel.SHARE_TYPE_YIXIN_TIMELINE).equals(platform)) {
            pf = Platform.YIXIN;
        } else if (Integer.toString(ShareChannel.SHARE_TYPE_QQ).equals(platform) || Integer.toString(ShareChannel.SHARE_TYPE_QZONE).equals(platform)) {
            pf = "QQ";
        } else if (Integer.toString(100).equals(platform) || Integer.toString(117).equals(platform)) {
            pf = Platform.WEIBO;
        }
        ShareMgr.getInst().updateApi(key, pf);
    }

    public boolean hasPlatform(String platform) {
        UniSdkUtils.d(TAG, "call hasPlatform platform:" + platform);
        String pf = platform;
        if (Integer.toString(101).equals(platform) || Integer.toString(102).equals(platform) || Integer.toString(118).equals(platform)) {
            pf = Platform.WEIXIN;
        } else if (Integer.toString(103).equals(platform) || Integer.toString(ShareChannel.SHARE_TYPE_YIXIN_TIMELINE).equals(platform)) {
            pf = Platform.YIXIN;
        } else if (Integer.toString(ShareChannel.SHARE_TYPE_QQ).equals(platform) || Integer.toString(ShareChannel.SHARE_TYPE_QZONE).equals(platform)) {
            pf = "QQ";
        } else if (Integer.toString(100).equals(platform) || Integer.toString(117).equals(platform)) {
            pf = Platform.WEIBO;
        }
        return ShareMgr.getInst().hasPlatform(pf).booleanValue();
    }

    public String getSDKVersion() {
        return Platform.Version;
    }

    protected String getUniSDKVersion() {
        return Platform.Version;
    }
}
