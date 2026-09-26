package com.netease.mpay.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.AutoCompleteTextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.ba;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
final class bb implements TextWatcher {
    final /* synthetic */ Context a;
    final /* synthetic */ int b;
    final /* synthetic */ Integer c;
    final /* synthetic */ Drawable d;
    final /* synthetic */ Integer e;
    final /* synthetic */ AutoCompleteTextView f;
    final /* synthetic */ String[] g;
    final /* synthetic */ String[] h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(Context context, int i, Integer num, Drawable drawable, Integer num2, AutoCompleteTextView autoCompleteTextView, String[] strArr, String[] strArr2) {
        this.a = context;
        this.b = i;
        this.c = num;
        this.d = drawable;
        this.e = num2;
        this.f = autoCompleteTextView;
        this.g = strArr;
        this.h = strArr2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        if (this.g != null) {
            for (String str2 : this.g) {
                if (str2.toLowerCase(Locale.ENGLISH).startsWith(str.toLowerCase(Locale.ENGLISH))) {
                    arrayList.add(str2);
                    hashSet.add(str2);
                    hashSet2.add(str2.toLowerCase(Locale.ENGLISH));
                }
            }
        }
        String[] split = str.split("@");
        String str3 = split.length < 1 ? "" : split[0];
        if (!str3.equals("")) {
            for (String str4 : this.h) {
                String str5 = str3 + "@" + str4;
                String lowerCase = str5.toLowerCase(Locale.ENGLISH);
                if (!hashSet2.contains(lowerCase) && lowerCase.startsWith(str.toLowerCase(Locale.ENGLISH))) {
                    arrayList.add(str5);
                }
            }
        }
        return arrayList;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f.setAdapter(new ba.a(this.a, this.b, this.c.intValue(), this.d, this.e.intValue(), a(charSequence.toString())));
    }
}
