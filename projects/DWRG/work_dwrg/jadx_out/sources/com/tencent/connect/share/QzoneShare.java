package com.tencent.connect.share;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.netease.cloud.nos.android.constants.Code;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.open.TDialog;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.c;
import com.tencent.open.utils.g;
import com.tencent.open.utils.i;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.util.ArrayList;

/* compiled from: ProGuard */
/* loaded from: classes.dex */
public class QzoneShare extends BaseApi {
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final String SHARE_TO_QZONE_EXTMAP = "extMap";
    public static final String SHARE_TO_QZONE_KEY_TYPE = "req_type";
    public static final int SHARE_TO_QZONE_TYPE_APP = 6;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE = 5;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE_TEXT = 1;
    public static final int SHARE_TO_QZONE_TYPE_NO_TYPE = 0;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    public String mViaShareQzoneType;

    public QzoneShare(Context context, QQToken qQToken) {
        super(qQToken);
        this.mViaShareQzoneType = "";
        this.c = true;
        this.d = false;
        this.e = false;
        this.f = false;
    }

    public void shareToQzone(final Activity activity, final Bundle bundle, final IUiListener iUiListener) {
        String str;
        String str2;
        f.c("openSDK_LOG.QzoneShare", "shareToQzone() -- start");
        if (bundle == null) {
            iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_NULL_ERROR, null));
            f.e("openSDK_LOG.QzoneShare", "shareToQzone() params is null");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_NULL_ERROR);
            return;
        }
        String string = bundle.getString("title");
        String string2 = bundle.getString("summary");
        String string3 = bundle.getString("targetUrl");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("imageUrl");
        String a = i.a(activity);
        if (a == null) {
            a = bundle.getString("appName");
        } else if (a.length() > 20) {
            a = a.substring(0, 20) + "...";
        }
        int i = bundle.getInt("req_type");
        switch (i) {
            case 1:
                this.mViaShareQzoneType = "1";
                break;
            case 2:
            case 3:
            case 4:
            default:
                this.mViaShareQzoneType = "1";
                break;
            case 5:
                this.mViaShareQzoneType = "2";
                break;
            case 6:
                this.mViaShareQzoneType = "4";
                break;
        }
        switch (i) {
            case 1:
                this.c = true;
                this.d = false;
                this.e = true;
                this.f = false;
                str = string;
                str2 = string3;
                break;
            case 2:
            case 3:
            case 4:
            default:
                if (i.e(string) && i.e(string2)) {
                    if (stringArrayList != null && stringArrayList.size() != 0) {
                        this.c = false;
                    } else {
                        string = "来自" + a + "的分享";
                        this.c = true;
                    }
                } else {
                    this.c = true;
                }
                this.d = false;
                this.e = true;
                this.f = false;
                str = string;
                str2 = string3;
                break;
            case 5:
                iUiListener.onError(new UiError(-5, Constants.MSG_SHARE_TYPE_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() error--end请选择支持的分享类型");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() 请选择支持的分享类型");
                return;
            case 6:
                if (i.g(activity, "5.0.0")) {
                    iUiListener.onError(new UiError(-15, Constants.MSG_PARAM_APPSHARE_TOO_LOW, null));
                    f.e("openSDK_LOG.QzoneShare", "-->shareToQzone, app share is not support below qq5.0.");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone, app share is not support below qq5.0.");
                    return;
                } else {
                    String format = String.format("http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1", this.b.getAppId(), "mqq");
                    bundle.putString("targetUrl", format);
                    str = string;
                    str2 = format;
                    break;
                }
        }
        if (!i.b() && i.g(activity, "4.5.0")) {
            iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_NOSD_ERROR, null));
            f.e("openSDK_LOG.QzoneShare", "shareToQzone() sdcard is null--end");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_NOSD_ERROR);
            return;
        }
        if (this.c) {
            if (TextUtils.isEmpty(str2)) {
                iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_TARGETURL_NULL_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() targetUrl null error--end");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_TARGETURL_NULL_ERROR);
                return;
            } else if (!i.g(str2)) {
                iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_TARGETURL_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() targetUrl error--end");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_TARGETURL_ERROR);
                return;
            }
        }
        if (this.d) {
            bundle.putString("title", "");
            bundle.putString("summary", "");
        } else if (this.e && i.e(str)) {
            iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_TITLE_NULL_ERROR, null));
            f.e("openSDK_LOG.QzoneShare", "shareToQzone() title is null--end");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() title is null");
            return;
        } else {
            if (!i.e(str) && str.length() > 200) {
                bundle.putString("title", i.a(str, 200, (String) null, (String) null));
            }
            if (!i.e(string2) && string2.length() > 600) {
                bundle.putString("summary", i.a(string2, Code.UPLOADING_CANCEL, (String) null, (String) null));
            }
        }
        if (!TextUtils.isEmpty(a)) {
            bundle.putString("appName", a);
        }
        if (stringArrayList == null || (stringArrayList != null && stringArrayList.size() == 0)) {
            if (this.f) {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() imageUrl is null -- end");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() imageUrl is null");
                return;
            }
        } else {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < stringArrayList.size()) {
                    String str3 = stringArrayList.get(i3);
                    if (!i.g(str3) && !i.h(str3)) {
                        stringArrayList.remove(i3);
                        i3--;
                    }
                    i2 = i3 + 1;
                } else {
                    if (stringArrayList.size() == 0) {
                        iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR, null));
                        f.e("openSDK_LOG.QzoneShare", "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end");
                        d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() 非法的图片地址!");
                        return;
                    }
                    bundle.putStringArrayList("imageUrl", stringArrayList);
                }
            }
        }
        if (!i.g(activity, "4.6.0")) {
            f.c("openSDK_LOG.QzoneShare", "shareToQzone() qqver greater than 4.6.0");
            a.a(activity, stringArrayList, new c() { // from class: com.tencent.connect.share.QzoneShare.1
                @Override // com.tencent.open.utils.c
                public void a(int i4, String str4) {
                    iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR, null));
                }

                @Override // com.tencent.open.utils.c
                public void a(int i4, ArrayList<String> arrayList) {
                    if (i4 == 0) {
                        bundle.putStringArrayList("imageUrl", arrayList);
                    }
                    QzoneShare.this.b(activity, bundle, iUiListener);
                }
            });
        } else if (g.c(activity, "4.2.0") >= 0 && g.c(activity, "4.6.0") < 0) {
            f.d("openSDK_LOG.QzoneShare", "shareToQzone() qqver between 4.2.0 and 4.6.0, will use qqshare");
            QQShare qQShare = new QQShare(activity, this.b);
            if (stringArrayList != null && stringArrayList.size() > 0) {
                String str4 = stringArrayList.get(0);
                if (i == 5 && !i.h(str4)) {
                    iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_MUST_BE_LOCAL, null));
                    f.e("openSDK_LOG.QzoneShare", "shareToQzone()手Q版本过低，纯图分享不支持网路图片");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone()手Q版本过低，纯图分享不支持网路图片");
                    return;
                }
                bundle.putString("imageLocalUrl", str4);
            }
            if (!i.g(activity, "4.5.0")) {
                bundle.putInt("cflag", 1);
            }
            qQShare.shareToQQ(activity, bundle, iUiListener);
        } else {
            f.d("openSDK_LOG.QzoneShare", "shareToQzone() qqver below 4.2.0, will show download dialog");
            new TDialog(activity, "", a(""), null, this.b).show();
        }
        f.c("openSDK_LOG.QzoneShare", "shareToQzone() --end");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0387  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.app.Activity r20, android.os.Bundle r21, com.tencent.tauth.IUiListener r22) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QzoneShare.b(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }

    @Override // com.tencent.connect.common.BaseApi
    public void releaseResource() {
    }
}
