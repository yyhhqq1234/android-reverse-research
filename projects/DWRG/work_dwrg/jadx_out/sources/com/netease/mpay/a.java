package com.netease.mpay;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public abstract class a {
    public FragmentActivity a;
    protected String b = "";
    protected com.netease.mpay.b.a c;

    public a(FragmentActivity fragmentActivity) {
        this.a = fragmentActivity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public View a(String str, Context context, AttributeSet attributeSet) {
        return null;
    }

    protected abstract com.netease.mpay.b.a a(Intent intent);

    public final void a() {
        this.c = a(this.a.getIntent());
    }

    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, Bundle bundle) {
    }

    public void a(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    public void a(Configuration configuration) {
    }

    public void a(Bundle bundle) {
    }

    public void a(MotionEvent motionEvent) {
    }

    public void a(String str) {
        if (str == null) {
            str = "";
        }
        this.b = str;
        View findViewById = this.a.findViewById(RIdentifier.f.o);
        if (findViewById == null) {
            return;
        }
        ((TextView) findViewById.findViewById(RIdentifier.f.n)).setText(this.b);
    }

    public void a(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(int i) {
        ViewGroup viewGroup = (ViewGroup) this.a.findViewById(RIdentifier.f.m);
        if (viewGroup == null) {
            return false;
        }
        LayoutInflater.from(this.a).inflate(i, viewGroup);
        return true;
    }

    public void b() {
        if (this.c == null || this.c.c() == null) {
            return;
        }
        bj.a(this.a, this.c.c().mScreenOrientation);
    }

    public void b(Bundle bundle) {
    }

    public boolean b(MotionEvent motionEvent) {
        return false;
    }

    public void c() {
    }

    public void c(Bundle bundle) {
    }

    public void d() {
    }

    public void d(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
    }

    public void i() {
    }

    public void j() {
    }

    public void k() {
    }

    public boolean l() {
        return false;
    }

    public boolean m() {
        return this.a == null || this.a.isFinishing();
    }

    public boolean n() {
        return false;
    }

    public boolean o() {
        return false;
    }

    public View p() {
        return this.a.findViewById(RIdentifier.f.o);
    }

    public void q() {
    }

    @SuppressLint({"MissingSuperCall"})
    public void r() {
    }
}
