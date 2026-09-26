package com.netease.mpay.d.a;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements View.OnFocusChangeListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ ImageView b;
    final /* synthetic */ af c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(af afVar, EditText editText, ImageView imageView) {
        this.c = afVar;
        this.a = editText;
        this.b = imageView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.c.b(this.a, this.b);
    }
}
