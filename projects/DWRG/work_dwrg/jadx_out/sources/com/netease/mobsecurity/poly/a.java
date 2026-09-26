package com.netease.mobsecurity.poly;

import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.IBinder;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class a {
    public static int o = 2;
    public static int p = 0;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0053 -> B:9:0x0049). Please report as a decompilation issue!!! */
    public static String a(int i) {
        String str;
        Class<?> cls;
        try {
            cls = Class.forName(d("p?x\\~8x\u0000~\"2}t#jGr4QO\u007f0{Kc", "\u0011Q\u001c."));
        } catch (Exception e) {
        }
        if (cls != null) {
            Method declaredMethod = cls.getDeclaredMethod(d("}SL\u0000\u007fDN:yS", "\u001a68S"), String.class);
            declaredMethod.setAccessible(true);
            b a = c.a((IBinder) declaredMethod.invoke(cls, d("7EOR0PTH<\\I[1", "^5'=")));
            if (a != null) {
                str = i == 1 ? a.a() : i == 2 ? a.b() : "";
                return str;
            }
        }
        str = null;
        return str;
    }

    public static String b(Context context) {
        int i;
        int i2 = 0;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
            i2 = point.x;
            i = point.y;
        } else {
            i = 0;
        }
        if (Build.VERSION.SDK_INT < 17) {
            i2 = defaultDisplay.getWidth();
            i = defaultDisplay.getHeight();
        }
        return i2 + "*" + i;
    }

    public static int c(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }

    public static String d(String str, String str2) {
        char[] charArray = str2.toCharArray();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            stringBuffer.append((char) (str.charAt(i) ^ charArray[i % charArray.length]));
        }
        return stringBuffer.toString();
    }
}
