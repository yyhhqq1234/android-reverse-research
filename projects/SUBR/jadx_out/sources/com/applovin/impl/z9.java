package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class z9 extends xa {
    public static final Parcelable.Creator<z9> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;
    public final byte[] f;

    @Override // com.applovin.impl.xa
    public String toString() {
        return this.a + ": mimeType=" + this.b + ", filename=" + this.c + ", description=" + this.d;
    }

    z9(Parcel parcel) {
        super("GEOB");
        this.b = (String) xp.a((Object) parcel.readString());
        this.c = (String) xp.a((Object) parcel.readString());
        this.d = (String) xp.a((Object) parcel.readString());
        this.f = (byte[]) xp.a((Object) parcel.createByteArray());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z9.class != obj.getClass()) {
            return false;
        }
        z9 z9Var = (z9) obj;
        return xp.a((Object) this.b, (Object) z9Var.b) && xp.a((Object) this.c, (Object) z9Var.c) && xp.a((Object) this.d, (Object) z9Var.d) && Arrays.equals(this.f, z9Var.f);
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.f);
    }

    public z9(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.f = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeByteArray(this.f);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public z9[] newArray(int i) {
            return new z9[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public z9 createFromParcel(Parcel parcel) {
            return new z9(parcel);
        }
    }
}
