package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class w extends a {
    public String a;
    public com.netease.mpay.server.response.aa b;

    public w(Intent intent) {
        super(intent);
        this.a = b(intent, ak.QR_CODE_SCANNER_EXTRA_DATA);
        this.b = com.netease.mpay.server.response.aa.a(intent);
    }

    public w(a.C0035a c0035a, String str, com.netease.mpay.server.response.aa aaVar) {
        super(c0035a);
        this.a = str;
        this.b = aaVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.QR_CODE_SCANNER_EXTRA_DATA, this.a);
        if (this.b != null) {
            this.b.a(bundle);
        }
    }
}
