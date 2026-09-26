package com.netease.mpay;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class MpayLoginActionBarActivity extends af {
    public MpayLoginActionBarActivity() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.af, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a = this.a.a(str, context, attributeSet);
        return a != null ? a : super.onCreateView(str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(RIdentifier.g.b);
        ((ViewGroup) findViewById(RIdentifier.f.q)).addView(view, 0, layoutParams);
    }
}
