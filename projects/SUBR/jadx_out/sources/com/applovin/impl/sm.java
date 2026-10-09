package com.applovin.impl;

import android.app.Activity;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public class sm extends yl {
    private final com.applovin.impl.sdk.j h;

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.n nVar;
        String str;
        StringBuilder sb;
        String str2 = "succeeded";
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Initializing AppLovin SDK v" + AppLovinSdk.VERSION + "...");
        }
        try {
            this.h.C().e();
            this.h.C().a(ba.h);
            this.h.C().a(ba.i);
            this.h.A().b(a());
            this.h.A().e(a());
            this.h.i0().a((yl) new zl(this.h), tm.b.OTHER);
            this.h.x().P();
            this.h.d0().c();
            this.h.v().l();
            if (yp.c(this.h)) {
                this.h.a();
            }
            this.h.U0();
            this.h.n().collectAppHubData();
            h();
            if (((Boolean) this.h.a(sj.i4)).booleanValue()) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sm$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.f();
                    }
                });
            }
            g();
            this.h.a(true);
            this.h.W().b();
            this.h.j().maybeFireAppKilledWhilePlayingAdPostback();
            this.h.z().maybeTrackAppOpenEvent();
            this.h.w().a();
            if (((Boolean) this.h.a(sj.S2)).booleanValue()) {
                this.h.p0().c();
            }
            if (((Boolean) this.h.a(sj.Y0)).booleanValue()) {
                this.h.g().b();
            } else {
                this.h.g().g();
            }
            if (this.h.M().g() || (((Boolean) this.h.a(ue.K6)).booleanValue() && yp.c(this.h) && this.h.y0())) {
                this.h.M().e();
            }
            if (this.h.Y() != null) {
                this.h.Y().b((String) this.h.a(sj.w));
            }
            this.h.V().i();
            if (com.applovin.impl.sdk.n.a()) {
                nVar = this.c;
                str = this.b;
                sb = new StringBuilder();
                sb.append("AppLovin SDK ");
                sb.append(AppLovinSdk.VERSION);
                sb.append(" initialization ");
                if (!this.h.s0()) {
                    str2 = com.ironsource.y8.h.t;
                }
                sb.append(str2);
                sb.append(" in ");
                sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
                sb.append("ms");
                nVar.a(str, sb.toString());
            }
        } catch (Throwable th) {
            try {
                com.applovin.impl.sdk.n.c("AppLovinSdk", "Failed to initialize SDK!", th);
                this.h.a(false);
                a(th);
                if (((Boolean) this.h.a(sj.j)).booleanValue()) {
                    this.h.W().a();
                }
                if (((Boolean) this.h.a(sj.i)).booleanValue()) {
                    this.h.Q0();
                }
                if (this.h.Y() != null) {
                    this.h.Y().b((String) this.h.a(sj.w));
                }
                this.h.V().i();
                if (!com.applovin.impl.sdk.n.a()) {
                    return;
                }
                nVar = this.c;
                str = this.b;
                sb = new StringBuilder();
                sb.append("AppLovin SDK ");
                sb.append(AppLovinSdk.VERSION);
                sb.append(" initialization ");
                if (!this.h.s0()) {
                }
            } catch (Throwable th2) {
                if (this.h.Y() != null) {
                    this.h.Y().b((String) this.h.a(sj.w));
                }
                this.h.V().i();
                if (com.applovin.impl.sdk.n.a()) {
                    com.applovin.impl.sdk.n nVar2 = this.c;
                    String str3 = this.b;
                    StringBuilder sb2 = new StringBuilder("AppLovin SDK ");
                    sb2.append(AppLovinSdk.VERSION);
                    sb2.append(" initialization ");
                    sb2.append(this.h.s0() ? "succeeded" : com.ironsource.y8.h.t);
                    sb2.append(" in ");
                    sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    sb2.append("ms");
                    nVar2.a(str3, sb2.toString());
                }
                throw th2;
            }
        }
    }

    public sm(com.applovin.impl.sdk.j jVar) {
        super("TaskInitializeSdk", jVar, true);
        this.h = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        sr.f(this.h);
    }

    private void g() {
        if (this.h.K().c()) {
            return;
        }
        Activity activityM0 = this.h.m0();
        if (activityM0 != null) {
            this.h.K().a(activityM0);
        } else {
            this.h.i0().a(new jn(this.h, true, "initializeAdapters", new Runnable() { // from class: com.applovin.impl.sm$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            }), tm.b.CORE, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.h.K().a(this.h.e().b());
    }

    private void h() {
        String str;
        String str2;
        boolean zC = this.h.g0().c();
        Map mapM = this.h.x().m();
        Map mapG = this.h.x().G();
        String strA = zC ? this.h.x().f().a() : "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        if (zC) {
            str = mapM.get("idfv") + " (use this for test devices)";
        } else {
            str = "<Enable verbose logging to see the App Set ID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        }
        pc pcVar = new pc();
        pcVar.a().a("=====AppLovin SDK=====");
        pcVar.a("===SDK Versions===").a("Version", AppLovinSdk.VERSION).a("Plugin Version", this.h.a(sj.K3)).a("Ad Review Version", v.b()).a("OM SDK Version", this.h.V().c());
        pcVar.a("===Device Info===").a("OS", yp.d()).a(IronSourceConstants.TYPE_GAID, strA).a("App Set ID", str).a("Model", mapM.get(org.json.md.v)).a("Locale", mapM.get("locale")).a("Emulator", mapM.get("sim")).a("Tablet", mapM.get("is_tablet"));
        pcVar.a("===App Info===").a("Application ID", mapG.get(com.ironsource.y8.h.V)).a("Target SDK", mapG.get("target_sdk")).a("ExoPlayer Version", Integer.valueOf(yp.f()));
        pcVar.a("===SDK Settings===").a("SDK Key", this.h.a0()).a("Mediation Provider", this.h.N()).a("TG", wp.a(this.h)).a("MD", this.h.a(sj.v)).a("Test Mode On", Boolean.valueOf(this.h.k0().c())).a("Verbose Logging On", Boolean.valueOf(zC));
        pcVar.a("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").a(a4.a(a()));
        pcVar.a("===MAX Terms and Privcay Policy Flow===");
        h4 h4VarU = this.h.u();
        boolean zJ = h4VarU.j();
        pcVar.a("Enabled", Boolean.valueOf(zJ));
        if (zJ) {
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = this.h.s().getConsentFlowUserGeography();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyE = h4VarU.e();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography2 = AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
            String str3 = "Other";
            if (consentFlowUserGeography == consentFlowUserGeography2) {
                str2 = "GDPR";
            } else {
                str2 = consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER ? "Other" : "Unknown";
            }
            pcVar.a("Consent Flow Geography", str2);
            if (yp.c(this.h)) {
                if (consentFlowUserGeographyE == consentFlowUserGeography2) {
                    str3 = "GDPR";
                } else if (consentFlowUserGeography != AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER) {
                    str3 = "None";
                }
                pcVar.a("Debug User Geography", str3);
            }
        }
        pcVar.a("Privacy Policy URI", h4VarU.g()).a("Terms of Service URI", h4VarU.h());
        pcVar.a("===CMP (CONSENT MANAGEMENT PLATFORM)===").a(this.h.j0().j());
        pcVar.a();
        com.applovin.impl.sdk.n.g("AppLovinSdk", pcVar.toString());
    }
}
