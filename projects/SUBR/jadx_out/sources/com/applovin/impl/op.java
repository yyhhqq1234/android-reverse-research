package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class op extends re {
    private com.applovin.impl.sdk.j a;
    private dc b;

    private enum c {
        DESCRIPTION,
        CONSENT_FLOW_GEOGRAPHY,
        DEBUG_USER_GEOGRAPHY
    }

    private enum d {
        SETTINGS,
        GDPR_APPLICABILITY
    }

    private enum e {
        PRIVACY_POLICY_URL,
        TERMS_OF_SERVICE_URL
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List c() {
        ArrayList arrayList = new ArrayList(e.values().length);
        arrayList.add(b());
        arrayList.add(d());
        return arrayList;
    }

    public void initialize(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        a aVar = new a(this);
        this.b = aVar;
        aVar.a(new b(jVar));
        this.b.notifyDataSetChanged();
    }

    class a extends dc {
        @Override // com.applovin.impl.dc
        protected int b() {
            return d.values().length;
        }

        a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.dc
        protected int d(int i) {
            if (i == d.SETTINGS.ordinal()) {
                return e.values().length;
            }
            return c.values().length;
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            if (i == d.SETTINGS.ordinal()) {
                return new fj("SETTINGS");
            }
            return new fj("GDPR APPLICABILITY");
        }

        @Override // com.applovin.impl.dc
        protected List c(int i) {
            return i == d.SETTINGS.ordinal() ? op.this.c() : op.this.a();
        }
    }

    class b implements dc.a {
        final /* synthetic */ com.applovin.impl.sdk.j a;

        b(com.applovin.impl.sdk.j jVar) {
            this.a = jVar;
        }

        @Override // com.applovin.impl.dc.a
        public void a(kb kbVar, cc ccVar) {
            if (kbVar.b() == d.SETTINGS.ordinal()) {
                if (kbVar.a() == e.PRIVACY_POLICY_URL.ordinal()) {
                    if (this.a.u().g() != null) {
                        tp.a(this.a.u().g(), com.applovin.impl.sdk.j.m(), this.a);
                        return;
                    } else {
                        yp.a("Missing Privacy Policy URL", "You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL", op.this);
                        return;
                    }
                }
                if (kbVar.a() != e.TERMS_OF_SERVICE_URL.ordinal() || this.a.u().h() == null) {
                    return;
                }
                tp.a(this.a.u().h(), com.applovin.impl.sdk.j.m(), this.a);
            }
        }
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        return this.a;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("MAX Terms and Privacy Policy Flow");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.b);
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        dc dcVar = this.b;
        if (dcVar != null) {
            dcVar.a((dc.a) null);
        }
    }

    private cc d() {
        cc.b bVarD = cc.a().d("Terms of Service URL");
        if (this.a.u().h() != null) {
            bVarD.a(R.drawable.applovin_ic_check_mark_bordered);
            bVarD.b(t3.a(R.color.applovin_sdk_checkmarkColor, this));
            bVarD.a(true);
        } else {
            bVarD.c("None");
            bVarD.a(false);
        }
        return bVarD.a();
    }

    private cc a(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography, boolean z) {
        String str;
        cc.b bVarD = cc.a().d("Consent Flow Geography");
        if (consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
            str = "GDPR";
        } else {
            str = consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER ? "Other" : "Unknown";
        }
        return bVarD.c(str).b(z).a();
    }

    private cc b(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography, boolean z) {
        String str;
        cc.b bVarD = cc.a().d("Debug User Geography");
        if (consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
            str = "GDPR";
        } else {
            str = consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER ? "Other" : "None";
        }
        return bVarD.c(str).b(z).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a() {
        ArrayList arrayList = new ArrayList(c.values().length);
        AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = this.a.s().getConsentFlowUserGeography();
        AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyE = this.a.u().e();
        boolean z = yp.c(this.a) && consentFlowUserGeographyE != AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN;
        arrayList.add(cc.a().d("AppLovin determines whether the user is located in a GDPR region. If the user is in a GDPR region, the MAX SDK presents Google UMP.\n\nYou can test the flow on debug mode by overriding the region check by setting the debug user geography.").a());
        arrayList.add(a(consentFlowUserGeography, !z));
        arrayList.add(b(consentFlowUserGeographyE, z));
        return arrayList;
    }

    private cc b() {
        boolean z = this.a.u().g() != null;
        return cc.a().d("Privacy Policy URL").a(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).b(t3.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this)).a(true).a();
    }
}
