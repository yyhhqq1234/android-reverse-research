package com.netease.mpay;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.aj;
import com.netease.mpay.e.b.al;
import com.netease.mpay.e.b.r;
import com.netease.mpay.view.b;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class nn {
    private Context a;
    private String b;
    private com.netease.mpay.e.b c;
    private int d;
    private String e;
    private com.netease.mpay.e.b.aj f;
    private com.netease.mpay.e.b.al g;
    private a h;

    /* loaded from: classes.dex */
    public interface a {
        void a(aj.a aVar);
    }

    public nn(Context context, String str, String str2, com.netease.mpay.e.b.aj ajVar, com.netease.mpay.e.b.al alVar, int i, a aVar) {
        this.a = context;
        this.b = str;
        this.c = new com.netease.mpay.e.b(context, str);
        this.d = i;
        this.e = str2;
        this.f = ajVar;
        this.g = alVar;
        this.h = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private int a(String str, boolean z) {
        return "forum".equals(str) ? z ? RIdentifier.e.ag : RIdentifier.e.ah : "deposit".equals(str) ? z ? RIdentifier.e.an : RIdentifier.e.ao : "guest_bind".equals(str) ? RIdentifier.e.ab : "mobile_manager".equals(str) ? RIdentifier.e.ak : "mail".equals(str) ? z ? RIdentifier.e.al : RIdentifier.e.am : "feedback".equals(str) ? z ? RIdentifier.e.ae : RIdentifier.e.af : "gamecenter".equals(str) ? z ? RIdentifier.e.ai : RIdentifier.e.aj : "forget_passwd".equals(str) ? RIdentifier.e.C : "logout".equals(str) ? RIdentifier.e.ad : RIdentifier.e.ac;
    }

    public com.netease.mpay.view.b a() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f.b.iterator();
        while (it.hasNext()) {
            aj.a aVar = (aj.a) it.next();
            al.a a2 = this.g.a(aVar.a);
            boolean z2 = aj.b.GREY != aVar.c;
            if ("mail".equals(aVar.a)) {
                r a3 = this.c.a().a(this.e);
                z = a3 != null ? a3.b() : false;
            } else {
                z = a2 != null && a2.b && a2.a;
            }
            arrayList.add(new b.c(new b.C0053b("guest_bind".equals(aVar.a) ? this.a.getString(RIdentifier.h.e) : aVar.b, z2, aVar.f, aVar.g, a(aVar.a, z2), z, null, aVar.d), aVar));
        }
        return new com.netease.mpay.view.b(this.a, this.b, this.d, arrayList, new no(this));
    }
}
