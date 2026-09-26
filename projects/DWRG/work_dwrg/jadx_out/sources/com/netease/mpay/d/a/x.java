package com.netease.mpay.d.a;

import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.o;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements bd.a {
    final /* synthetic */ o a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(o oVar) {
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.bd.a
    public void a(b.a aVar, String str) {
        o.b bVar;
        bVar = this.a.c;
        bVar.a(str);
    }

    @Override // com.netease.mpay.f.bd.a
    public void a(com.netease.mpay.server.response.w wVar) {
        EditText editText;
        o.b bVar;
        EditText editText2;
        editText = this.a.g;
        if (editText != null) {
            editText2 = this.a.g;
            editText2.setText("");
        }
        bVar = this.a.c;
        bVar.a(wVar);
    }

    @Override // com.netease.mpay.f.bd.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        EditText editText;
        o.b bVar;
        EditText editText2;
        editText = this.a.g;
        if (editText != null) {
            editText2 = this.a.g;
            editText2.setText("");
        }
        bVar = this.a.c;
        bVar.a(str, mVar);
    }
}
