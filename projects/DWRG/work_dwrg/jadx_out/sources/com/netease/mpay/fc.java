package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fc implements af.d {
    final /* synthetic */ af.e a;
    final /* synthetic */ ex b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fc(ex exVar, af.e eVar) {
        this.b = exVar;
        this.a = eVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000d. Please report as an issue. */
    @Override // com.netease.mpay.d.a.af.d
    public void a() {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b bVar2;
        com.netease.mpay.e.b bVar3;
        switch (this.a.c) {
            case LOGIN:
                bVar = this.b.e;
                com.netease.mpay.e.b.o a = bVar.c().a(this.a.d);
                bVar2 = this.b.e;
                String str = bVar2.d().a().j;
                if (a != null) {
                    a.m = true;
                    bVar3 = this.b.e;
                    bVar3.c().a(a, this.a.b, true);
                    this.b.a(new com.netease.mpay.b.ao(str, a));
                    return;
                }
            default:
                this.b.u();
                return;
        }
    }

    @Override // com.netease.mpay.fh
    public void a(String str) {
        this.b.c(str);
    }

    @Override // com.netease.mpay.fh
    public void c() {
        this.b.w();
    }

    @Override // com.netease.mpay.fh
    public void d() {
        com.netease.mpay.e.b bVar;
        switch (this.a.c) {
            case LOGIN:
                if (!this.a.e.booleanValue()) {
                    bVar = this.b.e;
                    if (bVar.c().a(this.a.d) != null) {
                        this.b.t();
                        break;
                    }
                }
                this.b.u();
                break;
        }
        this.b.u();
    }
}
