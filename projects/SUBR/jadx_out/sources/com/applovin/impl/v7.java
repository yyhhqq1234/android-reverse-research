package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class v7 implements af.b {
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final byte[] f;
    private int g;
    private static final e9 h = new e9.b().f("application/id3").a();
    private static final e9 i = new e9.b().f("application/x-scte35").a();
    public static final Parcelable.Creator<v7> CREATOR = new a();

    @Override // com.applovin.impl.af.b
    public /* synthetic */ void a(ud.b bVar) {
        af.b.CC.$default$a(this, bVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "EMSG: scheme=" + this.a + ", id=" + this.d + ", durationMs=" + this.c + ", value=" + this.b;
    }

    v7(Parcel parcel) {
        this.a = (String) xp.a((Object) parcel.readString());
        this.b = (String) xp.a((Object) parcel.readString());
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.f = (byte[]) xp.a((Object) parcel.createByteArray());
    }

    @Override // com.applovin.impl.af.b
    public e9 b() {
        String str = this.a;
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return i;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return h;
            default:
                return null;
        }
    }

    @Override // com.applovin.impl.af.b
    public byte[] a() {
        if (b() != null) {
            return this.f;
        }
        return null;
    }

    public int hashCode() {
        if (this.g == 0) {
            String str = this.a;
            int iHashCode = ((str != null ? str.hashCode() : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j = this.c;
            int i2 = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.d;
            this.g = ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.f);
        }
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v7.class != obj.getClass()) {
            return false;
        }
        v7 v7Var = (v7) obj;
        return this.c == v7Var.c && this.d == v7Var.d && xp.a((Object) this.a, (Object) v7Var.a) && xp.a((Object) this.b, (Object) v7Var.b) && Arrays.equals(this.f, v7Var.f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeByteArray(this.f);
    }

    public v7(String str, String str2, long j, long j2, byte[] bArr) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.f = bArr;
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v7[] newArray(int i) {
            return new v7[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v7 createFromParcel(Parcel parcel) {
            return new v7(parcel);
        }
    }
}
