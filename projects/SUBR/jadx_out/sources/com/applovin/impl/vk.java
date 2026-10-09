package com.applovin.impl;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class vk extends sk {
    public static final Parcelable.Creator<vk> CREATOR = new a();

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public vk[] newArray(int i) {
            return new vk[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public vk createFromParcel(Parcel parcel) {
            return new vk();
        }
    }
}
