package com.netease.mpay;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.af;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jh implements af.b {
    final /* synthetic */ jg a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jh(jg jgVar) {
        this.a = jgVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.af.b
    public void a(b.a aVar, String str) {
        TextView textView;
        if (aVar.a()) {
            this.a.b(str);
        } else {
            textView = this.a.m;
            textView.setText(RIdentifier.h.dU);
        }
    }

    @Override // com.netease.mpay.f.af.b
    public void a(com.netease.mpay.server.response.ah ahVar, Bitmap bitmap) {
        TextView textView;
        TextView textView2;
        Resources resources;
        TextView textView3;
        View view;
        TextView textView4;
        TextView textView5;
        com.netease.mpay.b.s sVar;
        if (ahVar == null || this.a.a.isFinishing()) {
            return;
        }
        if (ahVar.c == null) {
            textView = this.a.m;
            textView.setText(RIdentifier.h.dU);
            return;
        }
        textView2 = this.a.o;
        Locale locale = Locale.getDefault();
        resources = this.a.e;
        textView2.setText(String.format(locale, "%d%s", ahVar.c, resources.getString(RIdentifier.h.cv)));
        textView3 = this.a.m;
        textView3.setVisibility(8);
        view = this.a.n;
        view.setVisibility(0);
        textView4 = this.a.o;
        textView4.setVisibility(0);
        FragmentActivity fragmentActivity = this.a.a;
        textView5 = this.a.p;
        sVar = this.a.d;
        OrderInit.a(fragmentActivity, textView5, sVar.j());
    }
}
