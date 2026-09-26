package im.yixin.sdk.util;

import android.os.Bundle;
import com.alipay.sdk.sys.a;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;

/* loaded from: classes.dex */
public class StringUtil {
    public static boolean isBlank(CharSequence cs) {
        int strLen;
        if (cs == null || (strLen = cs.length()) == 0) {
            return true;
        }
        for (int i = 0; i < strLen; i++) {
            if (!Character.isWhitespace(cs.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNotBlank(CharSequence cs) {
        return !isBlank(cs);
    }

    public static String substringByByteCount(String str, int byteCount, boolean needDots) {
        if (str == null) {
            return "";
        }
        String str2 = CR2Blank(str);
        int curNum = 0;
        StringBuilder result = new StringBuilder();
        char[] tempChar = str2.toCharArray();
        boolean trimed = false;
        int i = 0;
        while (true) {
            if (i >= tempChar.length) {
                break;
            }
            boolean isAscii = tempChar[i] <= 127;
            curNum += isAscii ? 1 : 2;
            if (curNum > byteCount) {
                trimed = true;
                break;
            }
            result.append(tempChar[i]);
            i++;
        }
        if (needDots && trimed) {
            result.append("...");
        }
        return result.toString();
    }

    public static String substringByCharCount(String str, int charCount, boolean needDots) {
        if (str == null) {
            return "";
        }
        if (str.length() <= charCount) {
            return str;
        }
        String result = str.substring(0, charCount);
        if (needDots) {
            return String.valueOf(result) + "...";
        }
        return result;
    }

    public static String CR2Blank(String src) {
        if (src == null) {
            src = "";
        }
        return src.replaceAll("\\n", " ");
    }

    public static Bundle parseUrl(String url) {
        try {
            URL u = new URL(url);
            Bundle b = decodeUrl(u.getQuery());
            b.putAll(decodeUrl(u.getRef()));
            return b;
        } catch (MalformedURLException e) {
            return new Bundle();
        }
    }

    public static Bundle decodeUrl(String s) {
        Bundle params = new Bundle();
        if (s != null) {
            String[] array = s.split(a.b);
            for (String parameter : array) {
                String[] v = parameter.split("=");
                try {
                    params.putString(URLDecoder.decode(v[0], "UTF-8"), URLDecoder.decode(v[1], "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        }
        return params;
    }
}
