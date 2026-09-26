package com.netease.mpay;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.af;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jd implements af.b {
    final /* synthetic */ jb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jd(jb jbVar) {
        this.a = jbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.af.b
    public void a(b.a aVar, String str) {
        TextView textView;
        if (aVar.a()) {
            this.a.a(str, true);
        } else {
            textView = this.a.l;
            textView.setText(RIdentifier.h.dU);
        }
    }

    @Override // com.netease.mpay.f.af.b
    public void a(com.netease.mpay.server.response.ah ahVar, Bitmap bitmap) {
        TextView textView;
        TextView textView2;
        Resources resources;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        if (this.a.a.isFinishing()) {
            return;
        }
        Integer num = ahVar != null ? ahVar.c : null;
        if (num == null) {
            textView = this.a.l;
            textView.setText(RIdentifier.h.dU);
            return;
        }
        textView2 = this.a.j;
        resources = this.a.d;
        textView2.setText(resources.getString(RIdentifier.h.r, num));
        this.a.p = String.valueOf(num);
        textView3 = this.a.j;
        textView3.setVisibility(0);
        FragmentActivity fragmentActivity = this.a.a;
        textView4 = this.a.k;
        OrderInit.a(fragmentActivity, textView4, this.a.e.j());
        textView5 = this.a.l;
        textView5.setVisibility(8);
    }
}
