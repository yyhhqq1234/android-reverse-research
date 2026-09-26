package com.sina.weibo.sdk.api;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.sina.weibo.sdk.utils.LogUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class BaseMediaObject implements Parcelable {
    public static final int MEDIA_TYPE_CMD = 7;
    public static final int MEDIA_TYPE_IMAGE = 2;
    public static final int MEDIA_TYPE_MUSIC = 3;
    public static final int MEDIA_TYPE_TEXT = 1;
    public static final int MEDIA_TYPE_VIDEO = 4;
    public static final int MEDIA_TYPE_VOICE = 6;
    public static final int MEDIA_TYPE_WEBPAGE = 5;
    public String actionUrl;
    public String description;
    public String identify;
    public String schema;
    public byte[] thumbData;
    public String title;

    public abstract int getObjType();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract BaseMediaObject toExtraMediaObject(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String toExtraMediaString();

    public BaseMediaObject() {
    }

    public BaseMediaObject(Parcel in) {
        this.actionUrl = in.readString();
        this.schema = in.readString();
        this.identify = in.readString();
        this.title = in.readString();
        this.description = in.readString();
        this.thumbData = in.createByteArray();
    }

    public final void setThumbImage(Bitmap bitmap) {
        ByteArrayOutputStream os;
        ByteArrayOutputStream os2 = null;
        try {
            try {
                os = new ByteArrayOutputStream();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 85, os);
            this.thumbData = os.toByteArray();
        } catch (Exception e2) {
            e = e2;
            os2 = os;
            e.printStackTrace();
            LogUtil.e("Weibo.BaseMediaObject", "put thumb failed");
            if (os2 != null) {
                try {
                    os2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th = th2;
            os2 = os;
            if (os2 != null) {
                try {
                    os2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        if (os != null) {
            try {
                os.close();
                os2 = os;
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        os2 = os;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.actionUrl);
        dest.writeString(this.schema);
        dest.writeString(this.identify);
        dest.writeString(this.title);
        dest.writeString(this.description);
        dest.writeByteArray(this.thumbData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkArgs() {
        if (this.actionUrl == null || this.actionUrl.length() > 512) {
            LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, actionUrl is invalid");
            return false;
        }
        if (this.identify == null || this.identify.length() > 512) {
            LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, identify is invalid");
            return false;
        }
        if (this.thumbData == null || this.thumbData.length > 32768) {
            LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, thumbData is invalid,size is " + (this.thumbData != null ? this.thumbData.length : -1) + "! more then 32768.");
            return false;
        }
        if (this.title == null || this.title.length() > 512) {
            LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, title is invalid");
            return false;
        }
        if (this.description == null || this.description.length() > 1024) {
            LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, description is invalid");
            return false;
        }
        return true;
    }
}
