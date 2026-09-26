package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class bj extends com.netease.mpay.f.a.d {
    int a;
    private String b;
    private String j;
    private String k;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str);
    }

    public bj(Activity activity, String str, String str2, String str3, String str4, String str5, int i, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.b = str3;
        this.j = str4;
        this.k = str5;
        this.a = i;
        super.c();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(Activity activity, String str, String str2, String str3, String str4, String str5, a aVar) {
        com.netease.mpay.widget.e eVar = new com.netease.mpay.widget.e(activity);
        eVar.a(str3, new bk(activity, str, str2, str4, str5, eVar, aVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(d.C0045d c0045d) {
        com.netease.mpay.server.response.ae aeVar = (com.netease.mpay.server.response.ae) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bb(c0045d.a().j, this.j, this.k, this.a));
        com.netease.mpay.e.b.o a2 = c0045d.a.c().a(this.b);
        if (aeVar != null && !TextUtils.isEmpty(aeVar.a)) {
            a2.d = aeVar.a;
            com.netease.mpay.e.b.o c = c0045d.c();
            c0045d.a.c().a(a2, this.e, c != null && TextUtils.equals(c.c, a2.c));
        }
        return aeVar;
    }
}
