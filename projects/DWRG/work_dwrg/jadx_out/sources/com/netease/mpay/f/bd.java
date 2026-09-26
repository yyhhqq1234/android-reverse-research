package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
public class bd extends au {
    private String j;
    private String k;
    private boolean l;
    private a m;
    private com.netease.mpay.server.response.w n;

    /* loaded from: classes.dex */
    public interface a {
        void a(b.a aVar, String str);

        void a(com.netease.mpay.server.response.w wVar);

        void a(String str, com.netease.mpay.server.response.m mVar);
    }

    public bd(Activity activity, String str, String str2, String str3, String str4, boolean z, a aVar) {
        super(activity, str, str2, z, true, null);
        this.j = str3;
        this.k = str4;
        this.l = z;
        this.m = aVar;
        this.n = null;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        String a2 = bVar.a.e().a(this.c);
        com.netease.mpay.server.response.w wVar = (com.netease.mpay.server.response.w) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.aj(bVar.c.j, this.e, this.j, this.k, a2, this.l));
        if (wVar.c != null && wVar.c.size() >= 1 && !this.l) {
            this.n = wVar;
            throw new com.netease.mpay.server.a("");
        }
        com.netease.mpay.server.response.m mVar = this.l ? (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.y(bVar.c.j, this.e, this.j, wVar.a, a2, bVar.d.c, bVar.d.d)) : (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ag(bVar.c.j, this.e, this.j, wVar.a, null, a2));
        a(bVar, mVar, new com.netease.mpay.e.b.x(true), !mVar.u.booleanValue());
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.au
    public void a(a.b bVar, au.a aVar) {
        super.a(bVar, new be(this));
    }
}
