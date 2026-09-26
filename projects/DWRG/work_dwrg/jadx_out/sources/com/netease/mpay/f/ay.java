package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.b.a;
import com.netease.mpay.b.m;
import com.netease.mpay.cq;
import com.netease.mpay.f.a.b;
import com.netease.mpay.hi;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class ay extends ak {

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements com.netease.mpay.f.a.b {
        Activity a;
        String b;
        MpayConfig c;
        String d;
        a e;
        com.netease.mpay.e.b.o f;
        Integer g;
        com.netease.mpay.widget.s h;

        public b(Activity activity, MpayConfig mpayConfig, String str, String str2, a aVar, com.netease.mpay.e.b.o oVar, Integer num) {
            this.a = activity;
            this.b = str;
            this.c = mpayConfig;
            this.d = str2;
            this.e = aVar;
            this.f = oVar;
            this.g = num;
            this.h = new com.netease.mpay.widget.s(activity);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.f.a.b
        public void a(b.a aVar, String str) {
            this.h.a(cq.a(this.a, this.b, RIdentifier.h.aJ), this.a.getString(RIdentifier.h.cH), new az(this), this.a.getString(RIdentifier.h.cI), new ba(this), false);
        }

        @Override // com.netease.mpay.f.a.b
        public void a(com.netease.mpay.server.response.x xVar) {
            if (xVar.a()) {
                this.e.a();
            } else {
                hi.a().a(this.a, new m.g(new a.C0035a(this.b, this.d, this.c), this.f.c, m.b.PREPAY, null), this.g);
            }
        }
    }

    public ay(Activity activity, MpayConfig mpayConfig, String str, String str2, a aVar, com.netease.mpay.e.b.o oVar, Integer num) {
        super(activity, str, str2, oVar, new b(activity, mpayConfig, str, str2, aVar, oVar, num));
        super.c();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
