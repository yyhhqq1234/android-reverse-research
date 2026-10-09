package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class dr implements af.b {
    public static final Parcelable.Creator<dr> CREATOR = new a();
    public final String a;
    public final String b;

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

    public String toString() {
        return "VC: " + this.a + com.ironsource.y8.i.b + this.b;
    }

    dr(Parcel parcel) {
        this.a = (String) xp.a((Object) parcel.readString());
        this.b = (String) xp.a((Object) parcel.readString());
    }

    @Override // com.applovin.impl.af.b
    public void a(ud.b bVar) {
        String str = this.a;
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "ALBUM":
                bVar.b(this.b);
                break;
            case "TITLE":
                bVar.k(this.b);
                break;
            case "DESCRIPTION":
                bVar.g(this.b);
                break;
            case "ALBUMARTIST":
                bVar.a(this.b);
                break;
            case "ARTIST":
                bVar.c(this.b);
                break;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || dr.class != obj.getClass()) {
            return false;
        }
        dr drVar = (dr) obj;
        return this.a.equals(drVar.a) && this.b.equals(drVar.b);
    }

    public dr(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public int hashCode() {
        return ((this.a.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.b.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public dr[] newArray(int i) {
            return new dr[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public dr createFromParcel(Parcel parcel) {
            return new dr(parcel);
        }
    }
}
