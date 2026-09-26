package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.q;
import com.netease.mpay.server.response.w;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class l extends q {
    private w.a c;

    public l(String str, w.a aVar, q.a aVar2) {
        super(str, aVar2);
        this.c = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.q
    public void a(Activity activity, String str, View view) {
        ((TextView) view.findViewById(RIdentifier.f.bR)).setText(RIdentifier.h.bf);
        view.findViewById(RIdentifier.f.bU).setVisibility(8);
        View findViewById = view.findViewById(RIdentifier.f.bT);
        findViewById.setVisibility(0);
        a(activity, str, findViewById, this.c.a);
        findViewById.setOnClickListener(new m(this));
    }
}
