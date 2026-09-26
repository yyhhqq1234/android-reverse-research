package com.netease.mpay.server.a.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.server.a.ax;

/* loaded from: classes.dex */
public abstract class a extends ax {
    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i, String str) {
        super(i, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    public String a(Activity activity, String str) {
        return bk.i + this.j;
    }
}
