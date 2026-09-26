package com.netease.mpay.server.a.b;

import android.app.Activity;
import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.a.ax;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class o extends ax {
    private String a;

    public o(String str) {
        super(0, "");
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    public String a(Activity activity, String str) {
        return this.a;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        return null;
    }
}
