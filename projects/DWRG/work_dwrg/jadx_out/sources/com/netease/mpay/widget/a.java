package com.netease.mpay.widget;

import android.app.Activity;
import android.app.Dialog;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class a {
    private Dialog a;

    /* renamed from: com.netease.mpay.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0054a {
        void a();
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();

        void b();
    }

    public a(Activity activity, String str, String str2, String str3, InterfaceC0054a interfaceC0054a, boolean z) {
        this.a = new Dialog(activity, RIdentifier.i.a);
        this.a.setContentView(RIdentifier.g.o);
        this.a.setCancelable(z);
        this.a.setCanceledOnTouchOutside(z);
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.z);
        TextView textView2 = (TextView) this.a.findViewById(RIdentifier.f.v);
        Button button = (Button) this.a.findViewById(RIdentifier.f.w);
        this.a.findViewById(RIdentifier.f.y).setVisibility(8);
        this.a.findViewById(RIdentifier.f.G).setVisibility(8);
        textView.setText(str);
        textView2.setText(str2);
        button.setText(str3);
        button.setOnClickListener(new d(this, interfaceC0054a));
    }

    public a(Activity activity, String str, String str2, String str3, String str4, b bVar, boolean z) {
        this.a = new Dialog(activity, RIdentifier.i.a);
        this.a.setContentView(RIdentifier.g.o);
        this.a.setCancelable(z);
        this.a.setCanceledOnTouchOutside(z);
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.z);
        TextView textView2 = (TextView) this.a.findViewById(RIdentifier.f.v);
        Button button = (Button) this.a.findViewById(RIdentifier.f.y);
        Button button2 = (Button) this.a.findViewById(RIdentifier.f.w);
        textView.setText(str);
        textView2.setText(str2);
        button.setText(str3);
        button2.setText(str4);
        button.setOnClickListener(new com.netease.mpay.widget.b(this, bVar));
        button2.setOnClickListener(new c(this, bVar));
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a() {
        this.a.show();
    }

    public void a(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = ((LinearLayout) this.a.getWindow().getDecorView().findViewById(RIdentifier.f.aq)).getLayoutParams();
        if (i > 0) {
            layoutParams.width = i;
        }
        if (i2 > 0) {
            layoutParams.height = i2;
        }
        this.a.getWindow().getDecorView().setLayoutParams(layoutParams);
    }
}
