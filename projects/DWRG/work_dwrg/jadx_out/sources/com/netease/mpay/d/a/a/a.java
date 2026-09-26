package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.e;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class a extends e {
    private int d;
    private boolean e;
    private boolean f;
    private InterfaceC0040a g;

    /* renamed from: com.netease.mpay.d.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0040a extends e.a {
        void a();

        void b();
    }

    public a(int i, boolean z, boolean z2, InterfaceC0040a interfaceC0040a) {
        super(interfaceC0040a);
        this.d = i;
        this.e = z;
        this.f = z2;
        this.g = interfaceC0040a;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.e
    public View a(Activity activity, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View a = super.a(activity, layoutInflater, viewGroup);
        View findViewById = a.findViewById(RIdentifier.f.aM);
        BottomLinkButtons bottomLinkButtons = (BottomLinkButtons) a.findViewById(RIdentifier.f.F);
        if (4 == this.d || !(this.e || this.f)) {
            findViewById.setVisibility(8);
            bottomLinkButtons.setVisibility(8);
        } else {
            findViewById.setVisibility(0);
            bottomLinkButtons.setVisibility(0);
            if (!this.e || this.f) {
                bottomLinkButtons.a(RIdentifier.h.N, RIdentifier.e.h, new c(this));
            } else {
                bottomLinkButtons.a(RIdentifier.h.O, RIdentifier.e.h, new b(this));
            }
            bottomLinkButtons.a();
        }
        return a;
    }

    @Override // com.netease.mpay.d.a.a.e
    boolean a() {
        return 4 == this.d;
    }
}
