package com.netease.mpay.e.c.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public class d extends com.netease.mpay.e.c.a.a {
    private String a;
    private String[] d;

    /* loaded from: classes.dex */
    public static class a {
        @SuppressLint({"SdCardPath"})
        public static String a() {
            return c(null);
        }

        public static String a(String str) {
            return b(null, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String b(String[] strArr, String str) {
            return c(strArr) + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(String[] strArr) {
            new File(c(strArr)).mkdirs();
        }

        private static String c(String[] strArr) {
            String path = Environment.getExternalStorageDirectory().getPath();
            if (path == null || path.equals("")) {
                path = "/sdcard";
            }
            StringBuilder sb = new StringBuilder(path);
            sb.append(File.separator);
            sb.append("netease");
            sb.append(File.separator);
            sb.append("mpay");
            sb.append(File.separator);
            sb.append("preference");
            sb.append(File.separator);
            if (strArr != null) {
                for (String str : strArr) {
                    sb.append(str);
                    sb.append(File.separator);
                }
            }
            return sb.toString();
        }
    }

    public d(Context context, String str, String str2) {
        super(context, str);
        String str3;
        this.a = str2;
        try {
            str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            str3 = null;
        }
        if (TextUtils.isEmpty(str3)) {
            this.d = null;
        } else {
            this.d = new String[]{bd.b(bd.a(str3.getBytes()))};
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(String[] strArr, byte[] bArr) {
        FileOutputStream fileOutputStream;
        if (bArr == null) {
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File file = new File(a.b(strArr, this.a));
                if (file.exists()) {
                    file.delete();
                } else {
                    a.b(strArr);
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception e2) {
                    Cdo.a((Throwable) e2);
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Cdo.a((Throwable) e);
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception e4) {
                    Cdo.a((Throwable) e4);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception e5) {
                    Cdo.a((Throwable) e5);
                }
            }
            throw th;
        }
    }

    public static boolean d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(byte[] bArr) {
        a(this.d, bArr);
        a(null, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:2|3)|(1:5)(2:28|(1:30)(2:(2:32|33)|11))|6|7|(2:14|15)|9|10|11|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
    
        r1 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        com.netease.mpay.Cdo.a((java.lang.Throwable) r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        if (r2 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        com.netease.mpay.Cdo.a((java.lang.Throwable) r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] c() {
        /*
            r5 = this;
            r0 = 0
            r1 = 0
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            java.lang.String[] r2 = r5.d     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            java.lang.String r4 = r5.a     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            java.lang.String r2 = com.netease.mpay.e.c.a.d.a.a(r2, r4)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            r3.<init>(r2)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            java.io.File r4 = new java.io.File     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            java.lang.String r2 = r5.a     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            java.lang.String r2 = com.netease.mpay.e.c.a.d.a.a(r2)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            r4.<init>(r2)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            boolean r2 = r3.exists()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            if (r2 == 0) goto L38
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            r2.<init>(r3)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
        L25:
            int r1 = r2.available()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            r2.read(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            r2.close()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            if (r2 == 0) goto L36
            r2.close()     // Catch: java.lang.Exception -> L5f
        L36:
            r0 = r1
        L37:
            return r0
        L38:
            boolean r2 = r4.exists()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            if (r2 == 0) goto L54
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            r2.<init>(r4)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L64
            goto L25
        L44:
            r1 = move-exception
            r2 = r0
        L46:
            com.netease.mpay.Cdo.a(r1)     // Catch: java.lang.Throwable -> L72
            if (r2 == 0) goto L37
            r2.close()     // Catch: java.lang.Exception -> L4f
            goto L37
        L4f:
            r1 = move-exception
            com.netease.mpay.Cdo.a(r1)
            goto L37
        L54:
            if (r0 == 0) goto L37
            r1.close()     // Catch: java.lang.Exception -> L5a
            goto L37
        L5a:
            r1 = move-exception
            com.netease.mpay.Cdo.a(r1)
            goto L37
        L5f:
            r0 = move-exception
            com.netease.mpay.Cdo.a(r0)
            goto L36
        L64:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L67:
            if (r2 == 0) goto L6c
            r2.close()     // Catch: java.lang.Exception -> L6d
        L6c:
            throw r0
        L6d:
            r1 = move-exception
            com.netease.mpay.Cdo.a(r1)
            goto L6c
        L72:
            r0 = move-exception
            goto L67
        L74:
            r1 = move-exception
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.e.c.a.d.c():byte[]");
    }
}
