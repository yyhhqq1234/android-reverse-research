package com.netease.epay.sdk.base.hybrid.common;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BaseMsg implements Parcelable {
    public static final Parcelable.Creator<BaseMsg> CREATOR = new Parcelable.Creator<BaseMsg>() { // from class: com.netease.epay.sdk.base.hybrid.common.BaseMsg.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseMsg createFromParcel(Parcel source) {
            return new BaseMsg(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseMsg[] newArray(int size) {
            return new BaseMsg[size];
        }
    };
    public String context;

    public BaseMsg(JSONObject object) {
        if (object != null) {
            this.context = object.optString(JsConstant.CONTEXT);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.context);
    }

    public BaseMsg() {
    }

    protected BaseMsg(Parcel in) {
        this.context = in.readString();
    }
}
