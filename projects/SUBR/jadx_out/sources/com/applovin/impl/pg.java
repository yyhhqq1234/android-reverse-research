package com.applovin.impl;

import android.content.Context;
import android.util.Log;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.ScriptInjector;
import com.iab.omid.library.applovin.adsession.Partner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class pg {
    private final com.applovin.impl.sdk.j a;
    private final Context b = com.applovin.impl.sdk.j.m();
    private String c;

    public String c() {
        return Omid.getVersion();
    }

    public boolean d() {
        return Omid.isActive();
    }

    public pg(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
    }

    public void i() {
        if (((Boolean) this.a.a(sj.f0)).booleanValue()) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("OpenMeasurementService", "Initializing Open Measurement SDK v" + c() + "...");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.pg$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.g();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Omid.activate(this.b);
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            com.applovin.impl.sdk.n nVarI = this.a.I();
            StringBuilder sb = new StringBuilder("Init ");
            sb.append(d() ? "succeeded" : com.ironsource.y8.h.t);
            sb.append(" and took ");
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb.append("ms");
            nVarI.a("OpenMeasurementService", sb.toString());
        }
        h();
    }

    public Partner b() {
        return Partner.createPartner((String) this.a.a(sj.g0), AppLovinSdk.VERSION);
    }

    public String a() {
        return this.c;
    }

    private void h() {
        this.a.i0().a((yl) new jn(this.a, "OpenMeasurementService", new Runnable() { // from class: com.applovin.impl.pg$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.f();
            }
        }), tm.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (this.c != null) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.b.getResources().openRawResource(R.raw.omsdk_v1_4_12)));
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            sb.append(line);
                        } else {
                            this.c = sb.toString();
                            bufferedReader.close();
                            return;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        Log.e("OpenMeasurementService", "Failed to load JavaScript Open Measurement SDK", th);
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e) {
                            Log.e("OpenMeasurementService", "Failed to close the BufferReader for reading JavaScript Open Measurement SDK", e);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e2) {
                Log.e("OpenMeasurementService", "Failed to close the BufferReader for reading JavaScript Open Measurement SDK", e2);
            }
        } catch (Throwable th3) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("OpenMeasurementService", "Failed to retrieve resource omsdk_v1_4_12.js", th3);
            }
        }
    }

    public boolean e() {
        String str = this.a.f0().getExtraParameters().get("enable_omsdk_testing");
        if (StringUtils.isValidString(str)) {
            return Boolean.parseBoolean(str);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public String a(String str) {
        String strInjectScriptContentIntoHtml;
        try {
            if (e()) {
                String strA = qg.a(this.a);
                if (StringUtils.isValidString(strA)) {
                    strInjectScriptContentIntoHtml = ScriptInjector.injectScriptContentIntoHtml(strA, str);
                } else {
                    strInjectScriptContentIntoHtml = str;
                }
            } else {
                strInjectScriptContentIntoHtml = str;
            }
            return ScriptInjector.injectScriptContentIntoHtml(this.c, strInjectScriptContentIntoHtml);
        } catch (Throwable th) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("OpenMeasurementService", "Failed to inject JavaScript SDK into HTML", th);
            }
            return str;
        }
    }
}
