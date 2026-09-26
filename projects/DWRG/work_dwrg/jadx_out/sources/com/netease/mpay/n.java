package com.netease.mpay;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.EnterGameActivity;
import com.netease.mpay.bm;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class n {
    private static n a;
    private HashMap b = new HashMap();
    private b c = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        IDLE,
        PENDING,
        PROCESSING;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        bm.a a = null;
        HashMap b = new HashMap();
        EnterGameActivity.a c = null;
        a d = a.IDLE;

        public b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    private n() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static n a() {
        synchronized (n.class) {
            if (a == null) {
                a = new n();
            }
        }
        return a;
    }

    public void a(EnterGameActivity.a aVar) {
        synchronized (n.class) {
            this.c.c = aVar;
            this.c.d = a.PENDING;
        }
    }

    public void a(String str) {
        this.b.put(str, true);
    }

    public void a(String str, bm.a aVar, ArrayList arrayList) {
        this.c.a = aVar;
        this.c.b.put(str, arrayList);
    }

    public boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        ArrayList arrayList = (ArrayList) this.c.b.get(str);
        return arrayList != null && arrayList.indexOf(str2) >= 0;
    }

    public void b() {
        synchronized (n.class) {
            a = new n();
        }
    }

    public boolean b(String str) {
        Boolean bool = (Boolean) this.b.get(str);
        return bool != null && bool.booleanValue();
    }

    public boolean c() {
        return this.c.a != null;
    }

    public bm.a d() {
        return this.c.a;
    }

    public void e() {
        if (g() && this.c.a != null) {
            this.c.d = a.PROCESSING;
            this.c.a.a(this.c.c);
        }
        synchronized (n.class) {
            this.c.c = null;
        }
    }

    public void f() {
        synchronized (n.class) {
            this.c.c = null;
            this.c.d = a.IDLE;
        }
    }

    public boolean g() {
        boolean z;
        synchronized (n.class) {
            z = this.c.c != null && this.c.c.a() && a.PENDING == this.c.d;
        }
        return z;
    }

    public boolean h() {
        boolean z;
        synchronized (n.class) {
            z = a.IDLE == this.c.d;
        }
        return z;
    }
}
