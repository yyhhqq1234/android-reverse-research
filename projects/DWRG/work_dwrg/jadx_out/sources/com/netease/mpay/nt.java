package com.netease.mpay;

import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.pull2refresh.a;

/* loaded from: classes.dex */
class nt implements a.i {
    final /* synthetic */ np a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nt(np npVar) {
        this.a = npVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.i
    public void a(View view) {
        ((TextView) view.findViewById(RIdentifier.f.aW)).setText(RIdentifier.h.dt);
    }
}
