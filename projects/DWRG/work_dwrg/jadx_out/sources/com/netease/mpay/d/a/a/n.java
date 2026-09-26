package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.q;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.af;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class n extends q {
    private ArrayList c;

    public n(String str, ArrayList arrayList, q.a aVar) {
        super(str, aVar);
        this.c = arrayList;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.q
    public void a(Activity activity, String str, View view) {
        Resources resources = activity.getResources();
        TextView textView = (TextView) view.findViewById(RIdentifier.f.bR);
        textView.setText(RIdentifier.h.bf);
        view.findViewById(RIdentifier.f.bT).setVisibility(8);
        AdapterView adapterView = (AdapterView) view.findViewById(RIdentifier.f.bU);
        adapterView.setVisibility(0);
        new af.b(activity, adapterView, this.c, RIdentifier.g.af, new o(this, activity, str));
        adapterView.setOnItemClickListener(new p(this));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        layoutParams.topMargin = resources.getDimensionPixelOffset(resources.getBoolean(RIdentifier.b.a) ? RIdentifier.d.q : RIdentifier.d.r);
        textView.setLayoutParams(layoutParams);
        int dimensionPixelSize = resources.getDimensionPixelSize(RIdentifier.d.n);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(RIdentifier.d.a);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(RIdentifier.d.a);
        int i = resources.getBoolean(RIdentifier.b.a) ? dimensionPixelSize + (dimensionPixelSize / 2) + dimensionPixelSize2 + (dimensionPixelSize3 * 2) : this.c.size() == 2 ? (dimensionPixelSize * 2) + dimensionPixelSize2 + (dimensionPixelSize3 * 2) : (dimensionPixelSize / 2) + (dimensionPixelSize * 2) + (dimensionPixelSize2 * 2) + (dimensionPixelSize3 * 2);
        ViewGroup.LayoutParams layoutParams2 = adapterView.getLayoutParams();
        layoutParams2.height = i;
        adapterView.setLayoutParams(layoutParams2);
    }
}
