package com.netease.mpay.e.c;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.ab;
import com.netease.mpay.widget.az;

/* loaded from: classes.dex */
public class q extends com.netease.mpay.e.c.a.c {
    private r a;
    private s d;

    public q(Context context, String str) {
        super(context, str);
        this.a = new r(context, str);
        this.d = new s(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a(ab abVar) {
        return (abVar == null || TextUtils.isEmpty(abVar.b)) ? false : true;
    }

    @NonNull
    public String a() {
        ab a = this.d.a();
        if (a(a)) {
            return a.b;
        }
        ab a2 = this.a.a();
        if (a(a2)) {
            this.d.a(a2);
            return a2.b;
        }
        ab abVar = new ab(this.c, az.a(this.b));
        this.a.a(abVar);
        this.d.a(abVar);
        return abVar.b;
    }

    @Override // com.netease.mpay.e.c.a.c
    protected byte[] a(byte[] bArr) {
        return null;
    }

    @Override // com.netease.mpay.e.c.a.c
    protected byte[] b(byte[] bArr) {
        return null;
    }
}
