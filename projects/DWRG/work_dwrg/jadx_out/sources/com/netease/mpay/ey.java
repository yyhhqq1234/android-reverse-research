package com.netease.mpay;

import android.support.v4.app.FragmentManager;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.ae;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ey implements FragmentManager.OnBackStackChangedListener {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ey(ex exVar) {
        this.a = exVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.support.v4.app.FragmentManager.OnBackStackChangedListener
    public void onBackStackChanged() {
        FragmentManager fragmentManager;
        FragmentManager fragmentManager2;
        FragmentManager fragmentManager3;
        FragmentManager fragmentManager4;
        com.netease.mpay.widget.ae aeVar;
        fragmentManager = this.a.g;
        if (fragmentManager.getBackStackEntryCount() <= 0) {
            ex exVar = this.a;
            aeVar = this.a.h;
            exVar.i = aeVar.a(ae.a.ENTER_MOBILE);
        } else {
            fragmentManager2 = this.a.g;
            fragmentManager3 = this.a.g;
            String name = fragmentManager2.getBackStackEntryAt(fragmentManager3.getBackStackEntryCount() - 1).getName();
            ex exVar2 = this.a;
            fragmentManager4 = this.a.g;
            exVar2.i = (ew) fragmentManager4.findFragmentByTag(name);
        }
    }
}
