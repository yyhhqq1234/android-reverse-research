package com.netease.mpay.sharer;

import android.content.Context;
import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.modelmsg.WXImageObject;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.modelmsg.WXTextObject;
import com.tencent.mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* loaded from: classes.dex */
public class l extends e {
    private static String b;
    protected IWXAPI a;
    private Context c;

    /* loaded from: classes.dex */
    public static class a {
        private WXMediaMessage a = new WXMediaMessage();

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
            this.a.mediaObject = new WXWebpageObject(str);
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

        public WXMediaMessage a() {
            return this.a;
        }

        public a b(Bitmap bitmap) {
            this.a.mediaObject = new WXImageObject(bitmap);
            return this;
        }

        public a b(String str) {
            this.a.mediaObject = new WXTextObject(str);
            return this;
        }
    }

    public l(Context context) {
        this.c = context;
        if (b(context)) {
            this.a = WXAPIFactory.createWXAPI(context, b, true);
            this.a.registerApp(b);
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(String str) {
        b = str;
    }

    public static boolean a(Context context) {
        try {
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.constants.Build");
            return ((long) ((Integer) cls.getField("SDK_INT").get(cls)).intValue()) == 620757000;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private String b(String str) {
        return (str == null ? Const.RESP_CONTENT_SPIT2 : str + Const.RESP_CONTENT_SPIT2) + System.currentTimeMillis();
    }

    public static boolean b(Context context) {
        return b != null && a(context) && com.netease.mpay.m.a(context);
    }

    @Override // com.netease.mpay.sharer.e
    public boolean a(ShareContent shareContent, int i) {
        if (!b(this.c) || !this.a.isWXAppInstalled() || !this.a.isWXAppSupportAPI()) {
            return false;
        }
        SendMessageToWX.Req req = new SendMessageToWX.Req();
        req.transaction = b("" + shareContent.contentType);
        req.message = new a(shareContent).a();
        req.scene = i != 101 ? 1 : 0;
        return this.a.sendReq(req);
    }
}
