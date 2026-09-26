package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class lg extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.aa e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.o g;

    public lg(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.aa(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        super.a(this.a.getString(RIdentifier.h.dv));
        this.f = new com.netease.mpay.e.b(this.a, this.e.a());
        this.g = this.f.c().b(this.e.b());
        if (this.g != null && !TextUtils.isEmpty(this.g.d)) {
            w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.SET_RELATED_MOBILE));
            return;
        }
        if (this.e.a != null) {
            this.e.a.onFinish(null);
        }
        this.a.finish();
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        super.closeWindow();
        if (this.e.a != null) {
            this.e.a.onFinish(new User(this.f.d().a().j, this.g));
        }
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerifyRelatedMobile(String str) {
        try {
            int optInt = ((JSONObject) new JSONTokener(str).nextValue()).optInt("mobile_bind_status", 0);
            if (this.g.k != optInt) {
                this.g.k = optInt;
                this.f.c().a(this.g, this.e.b(), this.g.m);
            }
        } catch (NullPointerException e) {
            Cdo.a((Throwable) e);
        } catch (JSONException e2) {
            Cdo.a((Throwable) e2);
        }
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d());
    }
}
