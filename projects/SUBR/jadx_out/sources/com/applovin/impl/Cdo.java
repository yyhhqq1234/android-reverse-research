package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: com.applovin.impl.do, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cdo extends sk {
    public static final Parcelable.Creator<Cdo> CREATOR = new a();
    public final long a;
    public final long b;

    private Cdo(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    static Cdo a(ah ahVar, long j, ho hoVar) {
        long jA = a(ahVar, j);
        return new Cdo(jA, hoVar.b(jA));
    }

    /* synthetic */ Cdo(long j, long j2, a aVar) {
        this(j, j2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
    }

    /* JADX INFO: renamed from: com.applovin.impl.do$a */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cdo[] newArray(int i) {
            return new Cdo[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cdo createFromParcel(Parcel parcel) {
            return new Cdo(parcel.readLong(), parcel.readLong(), null);
        }
    }

    static long a(ah ahVar, long j) {
        long jW = ahVar.w();
        if ((128 & jW) != 0) {
            return 8589934591L & ((((jW & 1) << 32) | ahVar.y()) + j);
        }
        return -9223372036854775807L;
    }
}
