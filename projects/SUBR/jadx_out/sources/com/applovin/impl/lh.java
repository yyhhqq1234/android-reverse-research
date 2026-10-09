package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class lh implements af.b {
    public static final Parcelable.Creator<lh> CREATOR = new a();
    public final int a;
    public final String b;
    public final String c;
    public final int d;
    public final int f;
    public final int g;
    public final int h;
    public final byte[] i;

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
        return "Picture: mimeType=" + this.b + ", description=" + this.c;
    }

    public lh(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
        this.i = bArr;
    }

    @Override // com.applovin.impl.af.b
    public void a(ud.b bVar) {
        bVar.a(this.i, this.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || lh.class != obj.getClass()) {
            return false;
        }
        lh lhVar = (lh) obj;
        return this.a == lhVar.a && this.b.equals(lhVar.b) && this.c.equals(lhVar.c) && this.d == lhVar.d && this.f == lhVar.f && this.g == lhVar.g && this.h == lhVar.h && Arrays.equals(this.i, lhVar.i);
    }

    public int hashCode() {
        return ((((((((((((((this.a + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + Arrays.hashCode(this.i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeByteArray(this.i);
    }

    lh(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = (String) xp.a((Object) parcel.readString());
        this.c = (String) xp.a((Object) parcel.readString());
        this.d = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = (byte[]) xp.a((Object) parcel.createByteArray());
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public lh[] newArray(int i) {
            return new lh[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public lh createFromParcel(Parcel parcel) {
            return new lh(parcel);
        }
    }
}
