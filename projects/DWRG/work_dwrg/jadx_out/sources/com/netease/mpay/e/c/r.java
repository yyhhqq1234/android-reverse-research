package com.netease.mpay.e.c;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.ab;
import com.netease.mpay.e.b.ac;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class r extends com.netease.mpay.e.c.a.d {
    /* JADX INFO: Access modifiers changed from: protected */
    public r(Context context, String str) {
        super(context, str, "raw.xml");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(ac acVar) {
        Cdo.a("saveRawDataStore", acVar);
        c(acVar.a());
    }

    @Nullable
    private ac b() {
        if (c() != null) {
            return ac.a(c());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public ab a() {
        if (!d()) {
            return null;
        }
        ac b = b();
        if (b == null || b.a == null) {
            return null;
        }
        Iterator it = b.a.iterator();
        while (it.hasNext()) {
            ab abVar = (ab) it.next();
            if (abVar != null && TextUtils.equals(abVar.a, this.c)) {
                return abVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ab abVar) {
        if (!d() || abVar == null) {
            return;
        }
        ac b = b();
        ac acVar = b == null ? new ac() : b;
        if (acVar.a == null) {
            acVar.a = new ArrayList();
        }
        Iterator it = acVar.a.iterator();
        while (it.hasNext()) {
            ab abVar2 = (ab) it.next();
            if (abVar2 != null && TextUtils.equals(abVar2.a, abVar.a)) {
                acVar.a.remove(abVar2);
            }
        }
        acVar.a.add(abVar);
        a(acVar);
    }
}
