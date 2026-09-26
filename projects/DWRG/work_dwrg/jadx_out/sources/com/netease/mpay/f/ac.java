package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ac extends n {
    private ArrayList a;
    private int j;

    public ac(Activity activity, String str, String str2, ArrayList arrayList, int i, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = arrayList;
        this.j = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ad a(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.ad) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ay(c0045d.a().j, this.b.c, this.b.d, this.a, this.j));
    }
}
