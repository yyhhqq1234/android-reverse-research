package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nb implements View.OnFocusChangeListener {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nb(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        EditText editText;
        ImageView imageView;
        mk mkVar = this.a;
        editText = this.a.l;
        imageView = this.a.m;
        mkVar.a(editText, imageView);
    }
}
