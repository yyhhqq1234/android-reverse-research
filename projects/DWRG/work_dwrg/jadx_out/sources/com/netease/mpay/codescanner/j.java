package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.codescanner.CodeScanner;
import com.netease.mpay.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements a.InterfaceC0054a {
    final /* synthetic */ boolean a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar, boolean z) {
        this.b = eVar;
        this.a = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.a.InterfaceC0054a
    public void a() {
        CodeScanner codeScanner;
        com.netease.mpay.b.v vVar;
        if (!this.a) {
            codeScanner = this.b.e;
            codeScanner.resumeDecode();
        } else {
            this.b.a.finish();
            vVar = this.b.d;
            vVar.e.onDialogFinish();
        }
    }
}
