package im.yixin.algorithm;

import com.netease.download.util.HashUtil;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class MD5 {
    public static final char[] hexDigitalArray = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private MD5() {
    }

    public static String getMessageDigest(byte[] dataByteArray) {
        try {
            MessageDigest md = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            md.update(dataByteArray);
            byte[] dataByteArray2 = md.digest();
            int length = dataByteArray2.length;
            char[] resultByteArray = new char[length * 2];
            int j = 0;
            for (int l : dataByteArray2) {
                int j2 = j + 1;
                resultByteArray[j] = hexDigitalArray[(l >>> 4) & 15];
                j = j2 + 1;
                resultByteArray[j2] = hexDigitalArray[l & 15];
            }
            return new String(resultByteArray);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public static byte[] getRawDigest(byte[] paramArrayOfByte) {
        try {
            MessageDigest md5 = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            md5.update(paramArrayOfByte);
            return md5.digest();
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
