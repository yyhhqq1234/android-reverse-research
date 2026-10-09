package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class h2 extends xa {
    public static final Parcelable.Creator<h2> CREATOR = new a();
    public final byte[] b;

    h2(Parcel parcel) {
        super((String) xp.a((Object) parcel.readString()));
        this.b = (byte[]) xp.a((Object) parcel.createByteArray());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h2.class != obj.getClass()) {
            return false;
        }
        h2 h2Var = (h2) obj;
        return this.a.equals(h2Var.a) && Arrays.equals(this.b, h2Var.b);
    }

    public int hashCode() {
        return ((this.a.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Arrays.hashCode(this.b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeByteArray(this.b);
    }

    public h2(String str, byte[] bArr) {
        super(str);
        this.b = bArr;
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h2[] newArray(int i) {
            return new h2[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h2 createFromParcel(Parcel parcel) {
            return new h2(parcel);
        }
    }
}
