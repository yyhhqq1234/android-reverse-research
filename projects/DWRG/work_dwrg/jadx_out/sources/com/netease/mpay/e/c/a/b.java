package com.netease.mpay.e.c.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.io.File;

/* loaded from: classes.dex */
public abstract class b extends c {
    protected SharedPreferences a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Context context, String str, int i) {
        super(context, str);
        this.a = this.b.getSharedPreferences(a(context, str, i), 0);
        Cdo.a("");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private static String a(Context context, String str, int i) {
        return context.getString(i) + bd.b(bd.a(str.getBytes()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, String str, int i, String str2) {
        try {
            String str3 = context.getFilesDir().getParent() + "/shared_prefs/";
            File file = new File(str3 + str2 + ".xml");
            File file2 = new File(str3 + a(context, str, i) + ".xml");
            if (!file.exists() || file2.exists()) {
                return;
            }
            file.renameTo(file2);
        } catch (NullPointerException e) {
            Cdo.a((Throwable) e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.e.c.a.c
    public byte[] a(byte[] bArr) {
        return com.netease.mpay.e.a.b(bArr, this.b, this.c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.e.c.a.c
    public byte[] b(byte[] bArr) {
        return com.netease.mpay.e.a.a(bArr, this.b, this.c);
    }
}
