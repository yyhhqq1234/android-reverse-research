package com.netease.mpay.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BottomLinkButtons extends LinearLayout {
    private ArrayList a;
    private ArrayList b;
    private ArrayList c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private boolean j;

    public BottomLinkButtons(Context context) {
        super(context);
        a(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public BottomLinkButtons(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    @TargetApi(11)
    public BottomLinkButtons(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private LinearLayout a(Context context, int i, int i2, View.OnClickListener onClickListener) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(this.i ? 0 : 1);
        a(context, linearLayout, i);
        b(context, linearLayout, i2);
        linearLayout.setOnClickListener(onClickListener);
        return linearLayout;
    }

    private void a(Context context) {
        this.d = context.getResources().getDimensionPixelSize(RIdentifier.d.e);
        this.e = RIdentifier.e.g;
        this.f = context.getResources().getDimensionPixelSize(RIdentifier.d.c);
        this.g = context.getResources().getDimensionPixelSize(RIdentifier.d.u);
        this.h = context.getResources().getDimensionPixelSize(RIdentifier.d.q);
        this.j = context.getResources().getBoolean(RIdentifier.b.a);
        setOrientation(0);
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    private void a(Context context, LinearLayout linearLayout, int i) {
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.d, this.d);
        TintIconView tintIconView = new TintIconView(context);
        tintIconView.a(i, this.e);
        tintIconView.setDuplicateParentStateEnabled(true);
        linearLayout.addView(tintIconView, layoutParams);
    }

    private void b() {
        setGravity(17);
        addView(a(getContext(), ((Integer) this.b.get(0)).intValue(), ((Integer) this.a.get(0)).intValue(), (View.OnClickListener) this.c.get(0)), new LinearLayout.LayoutParams(-2, -2));
    }

    private void b(Context context, LinearLayout linearLayout, int i) {
        TextView textView = new TextView(context);
        textView.setText(context.getResources().getString(i));
        textView.setTextColor(context.getResources().getColorStateList(this.e));
        textView.setTextSize(0, this.f);
        textView.setDuplicateParentStateEnabled(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (this.i) {
            layoutParams.leftMargin = this.g;
        }
        linearLayout.addView(textView, layoutParams);
    }

    private void c() {
        setGravity(16);
        LinearLayout a = a(getContext(), ((Integer) this.b.get(0)).intValue(), ((Integer) this.a.get(0)).intValue(), (View.OnClickListener) this.c.get(0));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.h;
        addView(a, layoutParams);
        for (int i = 1; i < this.b.size(); i++) {
            addView(new View(getContext()), new LinearLayout.LayoutParams(0, 1, 1.0f));
            LinearLayout a2 = a(getContext(), ((Integer) this.b.get(i)).intValue(), ((Integer) this.a.get(i)).intValue(), (View.OnClickListener) this.c.get(i));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            if (i == this.b.size() - 1) {
                layoutParams2.rightMargin = this.h;
            }
            addView(a2, layoutParams2);
        }
    }

    private void d() {
        setGravity(16);
        for (int i = 0; i < this.b.size(); i++) {
            LinearLayout a = a(getContext(), ((Integer) this.b.get(i)).intValue(), ((Integer) this.a.get(i)).intValue(), (View.OnClickListener) this.c.get(i));
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(0);
            linearLayout.setGravity(17);
            linearLayout.addView(a, new LinearLayout.LayoutParams(-2, -2));
            addView(linearLayout, new LinearLayout.LayoutParams(0, -2, 1.0f));
        }
    }

    public void a() {
        removeAllViews();
        this.i = this.j || this.a.size() <= 2;
        switch (this.a.size()) {
            case 0:
                return;
            case 1:
                b();
                return;
            case 2:
                if (this.j) {
                    d();
                    return;
                } else {
                    c();
                    return;
                }
            default:
                c();
                return;
        }
    }

    public void a(int i, int i2, View.OnClickListener onClickListener) {
        if (i <= 0 || i2 <= 0 || onClickListener == null) {
            return;
        }
        this.a.add(Integer.valueOf(i));
        this.b.add(Integer.valueOf(i2));
        this.c.add(onClickListener);
    }
}
