package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public abstract class xa implements af.b {
    public final String a;

    @Override // com.applovin.impl.af.b
    public /* synthetic */ void a(ud.b bVar) {
        af.b.CC.$default$a(this, bVar);
    }

    @Override // com.applovin.impl.af.b
    public /* synthetic */ byte[] a() {
        return af.b.CC.$default$a(this);
    }

    @Override // com.applovin.impl.af.b
    public /* synthetic */ e9 b() {
        return af.b.CC.$default$b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public xa(String str) {
        this.a = str;
    }

    public String toString() {
        return this.a;
    }
}
