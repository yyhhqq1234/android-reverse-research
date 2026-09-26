package com.netease.mpay;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lz implements TextWatcher {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lz(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        boolean u;
        boolean v;
        AutoCompleteTextView autoCompleteTextView;
        AutoCompleteTextView autoCompleteTextView2;
        AutoCompleteTextView autoCompleteTextView3;
        AutoCompleteTextView autoCompleteTextView4;
        int i;
        AutoCompleteTextView autoCompleteTextView5;
        button = this.a.l;
        u = this.a.u();
        com.netease.mpay.widget.bf.a(button, u);
        this.a.z();
        v = this.a.v();
        if (v) {
            this.a.y();
        }
        autoCompleteTextView = this.a.i;
        if (autoCompleteTextView != null) {
            autoCompleteTextView2 = this.a.i;
            if (autoCompleteTextView2.getAdapter() != null) {
                autoCompleteTextView3 = this.a.i;
                if (autoCompleteTextView3.getAdapter().getCount() > 0) {
                    int dimensionPixelSize = this.a.a.getResources().getDimensionPixelSize(RIdentifier.d.n);
                    int dimensionPixelSize2 = this.a.a.getResources().getDimensionPixelSize(RIdentifier.d.b);
                    int dimensionPixelSize3 = this.a.a.getResources().getDimensionPixelSize(RIdentifier.d.b);
                    autoCompleteTextView4 = this.a.i;
                    int count = autoCompleteTextView4.getAdapter().getCount();
                    if (count == 1) {
                        i = dimensionPixelSize + (dimensionPixelSize3 * 2);
                    } else if (count == 2) {
                        i = (dimensionPixelSize * 2) + (dimensionPixelSize3 * 2) + dimensionPixelSize2;
                    } else {
                        int i2 = dimensionPixelSize2 * 2;
                        i = (dimensionPixelSize / 2) + i2 + (dimensionPixelSize3 * 2) + (dimensionPixelSize * 2);
                    }
                    autoCompleteTextView5 = this.a.i;
                    autoCompleteTextView5.setDropDownHeight(i);
                }
            }
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
