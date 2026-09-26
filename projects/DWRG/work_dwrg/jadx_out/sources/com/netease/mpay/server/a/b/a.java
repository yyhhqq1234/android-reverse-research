package com.netease.mpay.server.a.b;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class a extends k {
    String a;
    String b;

    public a(String str, String str2, String str3) {
        super(str);
        this.a = str2;
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.b.k, com.netease.mpay.server.a.ax
    public ArrayList a(Context context) {
        ArrayList a = super.a(context);
        a.add(new com.netease.mpay.widget.a.a("bind_user_id", this.a));
        a.add(new com.netease.mpay.widget.a.a("bind_token", this.b));
        return a;
    }
}
