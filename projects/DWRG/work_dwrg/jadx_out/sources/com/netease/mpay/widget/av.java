package com.netease.mpay.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class av extends Dialog {
    public av(Context context, int i) {
        super(context, i);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static av a(Context context, boolean z) {
        return a(context, z, null);
    }

    private static av a(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        av avVar = new av(context, RIdentifier.i.c);
        avVar.setContentView(RIdentifier.g.M);
        avVar.getWindow().getAttributes().gravity = 17;
        avVar.setCancelable(z);
        if (onCancelListener != null && z) {
            avVar.setOnCancelListener(onCancelListener);
        }
        return avVar;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
