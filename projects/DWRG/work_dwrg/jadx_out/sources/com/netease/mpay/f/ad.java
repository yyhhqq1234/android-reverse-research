package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class ad extends n {
    public ad(Activity activity, String str, String str2, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public ad c() {
        super.c();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae a(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.ae) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bh(c0045d.a().j, this.b.c, this.b.d));
    }

    @Override // com.netease.mpay.f.a.d
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public ad d() {
        super.d();
        return this;
    }
}
