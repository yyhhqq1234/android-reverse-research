package com.netease.mpay.server.a.b;

import android.app.Activity;
import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class p extends n {
    private String a;

    public p(String str) {
        super("");
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    public String a(Activity activity, String str) {
        return "https://mima.163.com/nie/m_index.html";
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        return null;
    }

    @Override // com.netease.mpay.server.a.ax
    public ArrayList a(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("ticket", this.a));
        return arrayList;
    }
}
