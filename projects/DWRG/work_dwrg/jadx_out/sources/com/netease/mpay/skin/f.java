package com.netease.mpay.skin;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.skin.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class f {
    public List a = new ArrayList();
    public View b;

    public f() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(e.a aVar) {
        if (this.a.isEmpty()) {
            return;
        }
        if (this.b == null) {
            this.b = aVar.a();
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(this.b);
        }
    }
}
