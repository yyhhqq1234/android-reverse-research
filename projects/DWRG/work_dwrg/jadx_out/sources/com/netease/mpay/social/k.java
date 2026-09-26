package com.netease.mpay.social;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.social.a;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.RequestListener;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class k {
    private Context a;
    private String b;
    private h c;
    private Oauth2AccessToken d;
    private int e = 0;
    private com.netease.mpay.social.a f;
    private a.C0052a g;
    private a h;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i);

        void a(a.C0052a c0052a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements RequestListener {
        private int b;

        public b(int i) {
            this.b = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.sina.weibo.sdk.net.RequestListener
        public void onComplete(String str) {
            int i;
            try {
                JSONArray jSONArray = new JSONObject(str).getJSONArray("users");
                int length = jSONArray.length();
                switch (this.b) {
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        i = 1;
                        break;
                    default:
                        i = 2;
                        break;
                }
                for (int i2 = 0; i2 < length; i2++) {
                    i a = i.a(jSONArray.getJSONObject(i2));
                    m mVar = (m) k.this.g.d.get(a.a);
                    if (mVar == null) {
                        m mVar2 = new m();
                        mVar2.a = a.a;
                        mVar2.b = i;
                        mVar2.e = a.A;
                        mVar2.d = a.c;
                        k.this.g.d.put(mVar2.a, mVar2);
                    } else if (mVar.b != 1 && i == 2) {
                        mVar.b = i;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (k.c(k.this) <= 0) {
                k.this.h.a(k.this.g);
            }
        }

        @Override // com.sina.weibo.sdk.net.RequestListener
        public void onWeiboException(WeiboException weiboException) {
            if (k.c(k.this) <= 0) {
                k.this.h.a(k.this.g);
            }
        }
    }

    public k(Context context, String str, String str2, String str3) {
        this.a = context;
        this.b = str3;
        this.d = g.a(this.a, str, str2);
        this.c = new h(this.a, this.b, this.d);
        this.f = new com.netease.mpay.social.a(this.a, str, str2);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private int a(int i) {
        return (int) Math.ceil(Math.min(i, 500) / 200.0d);
    }

    private void a(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            switch (i) {
                case 1:
                    this.c.a(Long.valueOf(this.d.getUid()).longValue(), 200, i3, new b(i));
                    break;
                case 2:
                    this.c.a(Long.valueOf(this.d.getUid()).longValue(), 200, (i3 - 1) * 200, true, new b(i));
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(i iVar) {
        this.e = 0;
        int a2 = a(iVar.F);
        this.e += a2;
        int a3 = a(iVar.p);
        this.e += a3;
        a(1, a2);
        a(2, a3);
    }

    static /* synthetic */ int c(k kVar) {
        int i = kVar.e - 1;
        kVar.e = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(a aVar) {
        if (aVar == null) {
            throw new RuntimeException("Null LoadDataListener!");
        }
        this.h = aVar;
        this.g = this.f.a();
        long time = new Date().getTime() / 1000;
        if (this.g == null) {
            this.g = new a.C0052a();
            this.g.a = time + 172800;
        }
        if (this.g.d.size() > 0 && this.g.a >= time) {
            this.h.a(this.g);
            return;
        }
        if (this.g.d.size() >= 2000) {
            this.f.b();
            this.g = new a.C0052a();
            this.g.a = time + 172800;
        }
        if (g.a(this.d)) {
            new j(this.a, this.b, this.d).a(Long.valueOf(this.d.getUid()).longValue(), new l(this));
        } else {
            this.h.a(1);
        }
    }
}
