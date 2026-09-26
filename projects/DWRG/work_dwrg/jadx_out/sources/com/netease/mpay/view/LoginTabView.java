package com.netease.mpay.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class LoginTabView extends LinearLayout {
    private View a;
    private TextView b;
    private int c;
    private int d;
    private int e;
    private int f;
    private boolean g;

    public LoginTabView(Context context) {
        super(context);
        a(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public LoginTabView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    @TargetApi(11)
    public LoginTabView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a() {
        this.b.setTextColor(this.g ? this.f : this.e);
        this.a.setBackgroundColor(this.g ? this.d : this.c);
    }

    private void a(Context context) {
        setOrientation(0);
        setGravity(1);
        inflate(context, RIdentifier.g.R, this);
        this.a = findViewById(RIdentifier.f.dd);
        this.b = (TextView) findViewById(RIdentifier.f.de);
        this.c = context.getResources().getColor(RIdentifier.c.p);
        this.d = context.getResources().getColor(RIdentifier.c.q);
        this.e = context.getResources().getColor(RIdentifier.c.r);
        this.f = context.getResources().getColor(RIdentifier.c.q);
        this.g = false;
        a();
    }

    public void setLabel(String str) {
        this.b.setText(str);
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.g = z;
        a();
    }
}
