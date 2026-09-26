package com.netease.mpay;

import android.content.res.Resources;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.h;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kn implements h.a {
    final /* synthetic */ kd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kn(kd kdVar) {
        this.a = kdVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.h.a
    public void a(String str) {
        this.a.g = str;
        this.a.c(3);
        this.a.v();
    }

    @Override // com.netease.mpay.f.h.a
    public void a(String str, b.a aVar, String str2) {
        com.netease.mpay.widget.s sVar;
        Resources resources;
        com.netease.mpay.widget.s sVar2;
        this.a.g = str;
        switch (aVar) {
            case ERR_LOGOUT:
                this.a.c(4);
                com.netease.mpay.widget.s sVar3 = new com.netease.mpay.widget.s(this.a.a);
                resources = this.a.e;
                sVar3.b(str2, resources.getString(RIdentifier.h.cn), new ko(this));
                return;
            case ERR_RETRY:
                this.a.c(4);
                sVar = this.a.f;
                sVar.a(str2);
                return;
            default:
                this.a.c(4);
                if (!TextUtils.isEmpty(str)) {
                    this.a.v();
                    return;
                } else {
                    sVar2 = this.a.f;
                    sVar2.a(str2);
                    return;
                }
        }
    }
}
