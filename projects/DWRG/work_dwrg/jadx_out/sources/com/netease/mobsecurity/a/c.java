package com.netease.mobsecurity.a;

import android.content.Context;

/* loaded from: classes.dex */
public class c {
    private static volatile c b;
    private static volatile com.netease.mobsecurity.a.b.a d;
    private b a;
    private Context c;

    private c(Context context) {
        this.a = b.a(context);
        this.c = context;
        a().a(context);
    }

    private a a(int i) {
        return this.a.a(i);
    }

    public static com.netease.mobsecurity.a.b.a a() {
        if (d == null) {
            d = new com.netease.mobsecurity.a.b.b();
        }
        return d;
    }

    public static c a(Context context) {
        if (b != null) {
            return b;
        }
        if (context == null) {
            return null;
        }
        try {
            synchronized (c.class) {
                if (b == null) {
                    b = new c(context);
                }
            }
            return b;
        } catch (Throwable th) {
            return null;
        }
    }

    public com.netease.mobsecurity.a.a.b b() {
        return (com.netease.mobsecurity.a.a.b) a(5);
    }

    public com.netease.mobsecurity.a.c.a c() {
        return (com.netease.mobsecurity.a.c.a) a(6);
    }
}
