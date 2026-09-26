package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class as extends com.netease.mpay.f.a.d {
    private String a;
    private String b;

    public as(Activity activity, String str, String str2, String str3, String str4, com.netease.mpay.f.a.b bVar, boolean z) {
        super(activity, str, str2, bVar);
        this.a = str3;
        this.b = str4;
        if (z) {
            super.d();
        } else {
            super.c();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        if ("uppay".equals(r1.a) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        if (com.netease.mpay.bj.a(r6.c) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0064, code lost:
    
        r2.remove();
     */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.netease.mpay.server.response.OrderInit b(com.netease.mpay.f.a.d.C0045d r7) {
        /*
            r6 = this;
            com.netease.mpay.server.d r0 = new com.netease.mpay.server.d
            android.app.Activity r1 = r6.c
            java.lang.String r2 = r6.d
            java.lang.String r3 = r6.e
            r0.<init>(r1, r2, r3)
            com.netease.mpay.server.a.an r1 = new com.netease.mpay.server.a.an
            java.lang.String r2 = r6.d
            com.netease.mpay.e.b.f r3 = r7.a()
            java.lang.String r3 = r3.j
            java.lang.String r4 = r6.a
            java.lang.String r5 = r6.b
            r1.<init>(r2, r3, r4, r5)
            java.lang.Object r0 = r0.a(r1)
            com.netease.mpay.server.response.OrderInit r0 = (com.netease.mpay.server.response.OrderInit) r0
            if (r0 == 0) goto L7e
            java.util.ArrayList r1 = r0.f
            if (r1 == 0) goto L7e
            java.util.ArrayList r1 = r0.f
            java.util.Iterator r2 = r1.iterator()
        L2e:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L7e
            java.lang.Object r1 = r2.next()
            com.netease.mpay.server.response.OrderInit$PayChannel r1 = (com.netease.mpay.server.response.OrderInit.PayChannel) r1
            if (r1 == 0) goto L50
            java.lang.String r3 = "alipay"
            java.lang.String r4 = r1.a
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L50
            boolean r3 = com.netease.mpay.bj.b()
            if (r3 != 0) goto L50
            r2.remove()
            goto L2e
        L50:
            if (r1 == 0) goto L68
            java.lang.String r3 = "uppay"
            java.lang.String r4 = r1.a
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L68
            android.app.Activity r3 = r6.c
            boolean r3 = com.netease.mpay.bj.a(r3)
            if (r3 != 0) goto L68
            r2.remove()
            goto L2e
        L68:
            if (r1 == 0) goto L2e
            java.lang.String r3 = "bankcard"
            java.lang.String r1 = r1.a
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L2e
            boolean r1 = com.netease.mpay.bj.c()
            if (r1 != 0) goto L2e
            r2.remove()
            goto L2e
        L7e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.f.as.b(com.netease.mpay.f.a.d$d):com.netease.mpay.server.response.OrderInit");
    }
}
