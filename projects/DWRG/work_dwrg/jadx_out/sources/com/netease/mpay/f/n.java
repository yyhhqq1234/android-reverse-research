package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public abstract class n extends com.netease.mpay.f.a.d {
    protected com.netease.mpay.e.b.o b;

    /* JADX INFO: Access modifiers changed from: protected */
    public n(Activity activity, String str, String str2, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    protected abstract Object a(d.C0045d c0045d);

    @Override // com.netease.mpay.f.a.d
    protected final Object b(d.C0045d c0045d) {
        String string = this.c.getString(RIdentifier.h.u);
        this.b = c0045d.a.c().b(this.e);
        if (this.b == null || TextUtils.isEmpty(this.b.c) || TextUtils.isEmpty(this.b.d)) {
            throw new a.f(string);
        }
        return a(c0045d);
    }
}
