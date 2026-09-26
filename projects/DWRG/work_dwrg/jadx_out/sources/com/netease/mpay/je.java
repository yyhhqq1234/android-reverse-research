package com.netease.mpay;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class je extends com.netease.mpay.f.af {
    final /* synthetic */ jb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je(jb jbVar, Activity activity, String str, String str2, af.a aVar, af.b bVar) {
        super(activity, str, str2, aVar, bVar);
        this.a = jbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a() {
        TextView textView;
        View view;
        TextView textView2;
        TextView textView3;
        super.a();
        this.a.p = null;
        textView = this.a.l;
        textView.setVisibility(0);
        view = this.a.i;
        view.setVisibility(8);
        textView2 = this.a.j;
        textView2.setVisibility(8);
        textView3 = this.a.k;
        textView3.setVisibility(8);
    }
}
