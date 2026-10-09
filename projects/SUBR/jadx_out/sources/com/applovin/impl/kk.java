package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class kk implements af.b {
    public static final Parcelable.Creator<kk> CREATOR = new a();
    public final float a;
    public final int b;

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
        return "smta: captureFrameRate=" + this.a + ", svcTemporalLayerCount=" + this.b;
    }

    public kk(float f, int i) {
        this.a = f;
        this.b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || kk.class != obj.getClass()) {
            return false;
        }
        kk kkVar = (kk) obj;
        return this.a == kkVar.a && this.b == kkVar.b;
    }

    public int hashCode() {
        return ((c9.a(this.a) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.a);
        parcel.writeInt(this.b);
    }

    private kk(Parcel parcel) {
        this.a = parcel.readFloat();
        this.b = parcel.readInt();
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kk[] newArray(int i) {
            return new kk[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kk createFromParcel(Parcel parcel) {
            return new kk(parcel, (a) null);
        }
    }

    /* synthetic */ kk(Parcel parcel, a aVar) {
        this(parcel);
    }
}
