package com.applovin.adview;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.window.OnBackInvokedCallback;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.la;
import com.applovin.impl.o9;
import com.applovin.impl.r;
import com.applovin.impl.s;
import com.applovin.impl.s6;
import com.applovin.impl.sb;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.t9;
import com.applovin.impl.uj;
import com.applovin.impl.x1;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinFullscreenActivity extends Activity implements s6 {
    public static sb parentInterstitialWrapper;
    private j a;
    private o9 b;
    private final AtomicBoolean c = new AtomicBoolean(true);
    private com.applovin.impl.adview.activity.a d;
    private b f;
    private boolean g;
    private x1 h;
    private long i;

    private static class b implements OnBackInvokedCallback {
        private final Runnable a;

        protected b(Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.window.OnBackInvokedCallback
        public void onBackInvoked() {
            this.a.run();
        }
    }

    private void b() {
        j jVar = this.a;
        if (jVar == null || !((Boolean) jVar.a(sj.h2)).booleanValue()) {
            return;
        }
        final Long l = (Long) this.a.a(sj.i2);
        this.h = x1.a(l.longValue(), true, this.a, new Runnable() { // from class: com.applovin.adview.AppLovinFullscreenActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        o9 o9Var = this.b;
        if (o9Var != null) {
            o9Var.s();
        }
        if (yp.e(getApplicationContext())) {
            super.onBackPressed();
        }
    }

    @Override // com.applovin.impl.s6
    public void dismiss() {
        if (z3.l() && this.f != null) {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.f);
            this.f = null;
        }
        o9 o9Var = this.b;
        if (o9Var != null) {
            o9Var.f();
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        o9 o9Var = this.b;
        if (o9Var != null) {
            o9Var.a(configuration);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && parentInterstitialWrapper == null) {
            n.j("AppLovinFullscreenActivity", "Dismissing ad. Activity was destroyed while in background.");
            dismiss();
            return;
        }
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            n.c("AppLovinFullscreenActivity", "Failed to request window feature", th);
        }
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        View viewFindViewById = findViewById(R.id.content);
        viewFindViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        String stringExtra = getIntent().getStringExtra("com.applovin.interstitial.sdk_key");
        if (TextUtils.isEmpty(stringExtra)) {
            sb sbVar = parentInterstitialWrapper;
            if (sbVar != null && sbVar.f() != null) {
                sb.a(parentInterstitialWrapper.f(), parentInterstitialWrapper.c(), "Empty SDK key", null, this);
            }
            finish();
            return;
        }
        j jVarA = AppLovinSdk.getInstance(stringExtra, new AppLovinSdkSettings(this), this).a();
        this.a = jVarA;
        this.g = ((Boolean) jVarA.a(sj.z2)).booleanValue();
        viewFindViewById.setFitsSystemWindows(true);
        r.a(this.g, this);
        if (z3.l() && ((Boolean) this.a.a(sj.Q5)).booleanValue()) {
            this.f = new b(new Runnable() { // from class: com.applovin.adview.AppLovinFullscreenActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            });
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.f);
        }
        a();
        b();
        sb sbVar2 = parentInterstitialWrapper;
        if (sbVar2 != null) {
            o9.a(sbVar2.f(), parentInterstitialWrapper.b(), parentInterstitialWrapper.c(), parentInterstitialWrapper.d(), parentInterstitialWrapper.h(), this.a, this, new a());
            return;
        }
        Intent intent = new Intent(this, (Class<?>) FullscreenAdService.class);
        com.applovin.impl.adview.activity.a aVar = new com.applovin.impl.adview.activity.a(this, this.a);
        this.d = aVar;
        bindService(intent, aVar, 1);
        if (z3.j()) {
            String str = this.a.f0().getExtraParameters().get("disable_set_data_dir_suffix");
            if (StringUtils.isValidString(str) && Boolean.parseBoolean(str)) {
                return;
            }
            try {
                WebView.setDataDirectorySuffix(String.valueOf(Process.myPid()));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        j jVar = this.a;
        if (jVar != null && ((Boolean) jVar.a(sj.g2)).booleanValue()) {
            this.a.h0().b(uj.M);
            this.a.h0().b(uj.O);
            this.a.h0().b(uj.P);
        }
        if (this.h != null) {
            this.a.h0().b(uj.N);
            this.h.a();
            this.h = null;
        }
        com.applovin.impl.adview.activity.a aVar = this.d;
        if (aVar != null) {
            try {
                unbindService(aVar);
            } catch (Throwable unused) {
            }
        }
        o9 o9Var = this.b;
        if (o9Var != null) {
            if (!o9Var.j()) {
                this.b.f();
            }
            this.b.t();
        }
        parentInterstitialWrapper = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        o9 o9Var = this.b;
        if (o9Var != null) {
            o9Var.a(i, keyEvent);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        o9 o9Var = this.b;
        if (o9Var != null) {
            o9Var.u();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        o9 o9Var;
        try {
            super.onResume();
            if (this.c.get() || (o9Var = this.b) == null) {
                return;
            }
            o9Var.v();
        } catch (IllegalArgumentException e) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("AppLovinFullscreenActivity", "Error was encountered in onResume().", e);
            }
            this.a.D().a("AppLovinFullscreenActivity", y8.h.u0, e);
            dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        o9 o9Var = this.b;
        if (o9Var != null) {
            o9Var.w();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (this.b != null) {
            if (!this.c.getAndSet(false) || (this.b instanceof t9)) {
                this.b.b(z);
            }
            if (z) {
                r.a(this.g, this);
            }
        }
        super.onWindowFocusChanged(z);
    }

    private void a() {
        sb sbVar;
        j jVar = this.a;
        if (jVar == null || !((Boolean) jVar.a(sj.g2)).booleanValue() || (sbVar = parentInterstitialWrapper) == null || sbVar.f() == null) {
            return;
        }
        com.applovin.impl.sdk.ad.b bVarF = parentInterstitialWrapper.f();
        List listG = bVarF.g();
        if (CollectionUtils.isEmpty(listG)) {
            return;
        }
        s sVar = (s) listG.get(0);
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_url", sVar.c());
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_backup_url", sVar.a());
        this.a.h0().b(uj.O, jSONObject.toString());
        this.a.h0().b(uj.M, Long.valueOf(System.currentTimeMillis()));
        this.a.h0().b(uj.P, CollectionUtils.toJsonString(la.a(bVarF), JsonUtils.EMPTY_JSON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l) {
        this.i += l.longValue();
        this.a.h0().b(uj.N, Long.valueOf(this.i));
    }

    class a implements o9.d {
        a() {
        }

        @Override // com.applovin.impl.o9.d
        public void a(o9 o9Var) {
            AppLovinFullscreenActivity.this.b = o9Var;
            o9Var.y();
        }

        @Override // com.applovin.impl.o9.d
        public void a(String str, Throwable th) {
            sb.a(AppLovinFullscreenActivity.parentInterstitialWrapper.f(), AppLovinFullscreenActivity.parentInterstitialWrapper.c(), str, th, AppLovinFullscreenActivity.this);
        }
    }

    public void setPresenter(o9 o9Var) {
        this.b = o9Var;
    }
}
