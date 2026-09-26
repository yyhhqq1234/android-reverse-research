package com.netease.mpay;

import android.widget.EditText;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mj implements au.a {
    final /* synthetic */ mb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mj(mb mbVar) {
        this.a = mbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        EditText editText;
        this.a.a(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        editText = this.a.h;
        editText.setText("");
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        new com.netease.mpay.b.ao(str, mVar).a(this.a.a);
    }
}
