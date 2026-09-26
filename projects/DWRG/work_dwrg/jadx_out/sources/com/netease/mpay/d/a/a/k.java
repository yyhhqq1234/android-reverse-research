package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public abstract class k {

    /* loaded from: classes.dex */
    public static abstract class a {
        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(View view, boolean z) {
            view.setVisibility(z ? 0 : 8);
        }

        abstract void a(boolean z);

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(EditText editText) {
            return (editText == null || editText.getText().toString().trim().equals("")) ? false : true;
        }
    }

    public k() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public abstract View a(Activity activity, LayoutInflater layoutInflater, ViewGroup viewGroup);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b(String str);

    public abstract void d();

    public abstract void e();

    public abstract void f();
}
