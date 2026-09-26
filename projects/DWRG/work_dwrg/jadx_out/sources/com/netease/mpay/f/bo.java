package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class bo extends com.netease.mpay.f.a.d {
    private String a;
    private String b;
    private int j;

    public bo(Activity activity, String str, String str2, String str3, int i) {
        super(activity, str, "webPay", null);
        this.a = str2;
        this.b = str3;
        this.j = i;
        super.f();
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        new com.netease.mpay.server.d(this.c, this.d, "webPay").a(new com.netease.mpay.server.a.au(this.a, this.b, this.j));
        return null;
    }
}
