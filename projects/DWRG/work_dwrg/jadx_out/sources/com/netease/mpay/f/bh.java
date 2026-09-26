package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.a.d;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bh extends com.netease.mpay.f.a.d {
    private String a;
    private com.netease.mpay.server.response.aa b;
    private String j;
    private a k;
    private com.netease.mpay.e.b.o l;
    private String m;

    /* loaded from: classes.dex */
    public interface a {
        void a(b.a aVar, String str);

        void a(String str, com.netease.mpay.e.b.o oVar);
    }

    public bh(Activity activity, String str, String str2, String str3, com.netease.mpay.server.response.aa aaVar, String str4, a aVar) {
        super(activity, str, str2, null);
        this.a = str3;
        this.b = aaVar;
        this.k = aVar;
        this.j = str4;
        super.c();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        this.l = c0045d.a.c().a(this.a);
        this.m = c0045d.a().j;
        c0045d.a(this.l);
        if (this.l == null || TextUtils.isEmpty(this.l.d)) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.u));
        }
        new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.at(this.b.a, c0045d.b().j, this.l.d, c0045d.a.l().a().b, this.j));
        this.l.m = true;
        this.l.l = true;
        c0045d.a.c().a(this.l, this.e, true);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        new bn(this.c, this.d, this.e).h();
        super.a(bVar, new bi(this));
    }
}
