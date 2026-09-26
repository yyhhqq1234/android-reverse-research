package com.netease.mpay.d.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.f;
import com.netease.mpay.f.am;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k extends am.e {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(f fVar, String str) {
        super(str);
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.am.e
    public void a(String str) {
        f.d dVar;
        f.b bVar;
        dVar = this.a.d;
        bVar = this.a.c;
        dVar.a(((f.e) bVar).d, str);
    }
}
