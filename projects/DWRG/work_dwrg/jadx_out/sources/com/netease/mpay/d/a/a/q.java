package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public abstract class q {
    protected String a;
    protected a b;

    /* loaded from: classes.dex */
    public interface a {
        void a(String str);
    }

    public q(String str, a aVar) {
        this.a = str;
        this.b = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View a(Activity activity, String str, View view, String str2) {
        com.netease.mpay.server.response.u.a(activity, str).b(1).a(activity, str, (ImageView) view.findViewById(RIdentifier.f.aE));
        ((TextView) view.findViewById(RIdentifier.f.aF)).setText(str2);
        return view;
    }

    public abstract void a(Activity activity, String str, View view);
}
