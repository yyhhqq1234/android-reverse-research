package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.ab;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class s extends com.netease.mpay.e.c.a.g {
    /* JADX INFO: Access modifiers changed from: protected */
    public s(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public ab a() {
        String string = this.a.getString("raw", "");
        byte[] a = !TextUtils.isEmpty(string) ? bd.a(string) : null;
        if (a != null) {
            return ab.a(a);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ab abVar) {
        Cdo.a("saveRawData", abVar);
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("raw", bd.b(abVar.a()));
        edit.commit();
    }
}
