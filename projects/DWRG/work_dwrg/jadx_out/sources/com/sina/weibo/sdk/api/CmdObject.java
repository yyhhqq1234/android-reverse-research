package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CmdObject extends BaseMediaObject {
    public static final String CMD_HOME = "home";
    public static final Parcelable.Creator<CmdObject> CREATOR = new Parcelable.Creator<CmdObject>() { // from class: com.sina.weibo.sdk.api.CmdObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CmdObject createFromParcel(Parcel in) {
            return new CmdObject(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CmdObject[] newArray(int size) {
            return new CmdObject[size];
        }
    };
    public String cmd;

    public CmdObject() {
    }

    public CmdObject(Parcel in) {
        this.cmd = in.readString();
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.cmd);
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject
    public boolean checkArgs() {
        return (this.cmd == null || this.cmd.length() == 0 || this.cmd.length() > 1024) ? false : true;
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject
    public int getObjType() {
        return 7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sina.weibo.sdk.api.BaseMediaObject
    public BaseMediaObject toExtraMediaObject(String str) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sina.weibo.sdk.api.BaseMediaObject
    public String toExtraMediaString() {
        return "";
    }
}
