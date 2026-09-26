package com.netease.mpay.e.c.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class g extends b {
    /* JADX INFO: Access modifiers changed from: protected */
    public g(Context context, String str) {
        super(context, str, RIdentifier.h.bj);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(Context context, String str) {
        a(context, str, RIdentifier.h.bj, bk.c.booleanValue() ? context.getString(RIdentifier.h.bk) : context.getString(RIdentifier.h.bi));
    }
}
