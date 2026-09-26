package com.netease.epay.sdk.pay.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.netease.epay.sdk.pay.R;

/* compiled from: PayChooseItemLayout.java */
/* loaded from: classes.dex */
public class g extends FrameLayout {
    private View a;
    private ImageView b;
    private ImageView c;
    private TextView d;
    private TextView e;

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R.layout.epaysdk_view_pay_choose_item, this);
        b();
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.d.setEnabled(enabled);
        if (enabled) {
            this.c.setAlpha(255);
            this.e.setVisibility(8);
            this.b.setVisibility(0);
        } else {
            this.c.setAlpha(110);
            this.b.setVisibility(8);
            this.e.setVisibility(0);
        }
    }

    private void a() {
    }

    private void b() {
        this.b = (ImageView) a(R.id.ivArrow);
        this.a = a(R.id.vDivider);
        this.c = (ImageView) a(R.id.ivIcon);
        this.d = (TextView) a(R.id.tvTitle);
        this.e = (TextView) a(R.id.tvMessage);
    }

    private <T extends View> T a(int i) {
        return (T) findViewById(i);
    }

    public void setImageResource(int resId) {
        this.c.setImageResource(resId);
    }

    public void setTitle(CharSequence charSequence) {
        this.d.setText(charSequence);
    }

    public void setMessage(CharSequence charSequence) {
        this.e.setText(charSequence);
    }
}
