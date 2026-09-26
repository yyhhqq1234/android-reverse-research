package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.bj;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bk implements e.a {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ String e;
    final /* synthetic */ com.netease.mpay.widget.e f;
    final /* synthetic */ bj.a g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(Activity activity, String str, String str2, String str3, String str4, com.netease.mpay.widget.e eVar, bj.a aVar) {
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = eVar;
        this.g = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new com.netease.mpay.widget.s(this.a).a(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS, -1, 20);
    }

    @Override // com.netease.mpay.widget.e.a
    public void a() {
        this.g.a();
    }

    @Override // com.netease.mpay.widget.e.a
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            b(this.a.getString(RIdentifier.h.I));
        } else {
            new bj(this.a, this.b, this.c, this.d, this.e, str, 1, new bl(this)).h();
        }
    }
}
