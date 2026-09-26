package com.netease.mobsecurity.a.b;

import android.content.Context;
import android.text.TextUtils;
import com.netease.mobsecurity.SecException;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class c {
    private static final String a = "lib";
    private static final int b = 5;
    private static final int c = 4096;

    private c() {
    }

    private static File a(Context context) {
        return context.getDir(a, 0);
    }

    public static void a(Context context, String str) throws SecException {
        if (context == null) {
            throw new SecException(101);
        }
        if (TextUtils.isEmpty(str)) {
            throw new SecException(102);
        }
        try {
            System.loadLibrary(str);
        } catch (UnsatisfiedLinkError e) {
            File b2 = b(context, str);
            if (!b2.exists()) {
                c(context, str);
            }
            System.load(b2.getAbsolutePath());
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    private static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    private static File b(Context context, String str) {
        return new File(a(context), System.mapLibraryName(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00dc, code lost:
    
        if (r3 == null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00de, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.io.OutputStream, java.io.Closeable, java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void c(android.content.Context r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mobsecurity.a.b.c.c(android.content.Context, java.lang.String):void");
    }
}
