package com.netease.mpay.e.c.a;

import android.content.Context;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public abstract class c {
    protected Context b;
    protected String c;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Context context, String str) {
        this.c = str;
        this.b = context.getApplicationContext();
        if (this.b == null) {
            this.b = context;
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    protected abstract byte[] a(byte[] bArr);

    protected abstract byte[] b(byte[] bArr);
}
