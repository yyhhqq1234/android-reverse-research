package com.netease.mpay.sharer;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class UrlShareContent extends ShareContent {
    public static final Parcelable.Creator CREATOR = new i();
    public String a;
    public String b;

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z);
    }

    public UrlShareContent() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public UrlShareContent(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    public UrlShareContent a(String str) {
        this.b = str;
        return this;
    }

    public void a(Context context, a aVar) {
        new j(this, aVar).start();
    }

    public UrlShareContent b(String str) {
        this.a = str;
        return this;
    }

    @Override // com.netease.mpay.sharer.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }
}
