package com.netease.mpay.server;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.ah;
import com.netease.mpay.f.an;
import com.netease.mpay.hk;
import com.netease.mpay.server.a;

/* loaded from: classes.dex */
public class e {
    private Activity a;
    private String b;
    private String c;
    private final Boolean d = true;
    private boolean e = false;
    private String f = null;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        private String b;

        public b(String str) {
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.netease.mpay.b.a(e.this.a, b.a.WebLinksActivity, new ah(new a.C0035a(e.this.b, e.this.c, hk.a().a(e.this.b)), an.a.LINK_URL).a(this.b).a(new f(this)), null, null);
        }
    }

    public e(Activity activity, String str, String str2) {
        this.a = activity;
        this.b = str;
        this.c = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException();
        }
        this.a.runOnUiThread(new b(str));
        synchronized (this.d) {
            try {
                this.d.wait();
            } catch (InterruptedException e) {
                Cdo.a((Throwable) e);
            }
        }
        if (this.e) {
            return this.f;
        }
        throw new a.o("");
    }
}
