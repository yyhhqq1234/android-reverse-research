package com.netease.mcount;

import android.content.Context;
import android.os.Handler;

/* loaded from: classes.dex */
public class k {
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0009, code lost:
    
        if (com.netease.mcount.r.a(r7) == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void a(android.content.Context r7, boolean r8) {
        /*
            java.lang.Class<com.netease.mcount.k> r3 = com.netease.mcount.k.class
            monitor-enter(r3)
            if (r8 == 0) goto Ld
            boolean r0 = com.netease.mcount.r.a(r7)     // Catch: java.lang.Throwable -> L20
            if (r0 != 0) goto Ld
        Lb:
            monitor-exit(r3)
            return
        Ld:
            com.netease.mcount.e r4 = new com.netease.mcount.e     // Catch: java.lang.Throwable -> L20
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L20
            com.netease.mcount.g r5 = r4.c()     // Catch: java.lang.Throwable -> L20
            if (r5 == 0) goto L1c
            java.util.ArrayList r0 = r5.a     // Catch: java.lang.Throwable -> L20
            if (r0 != 0) goto L23
        L1c:
            r4.e()     // Catch: java.lang.Throwable -> L20
            goto Lb
        L20:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L23:
            java.util.ArrayList r0 = r5.a     // Catch: java.lang.Throwable -> L20
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L20
            r0 = 0
            r2 = r0
        L2b:
            if (r2 >= r1) goto Lb
            java.util.ArrayList r6 = r5.a     // Catch: java.lang.Throwable -> L20 com.netease.mcount.p -> L4a java.lang.Exception -> L4f
            int r0 = r2 + 100
            if (r0 >= r1) goto L48
            int r0 = r2 + 100
        L35:
            java.util.List r0 = r6.subList(r2, r0)     // Catch: java.lang.Throwable -> L20 com.netease.mcount.p -> L4a java.lang.Exception -> L4f
            com.netease.mcount.o r6 = new com.netease.mcount.o     // Catch: java.lang.Throwable -> L20 com.netease.mcount.p -> L4a java.lang.Exception -> L4f
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L20 com.netease.mcount.p -> L4a java.lang.Exception -> L4f
            r6.a(r0)     // Catch: java.lang.Throwable -> L20 com.netease.mcount.p -> L4a java.lang.Exception -> L4f
            r4.a(r0)     // Catch: java.lang.Throwable -> L20 com.netease.mcount.p -> L4a java.lang.Exception -> L4f
        L44:
            int r0 = r2 + 100
            r2 = r0
            goto L2b
        L48:
            r0 = r1
            goto L35
        L4a:
            r0 = move-exception
            com.netease.mcount.r.a(r0)     // Catch: java.lang.Throwable -> L20
            goto L44
        L4f:
            r0 = move-exception
            com.netease.mcount.r.a(r0)     // Catch: java.lang.Throwable -> L20
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mcount.k.a(android.content.Context, boolean):void");
    }

    public static synchronized void a(Handler handler, Context context, boolean z) {
        synchronized (k.class) {
            l lVar = new l(context, z);
            if (handler != null) {
                handler.post(lVar);
            }
        }
    }

    public static boolean a(Context context) {
        return new e(context).b();
    }

    public static synchronized boolean a(Context context, f fVar) {
        synchronized (k.class) {
            try {
                new e(context).a(fVar);
            } catch (Exception e) {
                r.a(e);
            }
        }
        return false;
    }
}
