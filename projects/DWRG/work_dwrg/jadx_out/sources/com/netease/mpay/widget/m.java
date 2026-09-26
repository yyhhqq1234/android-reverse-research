package com.netease.mpay.widget;

import android.content.Context;
import android.content.Intent;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class m {
    public static al a = new al();
    private Context b;
    private a c = new a();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        public int a = -1;
        public int b = -1;
        public int c = -1;
        public int d = -1;
        public be e = null;

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public boolean a(int i) {
            return i != -1;
        }

        public boolean a(be beVar) {
            return beVar != null;
        }
    }

    public m(Context context) {
        this.b = context;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void b(String str) {
        Intent intent = new Intent(this.b, (Class<?>) AlerterWindowService.class);
        intent.putExtra("0", str);
        if (this.c.a(this.c.a)) {
            intent.putExtra("1", String.valueOf(this.c.a));
        }
        if (this.c.a(this.c.b)) {
            intent.putExtra("2", String.valueOf(this.c.b));
        }
        if (this.c.a(this.c.c)) {
            intent.putExtra("3", String.valueOf(this.c.c));
        }
        if (this.c.a(this.c.d)) {
            intent.putExtra("4", String.valueOf(this.c.d));
        }
        if (this.c.a(this.c.e)) {
            intent.putExtra("5", a.a(this.c.e));
        }
        this.b.startService(intent);
    }

    public void a() {
        if (this.c.a(this.c.e)) {
            a((String) null);
        }
    }

    public void a(be beVar) {
        this.c.e = beVar;
    }

    public void a(String str) {
        if (!bd.a() && at.a(this.b) && at.a(this.b, "com.netease.mpay.widget.AlerterWindowService")) {
            b(str);
        } else {
            new l(this.b, this.c.e.a()).show();
        }
    }
}
