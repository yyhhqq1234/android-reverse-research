package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.URLUtil;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.privacy.consentFlow.TermsAndPrivacyPolicyFlowSettingsImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.AdError;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h4 implements AppLovinCommunicatorSubscriber, AppLovinCommunicatorPublisher {
    private final com.applovin.impl.sdk.j a;
    private final m4 b;
    private List c;

    public interface b {
        void a(a aVar);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "consent_flow_manager";
    }

    public boolean i() {
        com.applovin.impl.sdk.j jVar = com.applovin.impl.sdk.j.u0;
        if (!jVar.y0()) {
            return false;
        }
        h4 h4VarU = jVar.u();
        List list = h4VarU.c;
        return h4VarU.b.b() || (list != null && list.size() > 0);
    }

    public static class a {
        private boolean a;
        private f4 b;

        public a() {
        }

        public String toString() {
            return "ConsentFlowManager.FlowCompletionStatus(cmpPromptShown=" + b() + ", error=" + a() + ")";
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a((Object) this) || b() != aVar.b()) {
                return false;
            }
            f4 f4VarA = a();
            f4 f4VarA2 = aVar.a();
            return f4VarA != null ? f4VarA.equals(f4VarA2) : f4VarA2 == null;
        }

        public int hashCode() {
            int i = b() ? 79 : 97;
            f4 f4VarA = a();
            return ((i + 59) * 59) + (f4VarA == null ? 43 : f4VarA.hashCode());
        }

        public boolean b() {
            return this.a;
        }

        public a(f4 f4Var) {
            this.b = f4Var;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public f4 a() {
            return this.b;
        }

        public void a(boolean z) {
            this.a = z;
        }

        public void a(f4 f4Var) {
            this.b = f4Var;
        }
    }

    public h4(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = new m4(jVar);
    }

    public TermsAndPrivacyPolicyFlowSettingsImpl d() {
        return (TermsAndPrivacyPolicyFlowSettingsImpl) this.a.f0().getTermsAndPrivacyPolicyFlowSettings();
    }

    public boolean j() {
        Map<String, String> extraParameters = this.a.f0().getExtraParameters();
        if (extraParameters.containsKey("consent_flow_enabled")) {
            return Boolean.parseBoolean(extraParameters.get("consent_flow_enabled"));
        }
        return d().isEnabled();
    }

    public Uri g() {
        return d().getPrivacyPolicyUri();
    }

    public Uri h() {
        return d().getTermsOfServiceUri();
    }

    public AppLovinSdkConfiguration.ConsentFlowUserGeography e() {
        return d().getDebugUserGeography();
    }

    public static TermsAndPrivacyPolicyFlowSettingsImpl a(Context context) {
        if (context == null) {
            com.applovin.impl.sdk.n.h("AppLovinSdk", "Failed to get default Terms and Privacy Policy flow settings.");
            return new TermsAndPrivacyPolicyFlowSettingsImpl(false, AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN, null, null);
        }
        String strA = yp.a(context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName()), context, (com.applovin.impl.sdk.j) null);
        JSONObject jSONObject = JsonUtils.getJSONObject(StringUtils.isValidString(strA) ? JsonUtils.jsonObjectFromJsonString(strA, new JSONObject()) : new JSONObject(), "consent_flow_settings", new JSONObject());
        Boolean bool = JsonUtils.getBoolean(jSONObject, "consent_flow_enabled", Boolean.FALSE);
        String string = JsonUtils.getString(jSONObject, "consent_flow_debug_user_geography", "");
        String string2 = JsonUtils.getString(jSONObject, "consent_flow_terms_of_service", null);
        Uri uri = URLUtil.isValidUrl(string2) ? Uri.parse(string2) : null;
        String string3 = JsonUtils.getString(jSONObject, "consent_flow_privacy_policy", null);
        return new TermsAndPrivacyPolicyFlowSettingsImpl(bool.booleanValue(), a(string), URLUtil.isValidUrl(string3) ? Uri.parse(string3) : null, uri);
    }

    public Uri b() {
        return Uri.parse((String) this.a.a(this.a.z0() ? sj.p6 : sj.o6));
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (h() != null && appLovinCommunicatorMessage.getMessageData().getBoolean("include_tos")) {
            this.c = n4.b(this.a);
        } else {
            this.c = n4.a(this.a);
        }
        if (this.c.size() == 0) {
            yp.a("No Consent Flow Available", (String) null, this.a.m0());
        } else {
            b(this.a.m0(), new b() { // from class: com.applovin.impl.h4$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.h4.b
                public final void a(h4.a aVar) {
                    this.f$0.a(aVar);
                }
            });
        }
    }

    public JSONObject c() {
        TermsAndPrivacyPolicyFlowSettingsImpl termsAndPrivacyPolicyFlowSettingsImplD = d();
        Uri privacyPolicyUri = termsAndPrivacyPolicyFlowSettingsImplD.getPrivacyPolicyUri();
        Uri termsOfServiceUri = termsAndPrivacyPolicyFlowSettingsImplD.getTermsOfServiceUri();
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "enabled", String.valueOf(j()));
        JsonUtils.putString(jSONObject, "privacy_policy_url", privacyPolicyUri != null ? privacyPolicyUri.toString() : "");
        JsonUtils.putString(jSONObject, "terms_of_service_url", termsOfServiceUri != null ? termsOfServiceUri.toString() : "");
        return jSONObject;
    }

    public String f() {
        d();
        Object objG = g();
        Object objH = h();
        StringBuilder sb = new StringBuilder("\nConsent Flow Enabled - ");
        sb.append(j());
        sb.append("\nPrivacy Policy - ");
        if (objG == null) {
            objG = AdError.UNDEFINED_DOMAIN;
        }
        sb.append(objG);
        sb.append("\nTerms of Service - ");
        if (objH == null) {
            objH = AdError.UNDEFINED_DOMAIN;
        }
        sb.append(objH);
        return sb.toString();
    }

    public void a() {
        if (j()) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("AppLovinSdk", "Generating Consent Flow...");
            }
            this.c = g4.c(this.a);
        }
        if (yp.i(com.applovin.impl.sdk.j.m())) {
            AppLovinCommunicator.getInstance(com.applovin.impl.sdk.j.m()).subscribe(this, "start_sdk_consent_flow");
        }
    }

    public void b(final Activity activity, final b bVar) {
        if (!j()) {
            bVar.a(new a(new f4(f4.d, "Failed to start consent flow. Please make sure that the consent flow is enabled.")));
        } else if (CollectionUtils.isEmpty(this.c)) {
            this.a.b(uj.o, Boolean.FALSE);
            bVar.a(new a(new f4(f4.c, "User may not be eligible for flow.")));
        } else {
            a(activity, new Runnable() { // from class: com.applovin.impl.h4$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(activity, bVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Uri uri, DialogInterface dialogInterface, int i) {
        throw new IllegalStateException("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL Please refer to " + uri.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Uri uri, DialogInterface dialogInterface, int i) {
        tp.a(uri, com.applovin.impl.sdk.j.m(), this.a);
        throw new IllegalStateException("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL Please refer to " + uri.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        final Uri uriB = b();
        new AlertDialog.Builder(activity).setTitle("Missing Privacy Policy URL").setMessage("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL").setNeutralButton("Go To Documentation", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.h4$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.a(uriB, dialogInterface, i);
            }
        }).setNegativeButton("DISMISS", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.h4$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                h4.b(uriB, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar, a aVar) {
        if (aVar.b != null) {
            if (aVar.b.a() != f4.e) {
                this.c = null;
            }
        } else {
            this.a.b(uj.o, Boolean.FALSE);
            this.c = null;
        }
        bVar.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, final b bVar) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("ConsentFlowManager", "Starting consent flow with states: " + this.c);
        }
        if (!this.a.r0()) {
            this.a.b(uj.o, Boolean.TRUE);
        }
        this.b.a(this.c, activity, new b() { // from class: com.applovin.impl.h4$$ExternalSyntheticLambda5
            @Override // com.applovin.impl.h4.b
            public final void a(h4.a aVar) {
                this.f$0.a(bVar, aVar);
            }
        });
    }

    private void a(final Activity activity, Runnable runnable) {
        if (d().getPrivacyPolicyUri() != null) {
            runnable.run();
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.h4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(activity);
                }
            });
        }
    }

    private static AppLovinSdkConfiguration.ConsentFlowUserGeography a(String str) {
        if ("gdpr".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
        }
        if ("other".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER;
        }
        return AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar) {
        AppLovinCommunicator.getInstance(com.applovin.impl.sdk.j.m()).getMessagingService().publish(new AppLovinCommunicatorMessage(new Bundle(), "sdk_consent_flow_finished", this));
    }
}
