package com.netease.mpay.server.response.urslogin;

import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class EmailRelatedMobile implements Parcelable {
    public static final Parcelable.Creator CREATOR = new b();
    public String a;
    public String b;

    /* JADX INFO: Access modifiers changed from: protected */
    public EmailRelatedMobile(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    public EmailRelatedMobile(String str, String str2) {
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }
}
