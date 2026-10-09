package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class yh extends sk {
    public static final Parcelable.Creator<yh> CREATOR = new a();
    public final long a;
    public final long b;
    public final byte[] c;

    private yh(long j, byte[] bArr, long j2) {
        this.a = j2;
        this.b = j;
        this.c = bArr;
    }

    static yh a(ah ahVar, int i, long j) {
        long jY = ahVar.y();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        ahVar.a(bArr, 0, i2);
        return new yh(jY, bArr, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeByteArray(this.c);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public yh[] newArray(int i) {
            return new yh[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public yh createFromParcel(Parcel parcel) {
            return new yh(parcel, null);
        }
    }

    private yh(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = (byte[]) xp.a((Object) parcel.createByteArray());
    }

    /* synthetic */ yh(Parcel parcel, a aVar) {
        this(parcel);
    }
}
