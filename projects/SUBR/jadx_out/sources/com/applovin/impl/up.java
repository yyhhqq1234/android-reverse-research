package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class up extends xa {
    public static final Parcelable.Creator<up> CREATOR = new a();
    public final String b;
    public final String c;

    @Override // com.applovin.impl.xa
    public String toString() {
        return this.a + ": url=" + this.c;
    }

    up(Parcel parcel) {
        super((String) xp.a((Object) parcel.readString()));
        this.b = parcel.readString();
        this.c = (String) xp.a((Object) parcel.readString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || up.class != obj.getClass()) {
            return false;
        }
        up upVar = (up) obj;
        return this.a.equals(upVar.a) && xp.a((Object) this.b, (Object) upVar.b) && xp.a((Object) this.c, (Object) upVar.c);
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public up(String str, String str2, String str3) {
        super(str);
        this.b = str2;
        this.c = str3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public up[] newArray(int i) {
            return new up[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public up createFromParcel(Parcel parcel) {
            return new up(parcel);
        }
    }
}
