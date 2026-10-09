package com.applovin.impl.privacy.cmp;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.impl.m3;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.yp;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private final j a;
    private final n b;
    private ConsentForm c;

    /* JADX INFO: renamed from: com.applovin.impl.privacy.cmp.a$a, reason: collision with other inner class name */
    class C0031a implements ConsentInformation.OnConsentInfoUpdateSuccessListener {
        final /* synthetic */ Activity a;
        final /* synthetic */ d b;

        /* JADX INFO: renamed from: com.applovin.impl.privacy.cmp.a$a$a, reason: collision with other inner class name */
        class C0032a implements UserMessagingPlatform.OnConsentFormLoadSuccessListener {
            C0032a() {
            }

            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
            public void onConsentFormLoadSuccess(ConsentForm consentForm) {
                a.this.a("Successfully loaded consent form");
                a.this.c = consentForm;
                C0031a.this.b.onFlowLoaded(null);
            }
        }

        /* JADX INFO: renamed from: com.applovin.impl.privacy.cmp.a$a$b */
        class b implements UserMessagingPlatform.OnConsentFormLoadFailureListener {
            b() {
            }

            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
            public void onConsentFormLoadFailure(FormError formError) {
                a.this.b("Failed to load with error: " + formError.getMessage());
                C0031a c0031a = C0031a.this;
                c0031a.b.onFlowLoadFailed(a.this.a(formError, "Consent form load failed"));
            }
        }

        C0031a(Activity activity, d dVar) {
            this.a = activity;
            this.b = dVar;
        }

        @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
        public void onConsentInfoUpdateSuccess() {
            ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(this.a);
            boolean zIsConsentFormAvailable = consentInformation.isConsentFormAvailable();
            int consentStatus = consentInformation.getConsentStatus();
            a.this.a("Loaded parameters consentStatus: " + consentStatus + ", consentFormAvailable: " + zIsConsentFormAvailable);
            if (!zIsConsentFormAvailable) {
                a.this.b("Failed to load form.");
                this.b.onFlowLoadFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_UNAVAILABLE, "Consent form unavailable"));
                return;
            }
            if (consentStatus == 2) {
                a.this.a("Successfully requested consent info");
                a.this.a("Loading consent form...");
                UserMessagingPlatform.loadConsentForm(this.a, new C0032a(), new b());
                return;
            }
            a.this.b("Failed to load with consent status: " + consentStatus);
            this.b.onFlowLoadFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_NOT_REQUIRED, "Consent form not required for consent status: " + consentStatus));
        }
    }

    class b implements ConsentInformation.OnConsentInfoUpdateFailureListener {
        final /* synthetic */ d a;

        b(d dVar) {
            this.a = dVar;
        }

        @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
        public void onConsentInfoUpdateFailure(FormError formError) {
            a.this.b("Failed to request consent info with error: " + formError.getMessage());
            this.a.onFlowLoadFailed(a.this.a(formError, "Consent info update failed"));
        }
    }

    class c implements ConsentForm.OnConsentFormDismissedListener {
        final /* synthetic */ d a;

        c(d dVar) {
            this.a = dVar;
        }

        @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
        public void onConsentFormDismissed(FormError formError) {
            if (formError == null) {
                a.this.a("Consent form finished showing");
                this.a.onFlowHidden(null);
                return;
            }
            a.this.b("Failed to show with error: " + formError.getMessage());
            this.a.onFlowShowFailed(a.this.a(formError, "Consent form show failed"));
        }
    }

    public interface d {
        void onFlowHidden(Bundle bundle);

        void onFlowLoadFailed(CmpErrorImpl cmpErrorImpl);

        void onFlowLoaded(Bundle bundle);

        void onFlowShowFailed(CmpErrorImpl cmpErrorImpl);
    }

    public a(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(j.m());
        a("Initializing with SDK Version: " + b() + ", consentStatus: " + consentInformation.getConsentStatus() + ", consentFormAvailable: " + consentInformation.isConsentFormAvailable());
    }

    public String b() {
        return null;
    }

    public void c() {
        a("Resetting consent information");
        UserMessagingPlatform.getConsentInformation(j.m()).reset();
    }

    public boolean d() {
        return true;
    }

    public boolean e() {
        return true;
    }

    public void a(Activity activity, m3 m3Var, d dVar) {
        ConsentRequestParameters.Builder builder = new ConsentRequestParameters.Builder();
        if (yp.c(this.a) && m3Var.a() == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
            builder.setConsentDebugSettings(new ConsentDebugSettings.Builder(activity).setForceTesting(true).setDebugGeography(1).addTestDeviceHashedId(StringUtils.emptyIfNull(this.a.f0().getExtraParameters().get("google_test_device_hashed_id"))).build());
        }
        UserMessagingPlatform.getConsentInformation(activity).requestConsentInfoUpdate(activity, builder.build(), new C0031a(activity, dVar), new b(dVar));
    }

    public void a() {
        if (this.c != null) {
            this.c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public CmpErrorImpl a(FormError formError, String str) {
        AppLovinCmpError.Code code = AppLovinCmpError.Code.UNSPECIFIED;
        int errorCode = formError.getErrorCode();
        if (errorCode == 1 || errorCode == 2) {
            code = AppLovinCmpError.Code.FORM_UNAVAILABLE;
        } else if (errorCode == 3) {
            code = AppLovinCmpError.Code.INTEGRATION_ERROR;
        } else if (errorCode == 4) {
            code = AppLovinCmpError.Code.FORM_UNAVAILABLE;
        }
        return new CmpErrorImpl(code, str, formError.getErrorCode(), formError.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (n.a()) {
            this.b.a("GoogleCmpAdapter", str);
        }
    }

    public void b(Activity activity, m3 m3Var, d dVar) {
        if (this.c == null) {
            b("Failed to show - not ready yet");
            dVar.onFlowShowFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_UNAVAILABLE, "Consent form not ready"));
        } else {
            a("Showing consent form...");
            this.c.show(activity, new c(dVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (n.a()) {
            this.b.b("GoogleCmpAdapter", str);
        }
    }
}
