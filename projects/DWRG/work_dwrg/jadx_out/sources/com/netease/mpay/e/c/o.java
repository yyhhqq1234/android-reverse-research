package com.netease.mpay.e.c;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.aa;
import com.netease.mpay.e.b.z;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class o extends com.netease.mpay.e.c.a.f {
    private final String a;

    public o(Context context) {
        super(context, "");
        this.a = "mpay_patch.xml";
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void b() {
        Cdo.a("removePathes");
        this.b.deleteFile("mpay_patch.xml");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.netease.mpay.e.b.aa a() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = r4.b     // Catch: java.io.IOException -> L35
            java.lang.String r2 = "mpay_patch.xml"
            java.io.FileInputStream r1 = r1.openFileInput(r2)     // Catch: java.io.IOException -> L35
            int r2 = r1.available()     // Catch: java.io.IOException -> L35
            byte[] r2 = new byte[r2]     // Catch: java.io.IOException -> L35
            r1.read(r2)     // Catch: java.io.IOException -> L35
            byte[] r2 = r4.a(r2)     // Catch: java.io.IOException -> L35
            r1.close()     // Catch: java.io.IOException -> L35
            com.netease.mpay.e.b.aa r1 = com.netease.mpay.e.b.aa.a(r2)     // Catch: java.io.IOException -> L35
            if (r1 == 0) goto L3c
            boolean r2 = r1.a()     // Catch: java.io.IOException -> L3e
            if (r2 != 0) goto L3c
            java.lang.String r2 = "SDK version has changed, remove the patch list!"
            com.netease.mpay.Cdo.a(r2)     // Catch: java.io.IOException -> L3e
            r4.b()     // Catch: java.io.IOException -> L3e
        L2d:
            if (r0 != 0) goto L34
            com.netease.mpay.e.b.aa r0 = new com.netease.mpay.e.b.aa
            r0.<init>()
        L34:
            return r0
        L35:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
        L39:
            com.netease.mpay.Cdo.a(r0)
        L3c:
            r0 = r1
            goto L2d
        L3e:
            r0 = move-exception
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.e.c.o.a():com.netease.mpay.e.b.aa");
    }

    public void a(aa aaVar) {
        Cdo.a("savePatches", aaVar);
        if (aaVar == null) {
            return;
        }
        byte[] b = b(aaVar.b());
        try {
            FileOutputStream openFileOutput = this.b.openFileOutput("mpay_patch.xml", 0);
            openFileOutput.write(b);
            openFileOutput.close();
        } catch (IOException e) {
            Cdo.a((Throwable) e);
        }
    }

    public void a(z zVar) {
        aa a = a();
        a.b(zVar);
        a(a);
    }
}
