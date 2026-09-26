package com.netease.ntsharesdk.platform;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareArgs;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;

/* loaded from: classes.dex */
public class QQ extends Platform {
    private Tencent api;
    IUiListener qqShareListener;

    public QQ(Context ctx) {
        super(ctx);
        this.qqShareListener = new IUiListener() { // from class: com.netease.ntsharesdk.platform.QQ.1
            @Override // com.tencent.tauth.IUiListener
            public void onCancel() {
                ShareArgs args = new ShareArgs();
                args.setFailMsg("onCancel");
                QQ.this.shareEndListener.onShareEnd(QQ.this.getPlatformName(), 1, args);
            }

            @Override // com.tencent.tauth.IUiListener
            public void onComplete(Object response) {
                QQ.dLog("qq share ok");
                QQ.this.shareEndListener.onShareEnd(QQ.this.getPlatformName(), 0, null);
            }

            @Override // com.tencent.tauth.IUiListener
            public void onError(UiError e) {
                ShareArgs args = new ShareArgs();
                args.setFailMsg(e.errorMessage);
                QQ.dLog("error:" + e.errorMessage);
                QQ.this.shareEndListener.onShareEnd(QQ.this.getPlatformName(), 2, args);
            }
        };
    }

    @Override // com.netease.ntsharesdk.Platform
    protected Object genMessage(ShareArgs args) {
        Bundle bundle = new Bundle();
        bundle.putString("title", args.getValue("title").toString());
        bundle.putString("summary", args.getValue(ShareArgs.TEXT).toString());
        if (!TextUtils.isEmpty((String) args.getValue("url"))) {
            bundle.putString("targetUrl", args.getValue("url").toString());
        }
        if (args.hasImage().booleanValue()) {
            if (args.getValue(ShareArgs.IMG_PATH) != null) {
                dLog("args.getValue(ShareArgs.IMG_PATH) != null");
                bundle.putString("imageLocalUrl", args.getValue(ShareArgs.IMG_PATH).toString());
            } else if (args.getValue(ShareArgs.IMG_URL) != null) {
                dLog("args.getValue(ShareArgs.IMG_URL) != null");
                bundle.putString("imageUrl", args.getValue(ShareArgs.IMG_URL).toString());
            }
        }
        if (TextUtils.isEmpty((String) args.getValue("url"))) {
            dLog("QQShare.SHARE_TO_QQ_TYPE_IMAGE");
            bundle.putInt("req_type", 5);
        } else {
            dLog("QQShare.SHARE_TO_QQ_TYPE_DEFAULT");
            bundle.putInt("req_type", 1);
        }
        if (args.getValue(ShareArgs.TO_BLOG) != null && args.getValue(ShareArgs.TO_BLOG).toString().length() > 0) {
            dLog("args.getValue(ShareArgs.TO_BLOG) is not empty");
            int mExtarFlag = 0 | 1;
            bundle.putInt("cflag", mExtarFlag);
        }
        return bundle;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void share(ShareArgs args, Activity act) {
        if (act == null) {
            args.setFailMsg("Activity null!");
            dLog("Activity null!");
            this.shareEndListener.onShareEnd(getPlatformName(), 2, args);
        } else if (!checkArgs(args).booleanValue()) {
            dLog("checkArgs(args) false");
            this.shareEndListener.onShareEnd(getPlatformName(), 2, args);
        } else {
            Bundle bundle = (Bundle) genMessage(args);
            this.api.shareToQQ(act, bundle, this.qqShareListener);
        }
    }

    @Override // com.netease.ntsharesdk.Platform
    public void share(ShareArgs args) {
        share(args, null);
    }

    @Override // com.netease.ntsharesdk.Platform
    public Boolean checkArgs(ShareArgs args) {
        if ("".length() <= 0) {
            return true;
        }
        dLog("");
        args.setFailMsg("");
        return false;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleIntent(Intent intent) {
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleActivityResult(int requestCode, int resultCode, Intent data) {
        dLog("QQ handleActivityResult");
        super.handleActivityResult(requestCode, resultCode, data);
        if (requestCode == 10103) {
            Tencent.onActivityResultData(requestCode, resultCode, data, this.qqShareListener);
        }
    }

    @Override // com.netease.ntsharesdk.Platform
    protected String getPlatformName() {
        return "QQ";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.ntsharesdk.Platform
    public void initSdk() {
        String key = getConfig("app_id");
        this.api = Tencent.createInstance(key, this.myCtx);
    }

    @Override // com.netease.ntsharesdk.Platform
    public Object getAPIInst() {
        return this.api;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleResponse(Object arg0) {
    }

    @Override // com.netease.ntsharesdk.Platform
    public void updateApi(String key) {
        this.api = Tencent.createInstance(key, this.myCtx);
    }
}
