package com.netease.mpay.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.OrderInit;

/* loaded from: classes.dex */
final class y implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public OrderInit.PayChannel createFromParcel(Parcel parcel) {
        return new OrderInit.PayChannel(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public OrderInit.PayChannel[] newArray(int i) {
        return new OrderInit.PayChannel[i];
    }
}
