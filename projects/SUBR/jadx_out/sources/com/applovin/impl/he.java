package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class he extends fe implements i8 {
    private boolean A;
    private final Bundle v;
    private final AtomicReference w;
    private final AtomicBoolean x;
    private final AtomicBoolean y;
    private boolean z;

    public Bundle m0() {
        return this.v;
    }

    public boolean q0() {
        return this.z;
    }

    public void a(boolean z) {
        this.z = z;
    }

    public he(int i, Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
        super(i, map, jSONObject, jSONObject2, null, jVar);
        this.v = new Bundle();
        this.y = new AtomicBoolean();
        this.w = new AtomicReference();
        this.x = new AtomicBoolean();
    }

    public long j0() {
        long jA = a("ad_hidden_timeout_ms", -1L);
        return jA >= 0 ? jA : b("ad_hidden_timeout_ms", ((Long) this.a.a(ue.l7)).longValue());
    }

    public boolean s0() {
        if (a("schedule_ad_hidden_on_ad_dismiss", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.a.a(ue.m7)).booleanValue();
    }

    public boolean t0() {
        if (a("schedule_ad_hidden_on_single_task_app_relaunch", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_single_task_app_relaunch", (Boolean) this.a.a(ue.n7)).booleanValue();
    }

    public long i0() {
        long jA = a("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
        return jA >= 0 ? jA : b("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.a.a(ue.o7)).longValue());
    }

    public long l0() {
        if (K() > 0) {
            return SystemClock.elapsedRealtime() - K();
        }
        return -1L;
    }

    public long n0() {
        long jA = a("fullscreen_display_delay_ms", -1L);
        return jA >= 0 ? jA : ((Long) this.a.a(ue.Y6)).longValue();
    }

    private he(he heVar, com.applovin.impl.mediation.g gVar) {
        super(heVar.J(), heVar.i(), heVar.a(), heVar.g(), gVar, heVar.a);
        this.v = new Bundle();
        this.y = new AtomicBoolean();
        this.w = heVar.w;
        this.x = heVar.x;
    }

    public long h0() {
        return a("ahdm", ((Long) this.a.a(ue.a7)).longValue());
    }

    public boolean u0() {
        return a("susaode", (Boolean) this.a.a(ue.Z6)).booleanValue();
    }

    public String o0() {
        return b("mcode", "");
    }

    public boolean r0() {
        return this.x.get();
    }

    public void f0() {
        this.x.set(true);
    }

    public eh k0() {
        return (eh) this.w.getAndSet(null);
    }

    public AtomicBoolean p0() {
        return this.y;
    }

    @Override // com.applovin.impl.i8
    public long getTimeToLiveMillis() {
        return g0() - (SystemClock.elapsedRealtime() - K());
    }

    private long g0() {
        long jA = a("ad_expiration_ms", -1L);
        return jA < 0 ? b("ad_expiration_ms", ((Long) this.a.a(ue.g7)).longValue()) : jA;
    }

    @Override // com.applovin.impl.i8
    public void setExpired() {
        this.A = true;
    }

    public void a(eh ehVar) {
        this.w.set(ehVar);
    }

    @Override // com.applovin.impl.fe
    public void a(Bundle bundle) {
        Bundle bundle2;
        super.a(bundle);
        if (bundle == null || (bundle2 = bundle.getBundle("applovin_ad_view_info")) == null) {
            return;
        }
        this.v.putBundle("applovin_ad_view_info", bundle2);
    }

    @Override // com.applovin.impl.fe
    public fe a(com.applovin.impl.mediation.g gVar) {
        return new he(this, gVar);
    }
}
