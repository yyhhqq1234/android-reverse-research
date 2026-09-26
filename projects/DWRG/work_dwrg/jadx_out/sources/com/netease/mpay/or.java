package com.netease.mpay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.auth.b;
import com.netease.mpay.widget.RIdentifier;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* loaded from: classes.dex */
public class or extends com.netease.mpay.a {
    private com.netease.mpay.b.k d;
    private a e;
    private c f;
    private boolean g;
    private com.netease.mpay.widget.av h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        LOADING,
        APPLY_AUTH,
        AUTH_DONE;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        void a(String str);

        void b(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends BroadcastReceiver {
        private b b;

        public c(b bVar) {
            this.b = bVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            or.this.e = a.AUTH_DONE;
            or.this.a(or.this.f);
            try {
                this.b.a(b.c.a(intent));
            } catch (b.C0034b e) {
                this.b.b(e.a());
            }
        }
    }

    public or(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar) {
        if (cVar == null) {
            return;
        }
        LocalBroadcastManager.getInstance(this.a).unregisterReceiver(cVar);
        this.f = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            new com.netease.mpay.b.aq().a(this.a);
        } else {
            new com.netease.mpay.widget.s(this.a).a(str, this.a.getString(RIdentifier.h.cH), new ou(this), this.a.getString(RIdentifier.h.cJ), new ov(this), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(this.a, com.netease.mpay.auth.b.a());
        createWXAPI.registerApp(com.netease.mpay.auth.b.a());
        SendAuth.Req req = new SendAuth.Req();
        req.scope = "snsapi_userinfo";
        req.state = new b.a(this.a).a();
        this.e = a.APPLY_AUTH;
        if (!createWXAPI.sendReq(req)) {
            new com.netease.mpay.b.aq().a(this.a);
        } else {
            this.f = new c(new os(this));
            LocalBroadcastManager.getInstance(this.a).registerReceiver(this.f, b.c.a());
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.k(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        this.e = a.LOADING;
        super.b(bundle);
        if (this.d.a() == null) {
            new com.netease.mpay.b.am().a(this.a);
        } else {
            this.g = false;
        }
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.g) {
            if (a.APPLY_AUTH == this.e) {
                a(this.f);
                new com.netease.mpay.b.aq().a(this.a);
                return;
            }
            return;
        }
        this.g = true;
        this.h = com.netease.mpay.widget.av.a(this.a, false);
        this.h.show();
        new Handler().postDelayed(new ow(this), 100L);
    }

    @Override // com.netease.mpay.a
    public void i() {
        super.i();
        if (this.h == null || !this.h.isShowing()) {
            return;
        }
        this.h.dismiss();
    }

    @Override // com.netease.mpay.a
    public void j() {
        super.j();
        if (this.h != null && this.h.isShowing()) {
            this.h.dismiss();
        }
        a(this.f);
    }
}
