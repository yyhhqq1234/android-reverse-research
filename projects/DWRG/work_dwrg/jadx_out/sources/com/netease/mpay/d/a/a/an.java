package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.widget.Button;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class an {
    private Activity a;
    private Dialog b;
    private Resources c;

    public an(Activity activity, String str, String str2) {
        this.a = activity;
        this.c = activity.getResources();
        this.b = new Dialog(activity, RIdentifier.i.a);
        this.b.setContentView(RIdentifier.g.o);
        this.b.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.b.getWindow().setGravity(17);
        this.b.setCancelable(true);
        this.b.setCanceledOnTouchOutside(false);
        ((TextView) this.b.findViewById(RIdentifier.f.z)).setText(RIdentifier.h.d);
        a((TextView) this.b.findViewById(RIdentifier.f.v), str, str2);
        a(str, str2);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(TextView textView, String str, String str2) {
        com.netease.mpay.widget.aa.a(textView, String.format(this.c.getString(RIdentifier.h.bn), str, str2), str, new ao(this, str), str2, new ap(this, str2));
    }

    private void a(String str, String str2) {
        Button button = (Button) this.b.findViewById(RIdentifier.f.y);
        Button button2 = (Button) this.b.findViewById(RIdentifier.f.w);
        button.setText(RIdentifier.h.bh);
        button2.setText(RIdentifier.h.h);
        button.setOnClickListener(new aq(this, str, str2));
        button2.setOnClickListener(new ar(this));
    }

    public void a() {
        this.b.show();
    }
}
