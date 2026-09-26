package com.netease.mpay;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: com.netease.mpay.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {
    public static boolean a = false;
    private static a b = a.UNKNOWN;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mpay.do$a */
    /* loaded from: classes.dex */
    public enum a {
        UNKNOWN,
        INSTALLED,
        NOT_INSTALLED;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mpay.do$b */
    /* loaded from: classes.dex */
    public static class b {
        String a;
        String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        boolean a() {
            return TextUtils.equals(new SimpleDateFormat("yyyy-MM-dd").format(new Date()), this.b) && TextUtils.equals(this.a, "277FC6468566CA8C4495D13310441DFA");
        }
    }

    public Cdo() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private static b a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            byte[] byteArray = packageInfo.signatures[0].toByteArray();
            MessageDigest messageDigest = MessageDigest.getInstance("Md5");
            messageDigest.update(byteArray);
            byte[] digest = messageDigest.digest();
            char[] cArr = {'F', 'E', 'D', 'C', 'B', 'A', '9', '8', '7', '6', '5', '4', '3', '2', '1', '0'};
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (int i = 0; i < digest.length; i++) {
                sb.append(cArr[(digest[i] & 240) >>> 4]);
                sb.append(cArr[digest[i] & 15]);
            }
            return new b(sb.toString(), packageInfo.versionName);
        } catch (Exception e) {
            a((Throwable) e);
            return null;
        }
    }

    public static void a(Context context) {
        String str = context.getPackageName() + ".ps.tools.debug";
        synchronized (Cdo.class) {
            if (b != a.UNKNOWN) {
                return;
            }
            b a2 = a(context, str);
            b = (a2 == null || !a2.a()) ? a.NOT_INSTALLED : a.INSTALLED;
            if (a.INSTALLED == b) {
                bk.b = true;
            }
        }
    }

    private static void a(Object obj) {
        if (a) {
            if (obj == null) {
                Log.d("MPayDebug", "null");
                return;
            }
            if (obj instanceof String) {
                Log.d("MPayDebug", "" + obj);
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            Class<?> cls = obj.getClass();
            stringBuffer.append(obj.getClass().getName() + "\n");
            try {
                Field[] fields = cls.getFields();
                for (Field field : fields) {
                    stringBuffer.append("" + field.getName() + ": " + field.get(obj) + "\t");
                }
                Log.d("MPayDebug", stringBuffer.toString());
            } catch (IllegalAccessException e) {
                a((Throwable) e);
            } catch (IllegalArgumentException e2) {
                a((Throwable) e2);
            } catch (SecurityException e3) {
                a((Throwable) e3);
            }
        }
    }

    public static final void a(String str) {
        if (a) {
            int length = str.length();
            if (length <= 4000) {
                Log.d("MPayDebug", str);
                return;
            }
            for (int i = 0; i < length; i += 4000) {
                Log.d("MPayDebug", new String(str.getBytes(), i, Math.min(length - i, 4000)));
            }
        }
    }

    public static void a(String str, String str2, Context context, boolean z) {
        if (z) {
            Log.i("MpayDebug", str2);
            if (context == null || Looper.myLooper() != Looper.getMainLooper()) {
                return;
            }
            new com.netease.mpay.widget.s(context).a(str2, context.getString(RIdentifier.h.j), null, null, null, true, null, str);
        }
    }

    public static void a(String str, Object... objArr) {
        a("\n\n\n=========== " + str + " ===========\n");
        for (Object obj : objArr) {
            a(obj);
        }
    }

    public static void a(Throwable th) {
        if (a) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            stringWriter.flush();
            a(stringWriter.toString());
        }
    }

    public static void a(boolean z) {
        synchronized (Cdo.class) {
            if (a.INSTALLED != b) {
                bk.b = Boolean.valueOf(z);
            }
        }
    }

    public static void b(String str) {
        Log.i("MpayDebug", str);
    }

    public static void b(Throwable th) {
        if (bk.b.booleanValue() || a.INSTALLED == b) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            stringWriter.flush();
            c(stringWriter.toString());
        }
    }

    public static void c(String str) {
        if (bk.b.booleanValue() || a.INSTALLED == b) {
            Log.i("MpayDebug", str);
        }
    }
}
