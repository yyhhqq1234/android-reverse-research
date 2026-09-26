package com.netease.mpay;

import android.annotation.SuppressLint;
import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class hx {
    public boolean a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    private Context f;
    private final String g;
    private boolean h;
    private boolean i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;

    public hx(Context context) {
        this.f = context.getApplicationContext();
        this.g = this.f.getString(RIdentifier.h.dS);
        c();
        d();
        e();
        g();
        f();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private String b() {
        StringBuilder sb = new StringBuilder("GMT");
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        sb.append(rawOffset < 0 ? "-" : "+");
        sb.append(rawOffset);
        return sb.toString();
    }

    @SuppressLint({"SimpleDateFormat"})
    private void c() {
        this.j = this.f.getString(RIdentifier.h.bC) + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(com.netease.mpay.widget.ao.a())) + (" " + b());
        this.k = this.f.getString(RIdentifier.h.bD) + this.g;
        this.l = this.f.getString(RIdentifier.h.bN) + this.g;
        this.a = false;
    }

    private void d() {
        this.m = "DNS： " + this.g;
        this.b = false;
    }

    private void e() {
        this.n = "HTTP： " + this.g;
        this.o = "HTTPs： " + this.g;
        this.c = false;
        this.h = false;
        this.i = false;
    }

    private void f() {
        this.p = this.g;
        this.d = false;
    }

    private void g() {
        this.q = this.g;
        this.e = false;
    }

    public String a() {
        return this.f.getString(RIdentifier.h.bM) + "\n" + this.j + "\n" + this.k + "\n" + this.l + "\n\n\n" + this.f.getString(RIdentifier.h.bA) + "\n" + this.m + "\n\n\n" + this.f.getString(RIdentifier.h.bB) + "\n" + this.n + "\n" + this.o + "\n\n\n" + this.f.getString(RIdentifier.h.bO) + "\n" + this.q + "\n\n\n" + this.f.getString(RIdentifier.h.bE) + "\n" + this.p + "\n";
    }

    @SuppressLint({"SimpleDateFormat"})
    public void a(long j, long j2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = " " + b();
        this.j = this.f.getString(RIdentifier.h.bC) + simpleDateFormat.format(new Date(j)) + str;
        this.k = this.f.getString(RIdentifier.h.bD) + simpleDateFormat.format(new Date(j2)) + str;
        this.l = this.f.getString(RIdentifier.h.bN) + (Math.abs(j2 - j) / 1000) + "s";
        this.a = true;
    }

    public void a(String str) {
        this.m = "DNS： " + str;
        this.b = true;
    }

    public void a(boolean z) {
        this.n = "HTTP： " + (z ? this.f.getString(RIdentifier.h.cm) : this.f.getString(RIdentifier.h.a));
        this.h = true;
        this.c = this.i;
    }

    public void b(String str) {
        this.p = str;
        this.d = true;
    }

    public void b(boolean z) {
        this.o = "HTTPs： " + (z ? this.f.getString(RIdentifier.h.cm) : this.f.getString(RIdentifier.h.a));
        this.i = true;
        this.c = this.h;
    }

    public void c(String str) {
        this.q = str;
        this.e = true;
    }
}
