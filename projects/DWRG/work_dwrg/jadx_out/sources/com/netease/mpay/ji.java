package com.netease.mpay;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ji extends com.netease.mpay.f.af {
    final /* synthetic */ jg a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ji(jg jgVar, Activity activity, String str, String str2, af.a aVar, af.b bVar) {
        super(activity, str, str2, aVar, bVar);
        this.a = jgVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a() {
        View view;
        TextView textView;
        TextView textView2;
        TextView textView3;
        super.a();
        view = this.a.n;
        view.setVisibility(8);
        textView = this.a.o;
        textView.setVisibility(8);
        textView2 = this.a.p;
        textView2.setVisibility(8);
        textView3 = this.a.m;
        textView3.setVisibility(0);
    }
}
