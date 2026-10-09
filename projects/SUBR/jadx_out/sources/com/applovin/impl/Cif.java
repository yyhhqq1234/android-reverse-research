package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: renamed from: com.applovin.impl.if, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cif extends xa {
    public static final Parcelable.Creator<Cif> CREATOR = new a();
    public final int b;
    public final int c;
    public final int d;
    public final int[] f;
    public final int[] g;

    @Override // com.applovin.impl.xa, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Cif(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.f = iArr;
        this.g = iArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Cif.class != obj.getClass()) {
            return false;
        }
        Cif cif = (Cif) obj;
        return this.b == cif.b && this.c == cif.c && this.d == cif.d && Arrays.equals(this.f, cif.f) && Arrays.equals(this.g, cif.g);
    }

    public int hashCode() {
        return ((((((((this.b + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.c) * 31) + this.d) * 31) + Arrays.hashCode(this.f)) * 31) + Arrays.hashCode(this.g);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeIntArray(this.f);
        parcel.writeIntArray(this.g);
    }

    Cif(Parcel parcel) {
        super("MLLT");
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.f = (int[]) xp.a(parcel.createIntArray());
        this.g = (int[]) xp.a(parcel.createIntArray());
    }

    /* JADX INFO: renamed from: com.applovin.impl.if$a */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cif[] newArray(int i) {
            return new Cif[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cif createFromParcel(Parcel parcel) {
            return new Cif(parcel);
        }
    }
}
