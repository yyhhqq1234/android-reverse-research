package com.netease.mpay;

import android.text.TextUtils;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import com.netease.mpay.o;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v extends bf.c {
    final /* synthetic */ o a;
    final /* synthetic */ o.c b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(o.c cVar, o oVar) {
        this.b = cVar;
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        if (2 != o.this.d.a) {
            this.b.a(new com.netease.mpay.server.a.b.o("https://reg.163.com/naq/findPassword/#/verifyAccount"));
            return;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(o.this.a, o.this.d.a());
        String str = bVar.d().a().j;
        if (TextUtils.isEmpty(str)) {
            new com.netease.mpay.f.v(o.this.a, o.this.d.a(), o.this.d.b(), new w(this, bVar)).h();
        } else {
            this.b.a(new com.netease.mpay.server.a.b.e(str, bVar.e().a(o.this.a), an.a.OFFLINE_MOBILE_CENTER));
        }
    }
}
