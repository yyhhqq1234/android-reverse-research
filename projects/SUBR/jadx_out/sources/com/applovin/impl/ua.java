package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.Map;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class ua implements af.b {
    public static final Parcelable.Creator<ua> CREATOR = new a();
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean f;
    public final int g;

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
        return "IcyHeaders: name=\"" + this.c + "\", genre=\"" + this.b + "\", bitrate=" + this.a + ", metadataInterval=" + this.g;
    }

    public static ua a(Map map) {
        boolean z;
        int i;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i2;
        int i3;
        List list = (List) map.get("icy-br");
        boolean z2 = true;
        int i4 = -1;
        if (list != null) {
            String str4 = (String) list.get(0);
            try {
                i3 = Integer.parseInt(str4) * 1000;
                if (i3 > 0) {
                    i = i3;
                    z = true;
                } else {
                    try {
                        oc.d("IcyHeaders", "Invalid bitrate: " + str4);
                        z = false;
                        i = -1;
                    } catch (NumberFormatException unused) {
                        oc.d("IcyHeaders", "Invalid bitrate header: " + str4);
                        i = i3;
                        z = false;
                    }
                }
            } catch (NumberFormatException unused2) {
                i3 = -1;
            }
        } else {
            z = false;
            i = -1;
        }
        List list2 = (List) map.get("icy-genre");
        if (list2 != null) {
            str = (String) list2.get(0);
            z = true;
        } else {
            str = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str2 = (String) list3.get(0);
            z = true;
        } else {
            str2 = null;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str3 = (String) list4.get(0);
            z = true;
        } else {
            str3 = null;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str5 = (String) list6.get(0);
            try {
                int i5 = Integer.parseInt(str5);
                if (i5 > 0) {
                    i2 = i5;
                } else {
                    try {
                        oc.d("IcyHeaders", "Invalid metadata interval: " + str5);
                        z2 = z;
                        i2 = -1;
                    } catch (NumberFormatException unused3) {
                        i4 = i5;
                        oc.d("IcyHeaders", "Invalid metadata interval: " + str5);
                        z2 = z;
                        i2 = i4;
                    }
                }
            } catch (NumberFormatException unused4) {
            }
        } else {
            z2 = z;
            i2 = -1;
        }
        if (z2) {
            return new ua(i, str, str2, str3, zEquals, i2);
        }
        return null;
    }

    public ua(int i, String str, String str2, String str3, boolean z, int i2) {
        b1.a(i2 == -1 || i2 > 0);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.f = z;
        this.g = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ua.class != obj.getClass()) {
            return false;
        }
        ua uaVar = (ua) obj;
        return this.a == uaVar.a && xp.a((Object) this.b, (Object) uaVar.b) && xp.a((Object) this.c, (Object) uaVar.c) && xp.a((Object) this.d, (Object) uaVar.d) && this.f == uaVar.f && this.g == uaVar.g;
    }

    public int hashCode() {
        int i = (this.a + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        String str = this.b;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f ? 1 : 0)) * 31) + this.g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        xp.a(parcel, this.f);
        parcel.writeInt(this.g);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ua[] newArray(int i) {
            return new ua[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ua createFromParcel(Parcel parcel) {
            return new ua(parcel);
        }
    }

    ua(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.f = xp.a(parcel);
        this.g = parcel.readInt();
    }
}
