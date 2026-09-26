package com.netease.mpay.d.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.f;

/* loaded from: classes.dex */
class h extends com.netease.mpay.d.a.a.r {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, String str) {
        super(str);
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.d.a.a.k
    public void a() {
        this.a.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.d.a.a.k
    public void a(String str) {
        this.a.b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.d.a.a.k
    public void b() {
        this.a.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.d.a.a.r
    public void c() {
        f.d dVar;
        dVar = this.a.d;
        dVar.a();
    }
}
