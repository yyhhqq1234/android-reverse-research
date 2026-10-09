package org.json.mediationsdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.json.environment.ContextProvider;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.yg;
import org.json.z2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class y implements yg.b {
    protected AbstractAdapter a;
    protected z2 b;
    private boolean c;
    protected JSONObject d;
    protected String e;
    protected int f;
    protected Long g = null;

    y(z2 z2Var, AbstractAdapter abstractAdapter) {
        this.b = z2Var;
        this.a = abstractAdapter;
        this.d = z2Var.c();
    }

    private void a(String str, int i) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, k() + " " + c() + " : " + str, i);
    }

    public void a(String str) {
        a(str, 0);
    }

    public void a(boolean z) {
        this.c = z;
    }

    @Override // com.ironsource.yg.b
    public int b() {
        return this.b.e();
    }

    public void b(String str) {
        a(str, 3);
    }

    @Override // com.ironsource.yg.b
    public String c() {
        return this.b.f();
    }

    public void c(String str) {
        this.e = d.b().c(str);
    }

    public abstract IronSource.AD_UNIT d();

    public Long e() {
        return this.g;
    }

    public String f() {
        return String.format("%s %s", i(), Integer.valueOf(hashCode()));
    }

    public int g() {
        return this.b.d();
    }

    public boolean h() {
        return this.c;
    }

    public String i() {
        return this.b.h().isMultipleInstances() ? this.b.h().getProviderTypeForReflection() : this.b.h().getProviderName();
    }

    public String j() {
        return this.b.g();
    }

    public abstract String k();

    public int l() {
        return 1;
    }

    public Map<String, Object> m() {
        HashMap map = new HashMap();
        try {
            AbstractAdapter abstractAdapter = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            map.put("spId", this.b.i());
            map.put(IronSourceConstants.EVENTS_PROVIDER, this.b.a());
            map.put("instanceType", Integer.valueOf(p() ? 2 : 1));
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(l()));
            if (!TextUtils.isEmpty(this.e)) {
                map.put("dynamicDemandSource", this.e);
            }
        } catch (Throwable th) {
            l9.d().a(th);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getProviderEventData " + c() + ")", th);
        }
        return map;
    }

    public int n() {
        return this.f;
    }

    public boolean o() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        try {
            if (ContextProvider.getInstance().getCurrentActiveActivity() != null || !this.a.isUsingActivityBeforeImpression(d())) {
                return false;
            }
            ironLog.verbose(c() + " - is using activity before impression and activity is null");
            return true;
        } catch (Throwable th) {
            l9.d().a(th);
            b("Exception while calling adapter.isUsingActivityBeforeImpression() - " + th.getLocalizedMessage());
            return true;
        }
    }

    public boolean p() {
        return this.b.j();
    }

    public void q() {
        try {
            AbstractAdapter abstractAdapter = this.a;
            if (abstractAdapter != null) {
                abstractAdapter.releaseMemory(this.b.b(), this.d);
            }
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.INTERNAL.error("exception - " + th.getMessage());
        }
        this.a = null;
    }

    public boolean r() {
        if (o()) {
            return false;
        }
        return p() || s();
    }

    public boolean s() {
        return this.b.k();
    }
}
