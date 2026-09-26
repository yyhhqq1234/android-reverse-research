package com.netease.mpay;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.webview.js.WebViewEx;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class df implements com.netease.mpay.f.a.b {
    final /* synthetic */ com.netease.mpay.widget.s a;
    final /* synthetic */ dd b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public df(dd ddVar, com.netease.mpay.widget.s sVar) {
        this.b = ddVar;
        this.a = sVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (aVar.a()) {
            this.a.b(this.b.a.getString(RIdentifier.h.u), this.b.a.getString(RIdentifier.h.cn), new dh(this));
        } else if (b.a.ERR_RETRY == aVar) {
            this.a.a(str, this.b.a.getString(RIdentifier.h.cH), new di(this), this.b.a.getString(RIdentifier.h.g), new dj(this), false);
        } else {
            this.a.b(str, this.b.a.getString(RIdentifier.h.cn), new dk(this));
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.l lVar) {
        ii iiVar;
        com.netease.mpay.widget.av avVar;
        com.netease.mpay.widget.av avVar2;
        com.netease.mpay.widget.av avVar3;
        WebViewEx webViewEx;
        if (lVar == null || TextUtils.isEmpty(lVar.a)) {
            iiVar = this.b.e;
            iiVar.b();
            return;
        }
        this.b.j = lVar;
        if (TextUtils.isEmpty(lVar.b) || lVar.a.matches(lVar.b)) {
            this.b.u();
            this.b.b(lVar.a);
            return;
        }
        this.b.i = com.netease.mpay.widget.av.a(this.b.a, true);
        avVar = this.b.i;
        avVar.setCanceledOnTouchOutside(false);
        avVar2 = this.b.i;
        avVar2.setOnCancelListener(new dg(this));
        avVar3 = this.b.i;
        avVar3.show();
        webViewEx = this.b.h;
        webViewEx.loadUrl(lVar.a);
    }
}
