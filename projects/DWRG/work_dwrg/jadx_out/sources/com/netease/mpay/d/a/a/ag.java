package com.netease.mpay.d.a.a;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.aa;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements View.OnFocusChangeListener {
    final /* synthetic */ aa.a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(aa.a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        EditText editText;
        ImageView imageView;
        aa.a aVar = this.a;
        editText = this.a.d;
        imageView = this.a.e;
        aVar.a(editText, imageView);
    }
}
