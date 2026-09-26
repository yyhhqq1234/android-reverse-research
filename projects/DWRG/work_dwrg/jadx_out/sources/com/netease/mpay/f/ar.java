package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class ar extends com.netease.mpay.f.a.d {
    private String a;

    public ar(Activity activity, String str, String str2, String str3, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = str3;
        super.d();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
    
        if ("uppay".equals(r1.g) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
    
        if (com.netease.mpay.bj.a(r5.c) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0062, code lost:
    
        r2.remove();
     */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.netease.mpay.server.response.e b(com.netease.mpay.f.a.d.C0045d r6) {
        /*
            r5 = this;
            com.netease.mpay.server.d r0 = new com.netease.mpay.server.d
            android.app.Activity r1 = r5.c
            java.lang.String r2 = r5.d
            java.lang.String r3 = r5.e
            r0.<init>(r1, r2, r3)
            com.netease.mpay.server.a.h r1 = new com.netease.mpay.server.a.h
            java.lang.String r2 = r5.d
            com.netease.mpay.e.b.f r3 = r6.a()
            java.lang.String r3 = r3.j
            java.lang.String r4 = r5.a
            r1.<init>(r2, r3, r4)
            java.lang.Object r0 = r0.a(r1)
            com.netease.mpay.server.response.e r0 = (com.netease.mpay.server.response.e) r0
            if (r0 == 0) goto L7c
            java.util.ArrayList r1 = r0.b
            if (r1 == 0) goto L7c
            java.util.ArrayList r1 = r0.b
            java.util.Iterator r2 = r1.iterator()
        L2c:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L7c
            java.lang.Object r1 = r2.next()
            com.netease.mpay.server.response.e$b r1 = (com.netease.mpay.server.response.e.b) r1
            if (r1 == 0) goto L4e
            java.lang.String r3 = "alipay"
            java.lang.String r4 = r1.g
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L4e
            boolean r3 = com.netease.mpay.bj.b()
            if (r3 != 0) goto L4e
            r2.remove()
            goto L2c
        L4e:
            if (r1 == 0) goto L66
            java.lang.String r3 = "uppay"
            java.lang.String r4 = r1.g
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L66
            android.app.Activity r3 = r5.c
            boolean r3 = com.netease.mpay.bj.a(r3)
            if (r3 != 0) goto L66
            r2.remove()
            goto L2c
        L66:
            if (r1 == 0) goto L2c
            java.lang.String r3 = "bankcard"
            java.lang.String r1 = r1.g
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L2c
            boolean r1 = com.netease.mpay.bj.c()
            if (r1 != 0) goto L2c
            r2.remove()
            goto L2c
        L7c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.f.ar.b(com.netease.mpay.f.a.d$d):com.netease.mpay.server.response.e");
    }
}
