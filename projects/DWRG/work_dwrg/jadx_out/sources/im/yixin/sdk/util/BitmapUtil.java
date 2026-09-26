package im.yixin.sdk.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class BitmapUtil {
    private BitmapUtil() {
    }

    public static byte[] bmpToByteArray(Bitmap bmp, boolean needRecycle) {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        try {
            bmp.compress(Bitmap.CompressFormat.JPEG, 100, output);
            byte[] result = output.toByteArray();
            if (needRecycle) {
                bmp.recycle();
            }
            return result;
        } finally {
            try {
                output.close();
            } catch (IOException e) {
                SDKFeedBackUtils.getInstance().postErrorLog(BitmapUtil.class, "error when calling bmpToByteArray", e);
                e.printStackTrace();
            }
        }
    }

    public static Bitmap byteArrayToBmp(byte[] temp) {
        if (temp == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeByteArray(temp, 0, temp.length);
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(BitmapUtil.class, "error when calling byteArrayToBmp", e);
            return null;
        }
    }
}
