package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class ed implements af.b {
    public static final Parcelable.Creator<ed> CREATOR = new a();
    public final String a;
    public final byte[] b;
    public final int c;
    public final int d;

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
        return "mdta: key=" + this.a;
    }

    private ed(Parcel parcel) {
        this.a = (String) xp.a((Object) parcel.readString());
        this.b = (byte[]) xp.a((Object) parcel.createByteArray());
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ed.class != obj.getClass()) {
            return false;
        }
        ed edVar = (ed) obj;
        return this.a.equals(edVar.a) && Arrays.equals(this.b, edVar.b) && this.c == edVar.c && this.d == edVar.d;
    }

    public int hashCode() {
        return ((((((this.a.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Arrays.hashCode(this.b)) * 31) + this.c) * 31) + this.d;
    }

    /* synthetic */ ed(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeByteArray(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ed[] newArray(int i) {
            return new ed[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ed createFromParcel(Parcel parcel) {
            return new ed(parcel, null);
        }
    }

    public ed(String str, byte[] bArr, int i, int i2) {
        this.a = str;
        this.b = bArr;
        this.c = i;
        this.d = i2;
    }
}
