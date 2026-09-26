package com.netease.mpay.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import com.netease.download.util.HashUtil;
import com.netease.epay.sdk.base.hybrid.common.JsConstant;
import com.netease.mpay.Cdo;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class bd {
    public static int a(String str, String str2) {
        return new BigDecimal(str).compareTo(new BigDecimal(str2));
    }

    public static Bitmap a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, (width - min) / 2, (height - min) / 2, min, min);
        Bitmap createBitmap2 = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap2);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, min, min);
        RectF rectF = new RectF(rect);
        float f = min / 2;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(createBitmap, rect, rect, paint);
        return createBitmap2;
    }

    public static String a(String str, int i, int i2) {
        int length = str.length();
        return i2 >= length ? "*****" + str : i + i2 >= length ? str.substring(0, length - i2) + "*****" + str.substring(length - i2) : str.substring(0, i) + "*****" + str.substring(length - i2);
    }

    public static Map a(URL url) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : url.getQuery().split(com.alipay.sdk.sys.a.b)) {
            int indexOf = str.indexOf("=");
            linkedHashMap.put(URLDecoder.decode(str.substring(0, indexOf), "UTF-8"), URLDecoder.decode(str.substring(indexOf + 1), "UTF-8"));
        }
        return linkedHashMap;
    }

    @SuppressLint({"DefaultLocale"})
    public static boolean a() {
        String b = b();
        if (b == null || b.trim().length() == 0 || b.toUpperCase().trim().equals("UNKNOWN")) {
            return false;
        }
        String replace = b.toLowerCase().replace(JsConstant.VERSION, "");
        return e(replace) && Integer.valueOf(replace).intValue() >= 5;
    }

    public static boolean a(Context context, String str, String str2) {
        try {
            Boolean bool = false;
            for (String str3 : context.getAssets().list(str)) {
                if (str3.equals(str2)) {
                    bool = true;
                }
            }
            return bool.booleanValue();
        } catch (IOException e) {
            return false;
        }
    }

    @SuppressLint({"TrulyRandom"})
    public static byte[] a(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static byte[] a(File file) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    fileInputStream.close();
                    return messageDigest.digest();
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (IOException e) {
            Cdo.a((Throwable) e);
            return null;
        } catch (NoSuchAlgorithmException e2) {
            Cdo.a((Throwable) e2);
            return null;
        }
    }

    public static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static byte[] a(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String[] a(String[] strArr, String[] strArr2) {
        if (strArr2 == null || strArr2.length <= 0) {
            return strArr;
        }
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }

    private static String b() {
        try {
            Method declaredMethod = Class.forName("android.os.Build").getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, "ro.miui.ui.version.name");
        } catch (ClassNotFoundException e) {
            return "UNKNOWN";
        } catch (IllegalAccessException e2) {
            return "UNKNOWN";
        } catch (IllegalArgumentException e3) {
            return "UNKNOWN";
        } catch (NoSuchMethodException e4) {
            return "UNKNOWN";
        } catch (InvocationTargetException e5) {
            return "UNKNOWN";
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(y.b(str.getBytes(), 8).replace("\n", ""), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return URLEncoder.encode(y.b(str.getBytes(), 8).replace("\n", ""));
        }
    }

    public static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            if (Integer.toHexString(bArr[i] & 255).length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(bArr[i] & 255));
        }
        return stringBuffer.toString();
    }

    public static boolean b(String str, String str2) {
        return ("" + str).equals("" + str2);
    }

    public static String[] b(String[] strArr, String[] strArr2) {
        boolean z;
        if (strArr == null || strArr.length < 1 || strArr2 == null || strArr2.length < 1) {
            return strArr;
        }
        LinkedList linkedList = new LinkedList();
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                int length = strArr2.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    if (TextUtils.equals(str, strArr2[i])) {
                        z = true;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    linkedList.add(str);
                }
            }
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    public static HashMap c(String str) {
        if (str == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str2 : str.split(com.alipay.sdk.sys.a.b)) {
            int indexOf = str2.indexOf("=");
            if (indexOf < 0) {
                return null;
            }
            try {
                hashMap.put(URLDecoder.decode(str2.substring(0, indexOf), "UTF-8"), URLDecoder.decode(str2.substring(indexOf + 1), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        }
        return hashMap;
    }

    public static int d(String str) {
        if (str == null) {
            return 0;
        }
        int length = str.length();
        boolean matches = str.matches("[a-zA-Z]+");
        boolean matches2 = str.matches("\\d+");
        boolean matches3 = str.matches("[^0-9a-zA-Z]+");
        boolean matches4 = str.matches(".*[a-zA-Z].*");
        boolean matches5 = str.matches(".*[^a-zA-Z].*");
        boolean matches6 = str.matches(".*\\d.*");
        boolean matches7 = str.matches(".*[^\\d].*");
        if (length <= 0) {
            return 0;
        }
        if (length < 6 || ((matches && length < 8) || matches2 || matches3)) {
            return 1;
        }
        if ((!matches || length < 8) && !((matches4 && matches5 && length < 8) || (matches6 && matches7 && length < 8))) {
            return ((matches4 && matches5 && length >= 8) || (matches6 && matches7 && length >= 8)) ? 3 : 0;
        }
        return 2;
    }

    public static boolean e(String str) {
        if (str == null || str.trim().length() == 0) {
            return false;
        }
        return Pattern.compile("^\\d+(\\.\\d+)?$").matcher(str).matches();
    }

    public static String f(String str) {
        try {
            return b(a(str.getBytes("GBK")));
        } catch (UnsupportedEncodingException e) {
            Cdo.a("unsupported encoding");
            return str;
        }
    }
}
