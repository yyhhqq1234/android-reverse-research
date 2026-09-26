package com.netease.mpay.social;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.a.b;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.utils.LogUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class f {
    private static final String d = f.class.getName();
    protected Oauth2AccessToken a;
    protected Context b;
    protected String c;

    /* loaded from: classes.dex */
    private class a extends AsyncTask {
        private String b;
        private ArrayList c;
        private int d;
        private RequestListener e;

        public a(String str, ArrayList arrayList, int i, RequestListener requestListener) {
            this.b = str;
            this.c = arrayList;
            this.d = i;
            this.e = requestListener;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b.C0055b doInBackground(Void... voidArr) {
            try {
                return com.netease.mpay.widget.a.b.a(this.d, this.b, null, this.c, 300000, 30000);
            } catch (b.a e) {
                this.e.onWeiboException(new WeiboException(e.b()));
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(b.C0055b c0055b) {
            if (c0055b == null) {
                return;
            }
            if (c0055b.a == 200 || c0055b.a == 201) {
                this.e.onComplete(new String(c0055b.b));
            } else {
                this.e.onWeiboException(new WeiboException(new String(c0055b.b)));
            }
        }
    }

    public f(Context context, String str, Oauth2AccessToken oauth2AccessToken) {
        this.b = context;
        this.c = str;
        this.a = oauth2AccessToken;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, ArrayList arrayList, int i, RequestListener requestListener) {
        if (this.a == null || TextUtils.isEmpty(str) || arrayList == null || requestListener == null) {
            LogUtil.e(d, "Argument error!");
        } else {
            arrayList.add(new com.netease.mpay.widget.a.a("access_token", this.a.getToken()));
            new a(str, arrayList, i, requestListener).execute(new Void[0]);
        }
    }
}
