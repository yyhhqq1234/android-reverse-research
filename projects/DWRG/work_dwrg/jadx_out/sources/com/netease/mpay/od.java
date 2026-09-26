package com.netease.mpay;

import android.content.res.Resources;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.oc;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class od implements oc.a {
    final /* synthetic */ oc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public od(oc ocVar) {
        this.a = ocVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.oc.a
    public void a() {
        this.a.v();
    }

    @Override // com.netease.mpay.oc.a
    public void a(com.netease.mpay.e.b.u uVar, String str) {
        com.netease.mpay.f.an a;
        View view;
        View view2;
        boolean z;
        this.a.i = uVar;
        c.C0059c w = this.a.w();
        oc ocVar = this.a;
        String str2 = uVar.f;
        if (!uVar.g || str == null) {
            str = null;
        }
        a = ocVar.a(str2, str);
        w.a(a);
        view = this.a.h;
        if (view == null || uVar.g) {
            return;
        }
        this.a.j = (uVar.h == null || uVar.h.equals("") || !com.netease.mpay.sharer.d.a(this.a.a)) ? false : true;
        view2 = this.a.h;
        z = this.a.j;
        view2.setVisibility(z ? 0 : 8);
    }

    @Override // com.netease.mpay.oc.a
    public void a(String str) {
        com.netease.mpay.widget.s sVar;
        Resources resources;
        if (this.a.a.isFinishing()) {
            return;
        }
        if (str == null || str.equals("")) {
            this.a.a.finish();
            return;
        }
        sVar = this.a.g;
        resources = this.a.f;
        sVar.b(str, resources.getString(RIdentifier.h.cJ), new oe(this));
    }
}
