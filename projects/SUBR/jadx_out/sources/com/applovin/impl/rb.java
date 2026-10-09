package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class rb extends xa {
    public static final Parcelable.Creator<rb> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;

    @Override // com.applovin.impl.xa
    public String toString() {
        return this.a + ": domain=" + this.b + ", description=" + this.c;
    }

    rb(Parcel parcel) {
        super("----");
        this.b = (String) xp.a((Object) parcel.readString());
        this.c = (String) xp.a((Object) parcel.readString());
        this.d = (String) xp.a((Object) parcel.readString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || rb.class != obj.getClass()) {
            return false;
        }
        rb rbVar = (rb) obj;
        return xp.a((Object) this.c, (Object) rbVar.c) && xp.a((Object) this.b, (Object) rbVar.b) && xp.a((Object) this.d, (Object) rbVar.d);
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public rb(String str, String str2, String str3) {
        super("----");
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.d);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public rb[] newArray(int i) {
            return new rb[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public rb createFromParcel(Parcel parcel) {
            return new rb(parcel);
        }
    }
}
