package com.netease.mpay.widget;

import android.widget.AbsListView;
import android.widget.AdapterView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements AbsListView.OnScrollListener {
    final /* synthetic */ af.b.InterfaceC0057b a;
    final /* synthetic */ AdapterView b;
    final /* synthetic */ af.b c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af.b bVar, af.b.InterfaceC0057b interfaceC0057b, AdapterView adapterView) {
        this.c = bVar;
        this.a = interfaceC0057b;
        this.b = adapterView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        boolean z;
        if (this.a.a(this.b, i, i2, i3)) {
            z = this.c.b;
            if (z) {
                return;
            }
            this.c.b = true;
            this.a.a(new ah(this));
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
