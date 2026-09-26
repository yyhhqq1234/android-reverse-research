package com.netease.mpay;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.EnterGameActivity;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class bm {
    private Activity a;
    private String b;
    private String c;
    private MpayConfig d;
    private String e;
    private String f;
    private boolean g;
    private AuthenticationCallback h;
    private com.netease.mpay.f.a.b i = new bp(this);

    /* loaded from: classes.dex */
    public interface a {
        void a(EnterGameActivity.a aVar);
    }

    public bm(Activity activity, String str, String str2, MpayConfig mpayConfig, String str3, String str4, boolean z, AuthenticationCallback authenticationCallback) {
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = mpayConfig;
        this.e = str3;
        this.f = str4;
        this.g = z;
        this.h = authenticationCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a() {
        n.a().b();
    }

    public static void a(Activity activity, String str, ArrayList arrayList, a aVar) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        n.a().a(str, aVar, arrayList);
        n.a().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.server.response.i iVar) {
        if (iVar.d == null || TextUtils.isEmpty(iVar.d.a)) {
            this.h.onEnterGame(iVar.a, iVar.b);
            return;
        }
        com.netease.mpay.e.b.o b = new com.netease.mpay.e.b(this.a, this.b).c().b(this.c);
        if (b != null && !TextUtils.isEmpty(b.d) && b.m) {
            if (n.a().b(this.b) && !b.c.equals(iVar.d.a)) {
                this.h.onLogout(b.c);
            } else if (n.a().b(this.b)) {
                this.h.onEnterGame(iVar.a, iVar.b);
                return;
            }
        }
        b.a(this.a, b.a.EnterGameLoginActivity, new com.netease.mpay.b.e(new a.C0035a(this.b, this.c, this.d), iVar.d.a, iVar.d.c, iVar.d.b, new bt(this, iVar)), null, null);
    }

    public void a(EnterGameActivity.a aVar) {
        cz.a(this.a).a(this.a, this.b, true, new bn(this, aVar));
    }
}
