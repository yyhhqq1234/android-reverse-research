package com.netease.mpay.widget;

import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.MessageBar;

/* loaded from: classes.dex */
final class ak implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ak() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MessageBar.Message createFromParcel(Parcel parcel) {
        return new MessageBar.Message(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MessageBar.Message[] newArray(int i) {
        return new MessageBar.Message[i];
    }
}
