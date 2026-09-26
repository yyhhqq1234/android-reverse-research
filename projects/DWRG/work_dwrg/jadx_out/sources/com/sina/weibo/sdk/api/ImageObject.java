package com.sina.weibo.sdk.api;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.sina.weibo.sdk.utils.LogUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageObject extends BaseMediaObject {
    public static final Parcelable.Creator<ImageObject> CREATOR = new Parcelable.Creator<ImageObject>() { // from class: com.sina.weibo.sdk.api.ImageObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImageObject createFromParcel(Parcel in) {
            return new ImageObject(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImageObject[] newArray(int size) {
            return new ImageObject[size];
        }
    };
    private static final int DATA_SIZE = 2097152;
    public byte[] imageData;
    public String imagePath;

    public ImageObject() {
    }

    public ImageObject(Parcel in) {
        this.imageData = in.createByteArray();
        this.imagePath = in.readString();
    }

    public final void setImageObject(Bitmap bitmap) {
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
            this.imageData = os.toByteArray();
        } catch (Exception e2) {
            e = e2;
            os2 = os;
            e.printStackTrace();
            LogUtil.e("Weibo.ImageObject", "put thumb failed");
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

    @Override // com.sina.weibo.sdk.api.BaseMediaObject, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeByteArray(this.imageData);
        dest.writeString(this.imagePath);
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject
    public boolean checkArgs() {
        if (this.imageData == null && this.imagePath == null) {
            LogUtil.e("Weibo.ImageObject", "imageData and imagePath are null");
            return false;
        }
        if (this.imageData != null && this.imageData.length > 2097152) {
            LogUtil.e("Weibo.ImageObject", "imageData is too large");
            return false;
        }
        if (this.imagePath != null && this.imagePath.length() > 512) {
            LogUtil.e("Weibo.ImageObject", "imagePath is too length");
            return false;
        }
        if (this.imagePath != null) {
            File file = new File(this.imagePath);
            try {
                if (!file.exists() || file.length() == 0 || file.length() > 10485760) {
                    LogUtil.e("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
                    return false;
                }
            } catch (SecurityException e) {
                LogUtil.e("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
                return false;
            }
        }
        return true;
    }

    @Override // com.sina.weibo.sdk.api.BaseMediaObject
    public int getObjType() {
        return 2;
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
