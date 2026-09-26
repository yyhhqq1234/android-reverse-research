package com.netease.mpay;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ay implements AdapterView.OnItemClickListener {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        AutoCompleteTextView autoCompleteTextView;
        autoCompleteTextView = this.a.h;
        this.a.a(autoCompleteTextView.getText().toString(), true);
    }
}
