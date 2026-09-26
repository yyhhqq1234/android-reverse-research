package com.netease.mpay;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public abstract class ew extends Fragment {
    protected Activity a;

    public ew() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public abstract void a(boolean z);

    public abstract boolean a();

    public boolean a(int i, com.netease.mpay.b.al alVar) {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        return getActivity().getLayoutInflater();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.a = getActivity();
    }
}
