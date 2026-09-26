package com.netease.mpay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bu extends com.netease.mpay.a {
    private com.netease.mpay.b.e d;
    private com.netease.mpay.e.b e;
    private com.netease.mpay.widget.s f;

    /* loaded from: classes.dex */
    private class a implements AuthenticationCallback {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(bu buVar, bv bvVar) {
            this();
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onDialogFinish() {
            bu.this.a.finish();
            bu.this.d.d.b();
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onEnterGame(String str, String str2) {
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onGuestBindSuccess(User user) {
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onLoginSuccess(User user) {
            bu.this.a.finish();
            bu.this.d.d.a();
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onLogout(String str) {
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();

        void b();
    }

    public bu(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(com.netease.mpay.e.b.o oVar, Integer num, AuthenticationCallback authenticationCallback) {
        new com.netease.mpay.f.bm(this.a, this.d.a(), this.d.b(), oVar, true, new bw(this, oVar, authenticationCallback, num)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.e.b bVar, com.netease.mpay.e.b.o oVar, String str, AuthenticationCallback authenticationCallback, Integer num) {
        new com.netease.mpay.widget.s(this.a).a(str, this.a.getString(RIdentifier.h.K), new bx(this, bVar, oVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        switch (this.d.c) {
            case 1:
                hi.a().a(this.a, this.d.d(), false, this.d.b, null, this.d.a, null, 1);
                return;
            case 2:
                new cw(this.a, this.d.a(), this.d.b(), false, new bv(this)).a();
                return;
            case 3:
                hi.a().a((Activity) this.a, this.d.d(), this.d.a, true, false, (Integer) 2);
                return;
            case 4:
                hi.a().b((Activity) this.a, this.d.d(), new com.netease.mpay.e.b(this.a, this.d.a()).c().a(this.d.a), (Integer) 6);
                return;
            case 5:
                hi.a().a((Activity) this.a, this.d.d(), z, z2, this.d.a, (Integer) 7);
                return;
            case 6:
            case 8:
            default:
                hi.a().a((Activity) this.a, this.d.d(), this.d.c, this.d.a, (Integer) 8);
                return;
            case 7:
                hi.a().a((Activity) this.a, (com.netease.mpay.b.m) new m.f(this.d.d(), this.d.b, null, null), this.d.a, (Integer) 3);
                return;
            case 9:
                hi.a().a((Activity) this.a, this.d.d(), this.d.a, (Integer) 4);
                return;
            case 10:
                hi.a().b((Activity) this.a, this.d.d(), this.d.a, (Integer) 5);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        this.f.a(str);
        if (this.d.d != null) {
            this.d.d.b();
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.e(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        this.a.finish();
        if ((i == 1 || i == 2 || i == 3 || i == 4 || i == 6 || i == 7 || i == 5 || i == 8) && (alVar instanceof com.netease.mpay.b.ao)) {
            this.d.d.a();
        } else {
            this.d.d.b();
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        bv bvVar = null;
        super.b(bundle);
        this.f = new com.netease.mpay.widget.s(this.a);
        this.e = new com.netease.mpay.e.b(this.a, this.d.a());
        com.netease.mpay.e.b.o a2 = this.e.c().a(this.d.a);
        if (a2 != null && !TextUtils.isEmpty(a2.d)) {
            a(a2, (Integer) null, new a(this, bvVar));
        } else {
            boolean z = (a2 == null || TextUtils.isEmpty(a2.d)) ? false : true;
            a(z ? false : true, z);
        }
    }
}
