package com.netease.mpay;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.an;
import com.netease.mpay.view.b;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class fi extends com.netease.mpay.a implements com.netease.mpay.f.a.b {
    private com.netease.mpay.b.a d;
    private com.netease.mpay.e.b.o e;
    private com.netease.mpay.server.response.x f;
    private Resources g;
    private boolean h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        SET_PASS,
        SET_SEC_EMAIL,
        SET_REAL_NAME,
        SECURITY_CENTER;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {
        a a;

        b(@NonNull a aVar) {
            this.a = aVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000d. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
        @android.support.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        com.netease.mpay.view.b.C0053b a(android.app.Activity r11, com.netease.mpay.server.response.x r12) {
            /*
                r10 = this;
                r2 = 1
                r3 = 0
                r1 = -1
                int[] r0 = com.netease.mpay.fk.a
                com.netease.mpay.fi$a r4 = r10.a
                int r4 = r4.ordinal()
                r0 = r0[r4]
                switch(r0) {
                    case 1: goto L11;
                    case 2: goto L3e;
                    case 3: goto L50;
                    case 4: goto L7b;
                    default: goto L10;
                }
            L10:
                return r3
            L11:
                int r0 = com.netease.mpay.widget.RIdentifier.h.dr
                int r5 = com.netease.mpay.widget.RIdentifier.e.C
                if (r12 == 0) goto L86
                boolean r1 = r12.d
                if (r1 == 0) goto L1d
                int r0 = com.netease.mpay.widget.RIdentifier.h.i
            L1d:
                boolean r1 = r12.d
                if (r1 == 0) goto L3b
                int r1 = com.netease.mpay.widget.RIdentifier.h.dy
            L23:
                r4 = r1
                r1 = r0
            L25:
                com.netease.mpay.view.b$b r0 = new com.netease.mpay.view.b$b
                if (r1 <= 0) goto L82
                java.lang.String r1 = r11.getString(r1)
            L2d:
                r6 = 0
                if (r4 <= 0) goto L84
                java.lang.String r7 = r11.getString(r4)
            L34:
                r4 = r3
                r8 = r3
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
                r3 = r0
                goto L10
            L3b:
                int r1 = com.netease.mpay.widget.RIdentifier.h.dq
                goto L23
            L3e:
                int r4 = com.netease.mpay.widget.RIdentifier.h.dx
                int r5 = com.netease.mpay.widget.RIdentifier.e.B
                if (r12 == 0) goto L89
                boolean r0 = r12.g
                if (r0 == 0) goto L4d
                int r0 = com.netease.mpay.widget.RIdentifier.h.dg
            L4a:
                r1 = r4
                r4 = r0
                goto L25
            L4d:
                int r0 = com.netease.mpay.widget.RIdentifier.h.dn
                goto L4a
            L50:
                int r0 = com.netease.mpay.widget.RIdentifier.h.du
                int r5 = com.netease.mpay.widget.RIdentifier.e.D
                if (r12 == 0) goto L86
                boolean r4 = r12.e
                if (r4 != 0) goto L5f
                int r1 = com.netease.mpay.widget.RIdentifier.h.dq
                r4 = r1
                r1 = r0
                goto L25
            L5f:
                r4 = 2
                int r6 = r12.f
                if (r4 != r6) goto L69
                int r1 = com.netease.mpay.widget.RIdentifier.h.dC
                r4 = r1
                r1 = r0
                goto L25
            L69:
                int r4 = r12.f
                if (r2 != r4) goto L72
                int r1 = com.netease.mpay.widget.RIdentifier.h.dB
                r4 = r1
                r1 = r0
                goto L25
            L72:
                int r4 = r12.f
                if (r4 != 0) goto L86
                int r1 = com.netease.mpay.widget.RIdentifier.h.dD
                r4 = r1
                r1 = r0
                goto L25
            L7b:
                int r0 = com.netease.mpay.widget.RIdentifier.h.dw
                int r5 = com.netease.mpay.widget.RIdentifier.e.E
                r4 = r1
                r1 = r0
                goto L25
            L82:
                r1 = r3
                goto L2d
            L84:
                r7 = r3
                goto L34
            L86:
                r4 = r1
                r1 = r0
                goto L25
            L89:
                r9 = r1
                r1 = r4
                r4 = r9
                goto L25
            */
            throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.fi.b.a(android.app.Activity, com.netease.mpay.server.response.x):com.netease.mpay.view.b$b");
        }
    }

    public fi(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.f = null;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(an.a aVar) {
        com.netease.mpay.b.a(this.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(this.d.d(), aVar), null, 1);
    }

    private void b(com.netease.mpay.server.response.x xVar) {
        if (xVar == null) {
            new com.netease.mpay.f.ak(this.a, this.d.a(), this.d.b(), this.e, this).h();
        }
        GridView gridView = (GridView) this.a.findViewById(RIdentifier.f.Z);
        gridView.setVisibility(0);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(a.SET_PASS);
        arrayList2.add(a.SET_SEC_EMAIL);
        arrayList2.add(a.SET_REAL_NAME);
        arrayList2.add(a.SECURITY_CENTER);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            b bVar = new b((a) it.next());
            arrayList.add(new b.c(bVar.a(this.a, xVar), bVar));
        }
        int i = (arrayList.size() <= 1 || !bj.a(this.d.c().mScreenOrientation)) ? 1 : 2;
        gridView.setNumColumns(i);
        gridView.setAdapter((ListAdapter) new com.netease.mpay.view.b(this.a, this.d.a(), i, arrayList, new fj(this, xVar)));
    }

    private void s() {
        this.a.setContentView(RIdentifier.g.F);
        ((TextView) this.a.findViewById(RIdentifier.f.ay)).setText(this.e.a);
        b(this.f);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.a(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (alVar instanceof com.netease.mpay.b.ap) {
            new com.netease.mpay.b.ap().a(this.a);
        }
        if (i == 1) {
            new com.netease.mpay.f.ak(this.a, this.d.a(), this.d.b(), this.e, this).h();
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        boolean z = this.g.getBoolean(RIdentifier.b.a);
        if (this.h != z) {
            this.h = z;
            s();
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        switch (aVar) {
            case ERR_LOGOUT:
                new com.netease.mpay.b.ap().a(this.a);
                return;
            default:
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.x xVar) {
        this.f = xVar;
        b(xVar);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.g = this.a.getResources();
        super.a(this.g.getString(RIdentifier.h.dl));
        this.h = this.g.getBoolean(RIdentifier.b.a);
        this.e = new com.netease.mpay.e.b(this.a, this.d.a()).c().b(this.d.b());
        s();
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        this.a.finish();
        return true;
    }
}
