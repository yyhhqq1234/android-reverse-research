package com.netease.mpay;

import android.text.format.DateFormat;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.af;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nz implements af.a.InterfaceC0056a {
    final /* synthetic */ np a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nz(np npVar) {
        this.a = npVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(TextView textView, int i) {
        switch (i) {
            case 0:
                textView.setTextColor(this.a.a.getResources().getColor(RIdentifier.c.k));
                return;
            case 1:
                textView.setTextColor(this.a.a.getResources().getColor(RIdentifier.c.h));
                return;
            default:
                return;
        }
    }

    @Override // com.netease.mpay.widget.af.a.InterfaceC0056a
    public void a(View view, com.netease.mpay.e.b.u uVar, int i) {
        com.netease.mpay.c.a aVar;
        ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.bl);
        if (uVar.d != null) {
            aVar = this.a.j;
            aVar.a(uVar.d, imageView);
        }
        TextView textView = (TextView) view.findViewById(RIdentifier.f.bn);
        textView.setText(uVar.b);
        a(textView, uVar.e);
        TextView textView2 = (TextView) view.findViewById(RIdentifier.f.bj);
        textView2.setText(uVar.c);
        a(textView2, uVar.e);
        ((TextView) view.findViewById(RIdentifier.f.bk)).setText(DateFormat.format("yyyy-MM-dd", new Date(uVar.i)).toString());
        ImageView imageView2 = (ImageView) view.findViewById(RIdentifier.f.bY);
        switch (uVar.e) {
            case 0:
                imageView2.setVisibility(0);
                return;
            case 1:
                imageView2.setVisibility(4);
                return;
            default:
                return;
        }
    }
}
