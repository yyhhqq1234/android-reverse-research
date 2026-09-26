package com.netease.mobsecurity.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class b {
    public static int a = 2;
    public static int b = 0;
    private static b c;
    private Context d;
    private List e;

    private b(Context context) {
        this.d = context;
        a();
    }

    public static b a(Context context) {
        if (c == null) {
            c = new b(context);
        }
        return c;
    }

    private void a() {
        this.e = new ArrayList(8);
        for (int i = 0; i < 8; i++) {
            this.e.add(null);
        }
        this.e.set(5, new com.netease.mobsecurity.a.a.a(this.d));
        this.e.set(6, new com.netease.mobsecurity.a.c.b(this.d));
    }

    public final a a(int i) {
        return (a) this.e.get(i);
    }
}
