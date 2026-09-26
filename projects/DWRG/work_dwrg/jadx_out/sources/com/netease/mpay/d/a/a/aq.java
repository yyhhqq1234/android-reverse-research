package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.au;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq extends bf.c {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ an c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(an anVar, String str, String str2) {
        this.c = anVar;
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        Activity activity;
        Dialog dialog;
        activity = this.c.a;
        au.a(activity, this.a, this.b);
        dialog = this.c.b;
        dialog.dismiss();
    }
}
