package com.netease.mpay;

import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nh implements af.b {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nh(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.af.b
    public void a(b.a aVar, String str) {
        switch (aVar) {
            case ERR_LOGOUT:
                this.a.w();
                return;
            default:
                return;
        }
    }

    @Override // com.netease.mpay.f.af.b
    public void a(com.netease.mpay.server.response.ah ahVar, Bitmap bitmap) {
        this.a.m = bitmap;
        this.a.l = ahVar.a;
        if (this.a.i.s) {
            this.a.t();
        }
    }
}
