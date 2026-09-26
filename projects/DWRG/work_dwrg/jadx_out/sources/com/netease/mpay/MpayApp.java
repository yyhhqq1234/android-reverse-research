package com.netease.mpay;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.z;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.rocoofix.RocooFix;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MpayApp {
    public MpayApp() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private static void a(Context context) {
        com.netease.mpay.e.c.o m = com.netease.mpay.e.b.a(context).m();
        com.netease.mpay.e.b.aa a = m.a();
        if (a.b == null || a.b.size() < 1) {
            return;
        }
        Iterator it = a.b.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.z zVar = (com.netease.mpay.e.b.z) it.next();
            File a2 = zVar.a(context);
            if (a2 != null && a2.exists()) {
                zVar.f = z.a.UN_INSTALL;
                m.a(zVar);
                if (RocooFix.applyPatch(context, a2.getAbsolutePath())) {
                    zVar.f = z.a.INSTALLED;
                    m.a(zVar);
                    a2.delete();
                }
            }
        }
    }

    public static void attachBaseContext(Context context) {
        RIdentifier.init(context);
        RocooFix.init(context);
        a(context);
    }

    public static void onCreate(Context context) {
    }
}
