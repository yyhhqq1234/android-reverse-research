package com.netease.mpay.sharer;

import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
final class i implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShareContent createFromParcel(Parcel parcel) {
        return new UrlShareContent(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShareContent[] newArray(int i) {
        return new ShareContent[i];
    }
}
