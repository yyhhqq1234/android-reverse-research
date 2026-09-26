package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.widget.Toast;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements View.OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ an b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(an anVar, String str) {
        this.b = anVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        Activity activity2;
        Resources resources;
        activity = this.b.a;
        if (com.netease.mpay.widget.aa.a(activity, this.a)) {
            activity2 = this.b.a;
            resources = this.b.c;
            Toast.makeText(activity2, resources.getString(RIdentifier.h.cR), 0).show();
        }
    }
}
