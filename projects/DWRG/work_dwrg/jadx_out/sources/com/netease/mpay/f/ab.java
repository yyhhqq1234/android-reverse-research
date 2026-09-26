package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ab extends com.netease.mpay.f.a.d {
    public ab(Activity activity, String str, String str2, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        f();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(com.netease.mpay.server.response.z zVar) {
        File[] listFiles;
        boolean z;
        File file = new File(com.netease.mpay.e.b.z.c());
        if (!file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null || listFiles.length < 1) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.exists() && !file2.isDirectory()) {
                if (zVar == null || zVar.a == null) {
                    file2.delete();
                } else {
                    Iterator it = zVar.a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (TextUtils.equals(file2.getAbsolutePath(), ((com.netease.mpay.e.b.z) it.next()).b())) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (!z) {
                        file2.delete();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.z b(d.C0045d c0045d) {
        com.netease.mpay.server.response.z zVar = (com.netease.mpay.server.response.z) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ap("1", c0045d.b().n));
        if (zVar != null && zVar.a != null) {
            com.netease.mpay.e.b.aa a = c0045d.a.m().a();
            Iterator it = zVar.a.iterator();
            while (it.hasNext()) {
                com.netease.mpay.e.b.z zVar2 = (com.netease.mpay.e.b.z) it.next();
                com.netease.mpay.e.b.z a2 = a != null ? a.a(zVar2) : null;
                if (a2 != null) {
                    zVar2.f = a2.f;
                }
            }
            c0045d.a.m().a(new com.netease.mpay.e.b.aa(zVar.a));
            Iterator it2 = zVar.a.iterator();
            while (it2.hasNext()) {
                ((com.netease.mpay.e.b.z) it2.next()).a();
            }
            a(zVar);
        }
        return zVar;
    }
}
