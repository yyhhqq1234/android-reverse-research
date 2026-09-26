package com.netease.mpay.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class r extends LinearLayout {
    public static int a;
    public static int b;
    public static String c;

    public r(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(RIdentifier.g.ak, this);
        View findViewById = findViewById(RIdentifier.f.f0do);
        ((TextView) findViewById(RIdentifier.f.dn)).setText(c);
        a = findViewById.getLayoutParams().width;
        b = findViewById.getLayoutParams().height;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void setText(String str) {
        c = str;
    }
}
