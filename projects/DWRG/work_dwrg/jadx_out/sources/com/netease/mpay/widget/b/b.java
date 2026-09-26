package com.netease.mpay.widget.b;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.ab;
import com.netease.mpay.sharer.UrlShareContent;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements UrlShareContent.a {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ MpayConfig d;
    final /* synthetic */ UrlShareContent e;
    final /* synthetic */ String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Activity activity, String str, String str2, MpayConfig mpayConfig, UrlShareContent urlShareContent, String str3) {
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = mpayConfig;
        this.e = urlShareContent;
        this.f = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.sharer.UrlShareContent.a
    public void a(boolean z) {
        if (z) {
            com.netease.mpay.b.a(this.a, b.a.ShareActivity, new ab(new a.C0035a(this.b, this.c, this.d), bf.a(this.a), this.e, this.f), null, 1081);
            this.a.overridePendingTransition(RIdentifier.a.f, 0);
        }
    }
}
