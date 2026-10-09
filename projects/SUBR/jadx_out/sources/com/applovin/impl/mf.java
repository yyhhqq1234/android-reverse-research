package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class mf implements af.b {
    public static final Parcelable.Creator<mf> CREATOR = new a();
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long f;

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

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.a + ", photoSize=" + this.b + ", photoPresentationTimestampUs=" + this.c + ", videoStartPosition=" + this.d + ", videoSize=" + this.f;
    }

    public mf(long j, long j2, long j3, long j4, long j5) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.f = j5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || mf.class != obj.getClass()) {
            return false;
        }
        mf mfVar = (mf) obj;
        return this.a == mfVar.a && this.b == mfVar.b && this.c == mfVar.c && this.d == mfVar.d && this.f == mfVar.f;
    }

    public int hashCode() {
        return ((((((((rc.a(this.a) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + rc.a(this.b)) * 31) + rc.a(this.c)) * 31) + rc.a(this.d)) * 31) + rc.a(this.f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f);
    }

    private mf(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.f = parcel.readLong();
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public mf[] newArray(int i) {
            return new mf[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public mf createFromParcel(Parcel parcel) {
            return new mf(parcel, null);
        }
    }

    /* synthetic */ mf(Parcel parcel, a aVar) {
        this(parcel);
    }
}
