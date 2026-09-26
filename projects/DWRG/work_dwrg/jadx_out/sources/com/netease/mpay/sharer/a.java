package com.netease.mpay.sharer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.dodola.rocoo.Hack;
import com.netease.environment.config.SdkConstants;
import com.netease.mpay.b;
import com.netease.mpay.b.ac;
import com.tencent.connect.common.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
public class a extends e {
    private static String c;
    protected Activity a;
    protected Tencent b;

    /* renamed from: com.netease.mpay.sharer.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0049a {
        private Bundle b = new Bundle();

        public C0049a(ShareContent shareContent) {
            if (shareContent.contentType == 2) {
                this.b.putInt("req_type", 1);
                a(shareContent.webUrl);
                this.b.putString("imageUrl", a.this.a(shareContent.image));
            } else if (shareContent.contentType == 1) {
                this.b.putInt("req_type", 5);
                this.b.putString("imageLocalUrl", a.this.a(shareContent.image));
            }
            a(shareContent.title, shareContent.desc);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public Bundle a() {
            return this.b;
        }

        public C0049a a(String str) {
            this.b.putString("targetUrl", str);
            return this;
        }

        public C0049a a(String str, String str2) {
            if (str == null) {
                throw new RuntimeException("title are required");
            }
            this.b.putString("title", str);
            this.b.putString("summary", str2);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public class b {
        private Bundle b = new Bundle();

        public b(ShareContent shareContent) {
            this.b.putInt("req_type", 1);
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(a.this.a(shareContent.image));
            this.b.putStringArrayList("imageUrl", arrayList);
            a(shareContent.title, shareContent.desc);
            a(shareContent.webUrl);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public Bundle a() {
            return this.b;
        }

        public b a(String str) {
            this.b.putString("targetUrl", str);
            return this;
        }

        public b a(String str, String str2) {
            if (str == null) {
                throw new RuntimeException("title are required");
            }
            this.b.putString("title", str);
            this.b.putString("summary", str2);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public class c implements IUiListener {
        Context a;

        public c(Context context) {
            this.a = context;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
            a.this.a.setResult(SdkConstants.RESULT_CODE_INTERCEPT);
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            a.this.a.setResult(200);
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            a.this.a.setResult(SdkConstants.RESULT_CODE_INTERCEPT);
        }
    }

    public a(Activity activity) {
        if (c(activity)) {
            this.b = Tencent.createInstance(c, activity.getApplicationContext());
        }
        this.a = activity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SimpleDateFormat"})
    public String a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        String str = com.netease.mpay.e.c.j.a() + new SimpleDateFormat("yyyyMMddHHmm").format(gregorianCalendar.getTime()) + "_" + gregorianCalendar.getTimeInMillis() + ".jpeg";
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void a(String str) {
        c = str;
    }

    public static boolean a(Context context) {
        try {
            Class<?> cls = Class.forName("com.tencent.connect.common.Constants");
            return Constants.SDK_VERSION.equals(cls.getField("SDK_VERSION").get(cls));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean b(Context context) {
        if (f.a(context, "com.tencent.mobileqq")) {
            return a(context);
        }
        return false;
    }

    public static boolean c(Context context) {
        return c != null && b(context);
    }

    @Override // com.netease.mpay.sharer.e
    public boolean a(ShareContent shareContent, int i) {
        boolean c2 = c(this.a);
        if (i == 105) {
            if (!c2 || shareContent.contentType == 0) {
                return false;
            }
            this.b.shareToQQ(this.a, new C0049a(shareContent).a(), new c(this.a));
            return true;
        }
        if (i != 106 || shareContent.contentType != 2) {
            return false;
        }
        if (c2) {
            this.b.shareToQzone(this.a, new b(shareContent).a(), new c(this.a));
            return true;
        }
        if (!(shareContent instanceof UrlShareContent)) {
            return true;
        }
        com.netease.mpay.b.a(this.a, b.a.ShareWebActivity, new ac("http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?summary=网易游戏&url=" + URLEncoder.encode(shareContent.webUrl) + "&title=" + URLEncoder.encode(shareContent.title) + "&desc=" + URLEncoder.encode(shareContent.desc) + "&pics=" + URLEncoder.encode(((UrlShareContent) shareContent).a)), null, null);
        return true;
    }
}
