package com.netease.mpay.sharer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.mpay.b;
import com.netease.mpay.b.ac;
import im.yixin.sdk.api.IYXAPI;
import im.yixin.sdk.api.SendMessageToYX;
import im.yixin.sdk.api.YXAPIFactory;
import im.yixin.sdk.api.YXImageMessageData;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.api.YXTextMessageData;
import im.yixin.sdk.api.YXWebPageMessageData;
import im.yixin.sdk.util.YixinConstants;
import java.net.URLEncoder;

/* loaded from: classes.dex */
public class m extends e {
    private static String b;
    protected IYXAPI a;
    private Activity c;

    /* loaded from: classes.dex */
    public static class a {
        private YXMessage a = new YXMessage();

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public a(ShareContent shareContent) {
            if (shareContent.contentType == 2) {
                a(shareContent.webUrl);
            } else if (shareContent.contentType == 0) {
                b(shareContent.text);
            } else if (shareContent.contentType == 1) {
                b(shareContent.image);
            }
            a(shareContent.title, shareContent.desc);
            a(shareContent.thumb);
        }

        public a a(Bitmap bitmap) {
            Bitmap b;
            if (bitmap != null && (b = f.b(bitmap, 150)) != null) {
                this.a.thumbData = f.a(b, 32768);
            }
            return this;
        }

        public a a(String str) {
            this.a.messageData = new YXWebPageMessageData(str);
            return this;
        }

        public a a(String str, String str2) {
            if (str == null || str2 == null) {
                throw new RuntimeException("title and msg are required");
            }
            this.a.title = str;
            this.a.description = str2;
            return this;
        }

        public YXMessage a() {
            return this.a;
        }

        public a b(Bitmap bitmap) {
            this.a.messageData = new YXImageMessageData(bitmap);
            return this;
        }

        public a b(String str) {
            this.a.messageData = new YXTextMessageData(str);
            return this;
        }
    }

    public m(Activity activity) {
        this.c = activity;
        if (a(activity)) {
            this.a = YXAPIFactory.createYXAPI(activity, b);
            this.a.registerApp();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(String str) {
        b = str;
    }

    public static boolean a(Context context) {
        if (b == null || !f.a(context, YixinConstants.YIXIN_APP_PACKAGE_NAME)) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("im.yixin.sdk.util.YixinConstants");
            return ((Long) cls.getField("VALUE_SDK_VERSION").get(cls)).longValue() == YixinConstants.VALUE_SDK_VERSION;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private String b(String str) {
        return (str == null ? Const.RESP_CONTENT_SPIT2 : str + Const.RESP_CONTENT_SPIT2) + System.currentTimeMillis();
    }

    @Override // com.netease.mpay.sharer.e
    public boolean a(ShareContent shareContent, int i) {
        if (a(this.c)) {
            SendMessageToYX.Req req = new SendMessageToYX.Req();
            req.transaction = b("" + shareContent.contentType);
            req.message = new a(shareContent).a();
            req.scene = i != 103 ? 1 : 0;
            return this.a.sendRequest(req);
        }
        if (i != 104 || !(shareContent instanceof UrlShareContent)) {
            return false;
        }
        com.netease.mpay.b.a(this.c, b.a.ShareWebActivity, new ac("http://open.yixin.im/share?appkey=yx3ae08a776bf04178a583cb745fb6aa0c&type=webpage&url=" + URLEncoder.encode(shareContent.webUrl) + "&title=" + URLEncoder.encode(shareContent.title) + "&desc=" + URLEncoder.encode(shareContent.desc) + "&pic=" + URLEncoder.encode(((UrlShareContent) shareContent).a)), null, null);
        return true;
    }
}
