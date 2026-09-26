package com.netease.mpay.widget;

import android.text.InputFilter;
import android.text.Spanned;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import java.io.UnsupportedEncodingException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bg implements InputFilter {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bg() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a(String str) {
        try {
            return str.getBytes("UTF-8").length != str.length();
        } catch (UnsupportedEncodingException e) {
            Cdo.a((Throwable) e);
            return false;
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        return a(charSequence.toString()) ? "" : charSequence;
    }
}
