package com.netease.epay.sdk.pay.ui;

import android.view.View;
import android.widget.TextView;
import com.netease.epay.sdk.pay.R;

/* compiled from: ChildViewHolder.java */
/* loaded from: classes.dex */
public class a {
    public TextView a;
    public TextView b;
    public TextView c;
    public View d;
    public View e;
    public View f;
    public View g;
    public View h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(View view) {
        this.d = view.findViewById(R.id.topDivider);
        this.a = (TextView) view.findViewById(R.id.tvAmount);
        this.b = (TextView) view.findViewById(R.id.tvDeadline);
        this.c = (TextView) view.findViewById(R.id.tvDesc);
        this.e = view.findViewById(R.id.divider);
        this.f = view.findViewById(R.id.bottomDivider);
        this.g = view.findViewById(R.id.leftDivider);
        this.h = view.findViewById(R.id.rightDivider);
    }
}
