package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.RoleInfoKeys;
import com.netease.mpay.ck;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.a.d;
import com.netease.mpay.hy;
import com.netease.mpay.widget.RIdentifier;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class bp extends com.netease.mpay.f.a.d {
    private HashMap a;
    private a b;
    private com.netease.mpay.e.b.o j;
    private String k;

    /* loaded from: classes.dex */
    public interface a {
        void a(b.a aVar, String str, String str2);

        void a(com.netease.mpay.server.response.af afVar, String str);
    }

    public bp(Activity activity, String str, String str2, com.netease.mpay.e.b.o oVar, Map map, a aVar) {
        super(activity, str, str2, null);
        this.a = map != null ? new HashMap(map) : null;
        this.b = aVar;
        this.j = oVar;
        this.k = this.c.getString(RIdentifier.h.dZ);
        super.f();
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.af b(d.C0045d c0045d) {
        if (this.a == null) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.cL));
        }
        if (TextUtils.isEmpty((CharSequence) this.a.get(RoleInfoKeys.KEY_ROLE_ID))) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.cK));
        }
        hy.a((String) this.a.get(RoleInfoKeys.KEY_ROLE_ID), (String) this.a.get(RoleInfoKeys.KEY_HOST_ID));
        ck.a.a().a(this.d, (String) this.a.get(RoleInfoKeys.KEY_ROLE_ID), (String) this.a.get(RoleInfoKeys.KEY_HOST_ID));
        if (!c0045d.a.e().a().y) {
            return null;
        }
        if (c0045d.a.i().a(this.j.c, this.a)) {
            this.k = this.c.getString(RIdentifier.h.cM) + this.j.a;
            return new com.netease.mpay.server.response.af(this.a);
        }
        try {
            com.netease.mpay.server.response.af afVar = (com.netease.mpay.server.response.af) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bc(this.j.c, c0045d.a().j, c0045d.a().i, this.j.d, this.a));
            c0045d.a.i().b(this.j.c, this.a);
            this.k = this.c.getString(RIdentifier.h.cN) + this.j.a;
            return afVar;
        } catch (com.netease.mpay.server.a e) {
            throw new com.netease.mpay.server.a(e.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        super.a(bVar, new bq(this));
    }
}
