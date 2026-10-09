package com.applovin.impl;

import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes.dex */
public abstract class l2 {
    private int a;

    public final boolean e() {
        return d(4);
    }

    public final boolean f() {
        return d(1);
    }

    public final void b(int i) {
        this.a = i | this.a;
    }

    public final void c(int i) {
        this.a = (~i) & this.a;
    }

    protected final boolean d(int i) {
        return (this.a & i) == i;
    }

    public void b() {
        this.a = 0;
    }

    public final void e(int i) {
        this.a = i;
    }

    public final boolean d() {
        return d(Integer.MIN_VALUE);
    }

    public final boolean c() {
        return d(DriveFile.MODE_READ_ONLY);
    }
}
