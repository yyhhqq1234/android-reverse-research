package com.netease.mpay;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements com.netease.mpay.f.a.b {
    final /* synthetic */ bm a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bm bmVar) {
        this.a = bmVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        Activity activity;
        Activity activity2;
        n.a().f();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        activity = this.a.a;
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(activity);
        activity2 = this.a.a;
        sVar.a(str, activity2.getString(RIdentifier.h.j), new bs(this));
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.i iVar) {
        String str;
        Activity activity;
        Activity activity2;
        Activity activity3;
        n.a().f();
        if (iVar != null) {
            n a = n.a();
            str = this.a.b;
            if (a.a(str, iVar.a)) {
                if (TextUtils.isEmpty(iVar.c)) {
                    this.a.a(iVar);
                    return;
                }
                activity = this.a.a;
                com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(activity);
                String str2 = iVar.c;
                activity2 = this.a.a;
                String string = activity2.getString(RIdentifier.h.cn);
                bq bqVar = new bq(this, iVar);
                activity3 = this.a.a;
                sVar.a(str2, string, bqVar, activity3.getString(RIdentifier.h.g), new br(this), false);
                return;
            }
        }
        StringBuilder append = new StringBuilder().append("do not support the op : ");
        Object obj = iVar;
        if (iVar != null) {
            obj = iVar.a;
        }
        Cdo.c(append.append(obj).toString());
    }
}
