package com.netease.mpay.server.response.urslogin;

import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
final class b implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public EmailRelatedMobile createFromParcel(Parcel parcel) {
        return new EmailRelatedMobile(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public EmailRelatedMobile[] newArray(int i) {
        return new EmailRelatedMobile[i];
    }
}
