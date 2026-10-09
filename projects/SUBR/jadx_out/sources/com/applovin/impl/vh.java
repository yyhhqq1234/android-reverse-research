package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class vh extends xa {
    public static final Parcelable.Creator<vh> CREATOR = new a();
    public final String b;
    public final byte[] c;

    @Override // com.applovin.impl.xa
    public String toString() {
        return this.a + ": owner=" + this.b;
    }

    vh(Parcel parcel) {
        super("PRIV");
        this.b = (String) xp.a((Object) parcel.readString());
        this.c = (byte[]) xp.a((Object) parcel.createByteArray());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vh.class != obj.getClass()) {
            return false;
        }
        vh vhVar = (vh) obj;
        return xp.a((Object) this.b, (Object) vhVar.b) && Arrays.equals(this.c, vhVar.c);
    }

    public int hashCode() {
        String str = this.b;
        return (((str != null ? str.hashCode() : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Arrays.hashCode(this.c);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeByteArray(this.c);
    }

    public vh(String str, byte[] bArr) {
        super("PRIV");
        this.b = str;
        this.c = bArr;
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public vh[] newArray(int i) {
            return new vh[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public vh createFromParcel(Parcel parcel) {
            return new vh(parcel);
        }
    }
}
