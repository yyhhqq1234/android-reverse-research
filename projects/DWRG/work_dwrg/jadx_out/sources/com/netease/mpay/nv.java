package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.y;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.pull2refresh.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nv implements a.h {
    final /* synthetic */ np a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nv(np npVar) {
        this.a = npVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.h
    public void a(View view) {
        com.netease.mpay.b.a aVar;
        com.netease.mpay.b.a aVar2;
        ((TextView) view.findViewById(RIdentifier.f.aW)).setText(RIdentifier.h.cG);
        FragmentActivity fragmentActivity = this.a.a;
        aVar = this.a.d;
        String a = aVar.a();
        aVar2 = this.a.d;
        new com.netease.mpay.f.y(fragmentActivity, a, aVar2.b(), y.a.FETCH_NEW, new nw(this)).h();
    }
}
