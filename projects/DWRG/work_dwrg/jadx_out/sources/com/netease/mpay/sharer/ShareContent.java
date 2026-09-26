package com.netease.mpay.sharer;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class ShareContent implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.netease.mpay.sharer.ShareContent.1
        {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.os.Parcelable.Creator
        public ShareContent createFromParcel(Parcel parcel) {
            return new ShareContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ShareContent[] newArray(int i) {
            return new ShareContent[i];
        }
    };
    public int contentType;
    public String desc;
    public Object extra;
    public Bitmap image;
    public String text;
    public Bitmap thumb;
    public String title;
    public String webUrl;

    /* loaded from: classes.dex */
    public static final class ContentType {
        public static final int IMAGE = 1;
        public static final int PLAIN = 0;
        public static final int WEB = 2;

        public ContentType() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public ShareContent() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public ShareContent(Parcel parcel) {
        this.contentType = parcel.readInt();
        this.title = parcel.readString();
        this.desc = parcel.readString();
        this.text = parcel.readString();
        this.webUrl = parcel.readString();
        this.image = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.thumb = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isValid() {
        switch (this.contentType) {
            case 0:
                return this.text != null;
            case 1:
                return this.image != null;
            case 2:
                return this.webUrl != null;
            default:
                return false;
        }
    }

    public ShareContent setDesc(String str) {
        this.desc = str;
        return this;
    }

    public ShareContent setImage(Bitmap bitmap) {
        this.image = bitmap;
        return this;
    }

    public ShareContent setText(String str) {
        this.text = str;
        return this;
    }

    public ShareContent setThumb(Bitmap bitmap) {
        this.thumb = bitmap;
        return this;
    }

    public ShareContent setTitle(String str) {
        this.title = str;
        return this;
    }

    public ShareContent setType(int i) {
        this.contentType = i;
        return this;
    }

    public ShareContent setWebUrl(String str) {
        this.webUrl = str;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.contentType);
        parcel.writeString(this.title);
        parcel.writeString(this.desc);
        parcel.writeString(this.text);
        parcel.writeString(this.webUrl);
        parcel.writeParcelable(this.image, i);
        parcel.writeParcelable(this.thumb, i);
    }
}
