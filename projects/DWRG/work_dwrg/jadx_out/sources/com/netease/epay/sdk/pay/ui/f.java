package com.netease.epay.sdk.pay.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.pay.R;

/* compiled from: ParentViewHolder.java */
/* loaded from: classes.dex */
public class f {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public TextView e;
    public TextView f;
    public View g;
    public ImageView h;
    public RelativeLayout i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(View view) {
        this.g = view.findViewById(R.id.divider);
        this.a = (TextView) view.findViewById(R.id.tvDiscountName);
        this.b = (TextView) view.findViewById(R.id.tvExpand);
        this.c = (TextView) view.findViewById(R.id.tvTime);
        this.h = (ImageView) view.findViewById(R.id.ivChoose);
        this.e = (TextView) view.findViewById(R.id.tvDiscountAmount);
        this.d = (TextView) view.findViewById(R.id.tvDesc);
        this.f = (TextView) view.findViewById(R.id.tvDeadline);
        this.i = (RelativeLayout) view.findViewById(R.id.rlContent);
    }
}
