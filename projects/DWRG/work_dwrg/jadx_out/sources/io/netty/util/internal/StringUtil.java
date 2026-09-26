package io.netty.util.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;

/* loaded from: classes.dex */
public final class StringUtil {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String[] BYTE2HEX_NOPAD;
    private static final String[] BYTE2HEX_PAD;
    private static final String EMPTY_STRING = "";
    public static final String NEWLINE;

    static {
        String newLine;
        $assertionsDisabled = StringUtil.class.desiredAssertionStatus() ? false : true;
        BYTE2HEX_PAD = new String[256];
        BYTE2HEX_NOPAD = new String[256];
        try {
            newLine = new Formatter().format("%n", new Object[0]).toString();
        } catch (Exception e) {
            newLine = "\n";
        }
        NEWLINE = newLine;
        int i = 0;
        while (i < 10) {
            StringBuilder buf = new StringBuilder(2);
            buf.append('0');
            buf.append(i);
            BYTE2HEX_PAD[i] = buf.toString();
            BYTE2HEX_NOPAD[i] = String.valueOf(i);
            i++;
        }
        while (i < 16) {
            StringBuilder buf2 = new StringBuilder(2);
            char c = (char) ((i + 97) - 10);
            buf2.append('0');
            buf2.append(c);
            BYTE2HEX_PAD[i] = buf2.toString();
            BYTE2HEX_NOPAD[i] = String.valueOf(c);
            i++;
        }
        while (i < BYTE2HEX_PAD.length) {
            StringBuilder buf3 = new StringBuilder(2);
            buf3.append(Integer.toHexString(i));
            String str = buf3.toString();
            BYTE2HEX_PAD[i] = str;
            BYTE2HEX_NOPAD[i] = str;
            i++;
        }
    }

    public static String[] split(String value, char delim) {
        int end = value.length();
        List<String> res = new ArrayList<>();
        int start = 0;
        for (int i = 0; i < end; i++) {
            if (value.charAt(i) == delim) {
                if (start == i) {
                    res.add("");
                } else {
                    res.add(value.substring(start, i));
                }
                start = i + 1;
            }
        }
        if (start == 0) {
            res.add(value);
        } else if (start != end) {
            res.add(value.substring(start, end));
        } else {
            for (int i2 = res.size() - 1; i2 >= 0 && res.get(i2).isEmpty(); i2--) {
                res.remove(i2);
            }
        }
        return (String[]) res.toArray(new String[res.size()]);
    }

    public static String byteToHexStringPadded(int value) {
        return BYTE2HEX_PAD[value & 255];
    }

    public static <T extends Appendable> T byteToHexStringPadded(T buf, int value) {
        try {
            buf.append(byteToHexStringPadded(value));
        } catch (IOException e) {
            PlatformDependent.throwException(e);
        }
        return buf;
    }

    public static String toHexStringPadded(byte[] src) {
        return toHexStringPadded(src, 0, src.length);
    }

    public static String toHexStringPadded(byte[] src, int offset, int length) {
        return ((StringBuilder) toHexStringPadded(new StringBuilder(length << 1), src, offset, length)).toString();
    }

    public static <T extends Appendable> T toHexStringPadded(T t, byte[] bArr) {
        return (T) toHexStringPadded(t, bArr, 0, bArr.length);
    }

    public static <T extends Appendable> T toHexStringPadded(T dst, byte[] src, int offset, int length) {
        int end = offset + length;
        for (int i = offset; i < end; i++) {
            byteToHexStringPadded(dst, src[i]);
        }
        return dst;
    }

    public static String byteToHexString(int value) {
        return BYTE2HEX_NOPAD[value & 255];
    }

    public static <T extends Appendable> T byteToHexString(T buf, int value) {
        try {
            buf.append(byteToHexString(value));
        } catch (IOException e) {
            PlatformDependent.throwException(e);
        }
        return buf;
    }

    public static String toHexString(byte[] src) {
        return toHexString(src, 0, src.length);
    }

    public static String toHexString(byte[] src, int offset, int length) {
        return ((StringBuilder) toHexString(new StringBuilder(length << 1), src, offset, length)).toString();
    }

    public static <T extends Appendable> T toHexString(T t, byte[] bArr) {
        return (T) toHexString(t, bArr, 0, bArr.length);
    }

    public static <T extends Appendable> T toHexString(T dst, byte[] src, int offset, int length) {
        if (!$assertionsDisabled && length < 0) {
            throw new AssertionError();
        }
        if (length != 0) {
            int end = offset + length;
            int endMinusOne = end - 1;
            int i = offset;
            while (i < endMinusOne && src[i] == 0) {
                i++;
            }
            int i2 = i + 1;
            byteToHexString(dst, src[i]);
            int remaining = end - i2;
            toHexStringPadded(dst, src, i2, remaining);
        }
        return dst;
    }

    public static String simpleClassName(Object o) {
        return o == null ? "null_object" : simpleClassName(o.getClass());
    }

    public static String simpleClassName(Class<?> clazz) {
        if (clazz == null) {
            return "null_class";
        }
        Package pkg = clazz.getPackage();
        if (pkg != null) {
            return clazz.getName().substring(pkg.getName().length() + 1);
        }
        return clazz.getName();
    }

    private StringUtil() {
    }
}
