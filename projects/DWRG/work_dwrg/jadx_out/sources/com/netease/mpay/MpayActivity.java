package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class MpayActivity extends af {
    public MpayActivity() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void inflateActionBar(a aVar) {
        FragmentActivity fragmentActivity = aVar.a;
        ((TextView) fragmentActivity.findViewById(RIdentifier.f.n)).setText(aVar.b);
        fragmentActivity.findViewById(RIdentifier.f.l).setOnClickListener(new fl(this, aVar));
        fragmentActivity.findViewById(RIdentifier.f.m).setVisibility(aVar.n() ? 0 : 8);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        super.setContentView(RIdentifier.g.b);
        LayoutInflater.from(this).inflate(i, (ViewGroup) findViewById(RIdentifier.f.q));
        inflateActionBar(this.a);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(RIdentifier.g.b);
        ((ViewGroup) findViewById(RIdentifier.f.q)).addView(view, 0, layoutParams);
        inflateActionBar(this.a);
    }
}
