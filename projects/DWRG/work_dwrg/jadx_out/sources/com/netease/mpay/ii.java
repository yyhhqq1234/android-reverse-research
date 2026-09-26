package com.netease.mpay;

import android.app.Activity;
import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;

/* loaded from: classes.dex */
public class ii {
    Activity a;
    Resources b;
    com.netease.mpay.widget.s c;

    public ii(Activity activity) {
        this.a = activity;
        this.c = new com.netease.mpay.widget.s(this.a);
        this.b = this.a.getResources();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a() {
        new ar.e().a(this.a);
    }

    public void b() {
        new ar.b().a(this.a);
    }

    public void c() {
        new ar.f().a(this.a);
    }

    public void d() {
        new ar.c().a(this.a);
    }
}
