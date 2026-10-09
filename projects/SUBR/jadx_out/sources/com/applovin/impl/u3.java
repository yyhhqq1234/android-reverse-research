package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class u3 extends xa {
    public static final Parcelable.Creator<u3> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;

    @Override // com.applovin.impl.xa
    public String toString() {
        return this.a + ": language=" + this.b + ", description=" + this.c;
    }

    u3(Parcel parcel) {
        super("COMM");
        this.b = (String) xp.a((Object) parcel.readString());
        this.c = (String) xp.a((Object) parcel.readString());
        this.d = (String) xp.a((Object) parcel.readString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u3.class != obj.getClass()) {
            return false;
        }
        u3 u3Var = (u3) obj;
        return xp.a((Object) this.c, (Object) u3Var.c) && xp.a((Object) this.b, (Object) u3Var.b) && xp.a((Object) this.d, (Object) u3Var.d);
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.d);
    }

    public u3(String str, String str2, String str3) {
        super("COMM");
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public u3[] newArray(int i) {
            return new u3[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public u3 createFromParcel(Parcel parcel) {
            return new u3(parcel);
        }
    }
}
