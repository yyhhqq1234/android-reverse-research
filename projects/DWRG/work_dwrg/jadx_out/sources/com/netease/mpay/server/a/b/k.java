package com.netease.mpay.server.a.b;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class k extends n {
    String c;

    public k(String str) {
        super("/register2");
        this.c = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    public ArrayList a(Context context) {
        return b(this.c);
    }
}
