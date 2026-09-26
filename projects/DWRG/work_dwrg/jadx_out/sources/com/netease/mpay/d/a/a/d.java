package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cq;
import com.netease.mpay.d.a.a.e;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class d extends e {
    private String d;
    private boolean e;

    public d(String str, boolean z, e.a aVar) {
        super(aVar);
        this.d = str;
        this.e = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.e
    public View a(Activity activity, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View a = super.a(activity, layoutInflater, viewGroup);
        a.findViewById(RIdentifier.f.aM).setVisibility(8);
        a.findViewById(RIdentifier.f.F).setVisibility(8);
        if (!TextUtils.isEmpty(this.d)) {
            this.b.setText(cq.d(this.d));
        }
        return a;
    }

    @Override // com.netease.mpay.d.a.a.e
    boolean a() {
        return this.e;
    }
}
