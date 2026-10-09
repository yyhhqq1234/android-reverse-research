package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class wk extends sk {
    public static final Parcelable.Creator<wk> CREATOR = new a();
    public final List a;

    public static final class c {
        public final long a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final long e;
        public final List f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        private c(long j, boolean z, boolean z2, boolean z3, List list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.a = j;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.f = Collections.unmodifiableList(list);
            this.e = j2;
            this.g = z4;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c b(ah ahVar) {
            ArrayList arrayList;
            boolean z;
            long j;
            boolean z2;
            long j2;
            int i;
            int i2;
            int iW;
            boolean z3;
            boolean z4;
            long jY;
            long jY2 = ahVar.y();
            boolean z5 = (ahVar.w() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z5) {
                arrayList = arrayList2;
                z = false;
                j = -9223372036854775807L;
                z2 = false;
                j2 = -9223372036854775807L;
                i = 0;
                i2 = 0;
                iW = 0;
                z3 = false;
            } else {
                int iW2 = ahVar.w();
                boolean z6 = (iW2 & 128) != 0;
                boolean z7 = (iW2 & 64) != 0;
                boolean z8 = (iW2 & 32) != 0;
                long jY3 = z7 ? ahVar.y() : -9223372036854775807L;
                if (!z7) {
                    int iW3 = ahVar.w();
                    ArrayList arrayList3 = new ArrayList(iW3);
                    for (int i3 = 0; i3 < iW3; i3++) {
                        arrayList3.add(new b(ahVar.w(), ahVar.y(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long jW = ahVar.w();
                    boolean z9 = (128 & jW) != 0;
                    jY = ((((jW & 1) << 32) | ahVar.y()) * 1000) / 90;
                    z4 = z9;
                } else {
                    z4 = false;
                    jY = -9223372036854775807L;
                }
                int iC = ahVar.C();
                int iW4 = ahVar.w();
                z3 = z7;
                iW = ahVar.w();
                j2 = jY;
                arrayList = arrayList2;
                long j3 = jY3;
                i = iC;
                i2 = iW4;
                j = j3;
                boolean z10 = z6;
                z2 = z4;
                z = z10;
            }
            return new c(jY2, z5, z, z3, arrayList, j, z2, j2, i, i2, iW);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c b(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Parcel parcel) {
            parcel.writeLong(this.a);
            parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
            int size = this.f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                ((b) this.f.get(i)).c(parcel);
            }
            parcel.writeLong(this.e);
            parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }

        private c(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readByte() == 1;
            this.c = parcel.readByte() == 1;
            this.d = parcel.readByte() == 1;
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(b.b(parcel));
            }
            this.f = Collections.unmodifiableList(arrayList);
            this.e = parcel.readLong();
            this.g = parcel.readByte() == 1;
            this.h = parcel.readLong();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }
    }

    public static final class b {
        public final int a;
        public final long b;

        /* JADX INFO: Access modifiers changed from: private */
        public static b b(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        private b(int i, long j) {
            this.a = i;
            this.b = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Parcel parcel) {
            parcel.writeInt(this.a);
            parcel.writeLong(this.b);
        }

        /* synthetic */ b(int i, long j, a aVar) {
            this(i, j);
        }
    }

    private wk(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(c.b(parcel));
        }
        this.a = Collections.unmodifiableList(arrayList);
    }

    static wk a(ah ahVar) {
        int iW = ahVar.w();
        ArrayList arrayList = new ArrayList(iW);
        for (int i = 0; i < iW; i++) {
            arrayList.add(c.b(ahVar));
        }
        return new wk(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            ((c) this.a.get(i2)).c(parcel);
        }
    }

    /* synthetic */ wk(Parcel parcel, a aVar) {
        this(parcel);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wk[] newArray(int i) {
            return new wk[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wk createFromParcel(Parcel parcel) {
            return new wk(parcel, null);
        }
    }

    private wk(List list) {
        this.a = Collections.unmodifiableList(list);
    }
}
