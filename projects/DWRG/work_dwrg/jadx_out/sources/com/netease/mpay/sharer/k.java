package com.netease.mpay.sharer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.mpay.Cdo;
import com.netease.mpay.b;
import com.netease.mpay.b.ac;
import com.netease.mpay.widget.RIdentifier;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.SendMultiMessageToWeiboRequest;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.utils.Utility;
import java.net.URLEncoder;

/* loaded from: classes.dex */
public class k extends e {
    private static String c;
    protected Activity a;
    protected IWeiboShareAPI b;

    /* loaded from: classes.dex */
    protected class a {
        private WeiboMultiMessage b = new WeiboMultiMessage();

        public a(ShareContent shareContent) {
            if (shareContent.contentType == 2) {
                b(shareContent.webUrl, String.format(k.this.a.getResources().getString(RIdentifier.h.dK), shareContent.title, shareContent.desc));
            } else {
                b(shareContent.text);
            }
            if (shareContent.image != null) {
                b(shareContent.image);
            }
            b();
            if (shareContent.webUrl != null) {
                a(shareContent.webUrl);
            }
            this.b.mediaObject.identify = Utility.generateGUID();
            a(shareContent.title, shareContent.desc);
            a(shareContent.thumb);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private void b() {
            if (this.b.mediaObject != null) {
                return;
            }
            if (this.b.imageObject != null) {
                this.b.mediaObject = this.b.imageObject;
            } else {
                if (this.b.textObject == null) {
                    throw new RuntimeException("no sutiable object");
                }
                this.b.mediaObject = this.b.textObject;
            }
        }

        public a a(Bitmap bitmap) {
            if (bitmap != null) {
                this.b.mediaObject.setThumbImage(f.b(bitmap, 150));
            }
            return this;
        }

        public a a(String str) {
            this.b.mediaObject.actionUrl = str;
            return this;
        }

        public a a(String str, String str2) {
            if (str == null || str2 == null) {
                throw new RuntimeException("title and msg are required");
            }
            this.b.mediaObject.title = str;
            this.b.mediaObject.description = str2;
            return this;
        }

        public WeiboMultiMessage a() {
            return this.b;
        }

        public a b(Bitmap bitmap) {
            ImageObject imageObject = new ImageObject();
            imageObject.setImageObject(bitmap);
            this.b.imageObject = imageObject;
            return this;
        }

        public a b(String str) {
            TextObject textObject = new TextObject();
            textObject.text = str;
            this.b.textObject = textObject;
            return this;
        }

        public a b(String str, String str2) {
            WebpageObject webpageObject = new WebpageObject();
            webpageObject.actionUrl = str;
            webpageObject.defaultText = str2;
            this.b.mediaObject = webpageObject;
            return this;
        }
    }

    public k(Activity activity) {
        this.a = activity;
        if (a(activity)) {
            this.b = WeiboShareSDK.createWeiboAPI(activity, c, false);
            this.b.registerApp();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(String str) {
        c = str;
    }

    public static boolean a(Context context) {
        if (c == null || !f.a(context, "com.sina.weibo")) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("com.sina.weibo.sdk.constant.WBConstants");
            return ((String) cls.getField("WEIBO_SDK_VERSION_CODE").get(cls)) == WBConstants.WEIBO_SDK_VERSION_CODE;
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            return false;
        }
    }

    private String b(String str) {
        return (str == null ? Const.RESP_CONTENT_SPIT2 : str + Const.RESP_CONTENT_SPIT2) + System.currentTimeMillis();
    }

    @Override // com.netease.mpay.sharer.e
    public boolean a(ShareContent shareContent, int i) {
        if (a(this.a) && this.b.isWeiboAppInstalled() && this.b.isWeiboAppSupportAPI()) {
            SendMultiMessageToWeiboRequest sendMultiMessageToWeiboRequest = new SendMultiMessageToWeiboRequest();
            sendMultiMessageToWeiboRequest.transaction = b("" + shareContent.contentType);
            sendMultiMessageToWeiboRequest.multiMessage = new a(shareContent).a();
            return this.b.sendRequest(this.a, sendMultiMessageToWeiboRequest);
        }
        if (!(shareContent instanceof UrlShareContent)) {
            return false;
        }
        com.netease.mpay.b.a(this.a, b.a.ShareWebActivity, new ac("http://service.weibo.com/share/share.php?c=nie&content=gb2312&source=nie&title=" + URLEncoder.encode(String.format(this.a.getResources().getString(RIdentifier.h.dK), shareContent.title, shareContent.desc)) + "&url=" + URLEncoder.encode(shareContent.webUrl) + "&pic=" + URLEncoder.encode(((UrlShareContent) shareContent).a)), null, null);
        return true;
    }
}
