package com.netease.mpay;

import android.app.Activity;
import android.content.res.Resources;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class cw {
    private Activity a;
    private String b;
    private String c;
    private boolean d;
    private Resources e;
    private com.netease.mpay.widget.s f;
    private com.netease.mpay.f.aq g;
    private au.a h;

    public cw(Activity activity, String str, String str2, boolean z, au.a aVar) {
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = this.a.getResources();
        this.f = new com.netease.mpay.widget.s(this.a);
        this.h = aVar;
        this.g = new com.netease.mpay.f.aq(this.a, this.b, this.c, aVar);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a() {
        com.netease.mpay.server.response.s a = com.netease.mpay.server.response.u.a(this.a, this.b).a(2);
        if (!a.b) {
            if (this.h != null) {
                this.h.a(b.a.ERR_DEFAULT, this.a.getString(RIdentifier.h.ah));
            }
        } else {
            String a2 = a.a(this.a);
            if (!this.d || TextUtils.isEmpty(a2)) {
                this.g.h();
            } else {
                this.f.a(cq.a(this.a, this.b, com.netease.mpay.e.b.j() ? RIdentifier.h.az : RIdentifier.h.aA), a2, new cx(this), this.e.getString(RIdentifier.h.J), new cy(this), true);
            }
        }
    }
}
