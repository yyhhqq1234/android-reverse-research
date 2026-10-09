package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.applovin.sdk.R;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class m4 {
    private final com.applovin.impl.sdk.j a;
    private final int b;
    private List c;
    private String d;
    private i4 e;
    private h4.b f;
    private h4.a g;
    private i4 h;
    private Dialog i;
    private final p j = new a();

    class a extends p {
        a() {
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            if ((activity instanceof AppLovinWebViewActivity) || m4.this.h == null) {
                return;
            }
            if (m4.this.i != null) {
                m4 m4Var = m4.this;
                if (!r.a(m4Var.a(m4Var.i))) {
                    m4.this.i.dismiss();
                }
                m4.this.i = null;
            }
            i4 i4Var = m4.this.h;
            m4.this.h = null;
            m4 m4Var2 = m4.this;
            m4Var2.a(m4Var2.e, i4Var, activity);
        }
    }

    public m4(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = ((Integer) jVar.a(sj.q6)).intValue();
    }

    public void c() {
        h4.a aVar;
        this.c = null;
        this.e = null;
        this.a.e().b(this.j);
        h4.b bVar = this.f;
        if (bVar != null && (aVar = this.g) != null) {
            bVar.a(aVar);
        }
        this.f = null;
        this.g = null;
    }

    class b implements DialogInterface.OnClickListener {
        final /* synthetic */ k4 a;
        final /* synthetic */ i4 b;
        final /* synthetic */ Activity c;

        b(k4 k4Var, i4 i4Var, Activity activity) {
            this.a = k4Var;
            this.b = i4Var;
            this.c = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            m4.this.h = null;
            m4.this.i = null;
            i4 i4VarA = m4.this.a(this.a.a());
            if (i4VarA == null) {
                m4.this.b("Destination state for TOS/PP alert is null");
                return;
            }
            m4.this.a(this.b, i4VarA, this.c);
            if (i4VarA.c() != i4.b.ALERT) {
                dialogInterface.dismiss();
            }
        }
    }

    class c extends ClickableSpan {
        final /* synthetic */ Uri a;
        final /* synthetic */ Activity b;

        c(Uri uri, Activity activity) {
            this.a = uri;
            this.b = activity;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            yp.a(this.a, this.b, m4.this.a);
        }
    }

    class d extends ClickableSpan {
        final /* synthetic */ Uri a;
        final /* synthetic */ Activity b;

        d(Uri uri, Activity activity) {
            this.a = uri;
            this.b = activity;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            yp.a(this.a, this.b, m4.this.a);
        }
    }

    class e implements CmpServiceImpl.d {
        final /* synthetic */ i4 a;
        final /* synthetic */ Activity b;

        e(i4 i4Var, Activity activity) {
            this.a = i4Var;
            this.b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.d
        public void a(AppLovinCmpError appLovinCmpError) {
            m4.this.a(this.a, this.b, Boolean.valueOf(appLovinCmpError == null));
        }
    }

    class f implements CmpServiceImpl.e {
        final /* synthetic */ i4 a;
        final /* synthetic */ Activity b;

        f(i4 i4Var, Activity activity) {
            this.a = i4Var;
            this.b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            if (appLovinCmpError == null && m4.this.g != null) {
                m4.this.g.a(true);
            }
            m4.this.b(this.a, this.b);
        }
    }

    private void c(final i4 i4Var, final Activity activity) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.m4$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i4Var, activity);
            }
        });
    }

    class g implements Runnable {
        final /* synthetic */ i4 a;

        g(i4 i4Var) {
            this.a = i4Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            m4 m4Var = m4.this;
            m4Var.a(m4Var.e, this.a, m4.this.a.m0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        p6.a(str, new Object[0]);
        this.a.D().a(ka.S, str, (Map) CollectionUtils.hashMap("details", "Last started states: " + this.d + "\nLast successful state: " + this.e));
        h4.a aVar = this.g;
        if (aVar != null) {
            aVar.a(new f4(f4.f, str));
        }
        c();
    }

    public boolean b() {
        return this.c != null;
    }

    private i4 a() {
        List<i4> list = this.c;
        if (list == null) {
            return null;
        }
        for (i4 i4Var : list) {
            if (i4Var.d()) {
                return i4Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(i4 i4Var, Activity activity) {
        a(i4Var, activity, (Boolean) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity a(Dialog dialog) {
        Context context = dialog.getContext();
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        Context baseContext = ((ContextWrapper) context).getBaseContext();
        if (baseContext instanceof Activity) {
            return (Activity) baseContext;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public i4 a(String str) {
        List<i4> list = this.c;
        if (list == null) {
            return null;
        }
        for (i4 i4Var : list) {
            if (str.equalsIgnoreCase(i4Var.b())) {
                return i4Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AlertDialog alertDialog, Activity activity, DialogInterface dialogInterface) {
        TextView textView = (TextView) alertDialog.findViewById(alertDialog.getContext().getResources().getIdentifier("android:id/alertTitle", null, null));
        textView.setLinkTextColor(textView.getCurrentTextColor());
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setMaxLines(this.b);
        textView.setMinHeight(AppLovinSdkUtils.dpToPx(activity, 48));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(i4 i4Var, final Activity activity) {
        SpannableString spannableString;
        if (i4Var == null) {
            b("Consent flow state is null");
            return;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("AppLovinSdk", "Transitioning to state: " + i4Var);
        }
        if (i4Var.c() == i4.b.ALERT) {
            if (r.a(activity)) {
                a(i4Var);
                return;
            }
            j4 j4Var = (j4) i4Var;
            this.h = j4Var;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setCancelable(false);
            for (k4 k4Var : j4Var.e()) {
                b bVar = new b(k4Var, i4Var, activity);
                if (k4Var.c() == k4.a.POSITIVE) {
                    builder.setPositiveButton(k4Var.d(), bVar);
                } else if (k4Var.c() == k4.a.NEGATIVE) {
                    builder.setNegativeButton(k4Var.d(), bVar);
                } else {
                    builder.setNeutralButton(k4Var.d(), bVar);
                }
            }
            String strG = j4Var.g();
            if (StringUtils.isValidString(strG)) {
                spannableString = new SpannableString(strG);
                String strA = com.applovin.impl.sdk.j.a(R.string.applovin_terms_of_service_text);
                String strA2 = com.applovin.impl.sdk.j.a(R.string.applovin_privacy_policy_text);
                if (StringUtils.containsAtLeastOneSubstring(strG, Arrays.asList(strA, strA2))) {
                    Uri uriH = this.a.u().h();
                    if (uriH != null) {
                        StringUtils.addLinks(spannableString, Pattern.compile(strA), new c(uriH, activity), true);
                    }
                    StringUtils.addLinks(spannableString, Pattern.compile(strA2), new d(this.a.u().g(), activity), true);
                }
            } else {
                spannableString = null;
            }
            final AlertDialog alertDialogCreate = builder.setTitle(spannableString).setMessage(j4Var.f()).create();
            alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.applovin.impl.m4$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    this.f$0.a(alertDialogCreate, activity, dialogInterface);
                }
            });
            this.i = alertDialogCreate;
            alertDialogCreate.show();
            return;
        }
        if (i4Var.c() == i4.b.EVENT) {
            l4 l4Var = (l4) i4Var;
            String strF = l4Var.f();
            Map<String, String> mapE = l4Var.e();
            if (mapE == null) {
                mapE = new HashMap<>(1);
            }
            mapE.put("flow_type", "unified");
            this.a.z().trackEvent(strF, mapE);
            b(l4Var, activity);
            return;
        }
        if (i4Var.c() == i4.b.HAS_USER_CONSENT) {
            a(true);
            b(i4Var, activity);
            return;
        }
        if (i4Var.c() == i4.b.CMP_LOAD) {
            if (r.a(activity)) {
                a(i4Var);
                return;
            } else {
                this.a.p().loadCmp(activity, new e(i4Var, activity));
                return;
            }
        }
        if (i4Var.c() == i4.b.CMP_SHOW) {
            if (r.a(activity)) {
                a(i4Var);
                return;
            } else {
                this.a.z().trackEvent("cf_start");
                this.a.p().showCmp(activity, new f(i4Var, activity));
                return;
            }
        }
        if (i4Var.c() == i4.b.DECISION) {
            i4.a aVarA = i4Var.a();
            if (aVarA != i4.a.IS_AL_GDPR) {
                b("Invalid consent flow decision type: " + aVarA);
                return;
            }
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyE = this.a.u().e();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
            a(i4Var, activity, Boolean.valueOf(this.a.s().getConsentFlowUserGeography() == consentFlowUserGeography || (consentFlowUserGeographyE == consentFlowUserGeography && yp.c(this.a))));
            return;
        }
        if (i4Var.c() == i4.b.TERMS_FLOW) {
            List listA = g4.a(this.a);
            if (listA != null && listA.size() > 0) {
                this.a.z().trackEvent("cf_start");
                this.c = listA;
                a(i4Var, a(), activity);
                return;
            }
            c();
            return;
        }
        if (i4Var.c() == i4.b.REINIT) {
            c();
            return;
        }
        b("Invalid consent flow destination state: " + i4Var);
    }

    public void a(boolean z) {
        a4.b(z, com.applovin.impl.sdk.j.m());
    }

    public void a(List list, Activity activity, h4.b bVar) {
        if (this.c != null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("AppLovinSdk", "Unable to start states: " + list);
            }
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("AppLovinSdk", "Consent flow already in progress for states: " + this.c);
            }
            bVar.a(new h4.a(new f4(f4.e, "Consent flow is already in progress.")));
            return;
        }
        this.c = list;
        this.d = String.valueOf(list);
        this.f = bVar;
        this.g = new h4.a();
        com.applovin.impl.sdk.j.a(activity).a(this.j);
        a((i4) null, a(), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(i4 i4Var, Activity activity, Boolean bool) {
        a(i4Var, a(i4Var.a(bool)), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(i4 i4Var, i4 i4Var2, Activity activity) {
        this.e = i4Var;
        c(i4Var2, activity);
    }

    private void a(i4 i4Var) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new g(i4Var), TimeUnit.SECONDS.toMillis(1L));
    }
}
