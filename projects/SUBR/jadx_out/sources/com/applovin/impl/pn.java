package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerCmpNetworksListActivity;
import com.applovin.mediation.MaxDebuggerTcfStringActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class pn extends re {
    private com.applovin.impl.sdk.j a;
    private dc b;
    private final List c = new ArrayList();
    private final List d = new ArrayList();
    private final List f = new ArrayList();
    private final List g = new ArrayList();
    private final List h = new ArrayList();

    private enum c {
        CMP_SDK_ID,
        CMP_SDK_VERSION,
        INSTRUCTIONS,
        CONFIGURED_NETWORKS
    }

    private enum d {
        GDPR_APPLIES,
        TC_STRING,
        AC_STRING
    }

    private enum e {
        IAB_TCF_PARAMETERS,
        CMP_CONFIGURATION
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List c() {
        ArrayList arrayList = new ArrayList(d.values().length);
        Integer numG = this.a.j0().g();
        String strK = this.a.j0().k();
        String strC = this.a.j0().c();
        arrayList.add(a(uj.r.a(), numG));
        arrayList.add(a(uj.s.a(), strK, !tn.b(strK)));
        arrayList.add(a(uj.t.a(), strC, false));
        return arrayList;
    }

    public void initialize(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        qn qnVarJ0 = jVar.j0();
        a(qnVarJ0.i());
        a aVar = new a(this);
        this.b = aVar;
        aVar.a(new b(qnVarJ0, jVar));
        this.b.notifyDataSetChanged();
    }

    class a extends dc {
        @Override // com.applovin.impl.dc
        protected int b() {
            return e.values().length;
        }

        a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.dc
        protected int d(int i) {
            if (i == e.IAB_TCF_PARAMETERS.ordinal()) {
                return d.values().length;
            }
            return c.values().length;
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            if (i == e.IAB_TCF_PARAMETERS.ordinal()) {
                return new fj("IAB TCF Parameters");
            }
            return new fj("CMP CONFIGURATION");
        }

        @Override // com.applovin.impl.dc
        protected List c(int i) {
            return i == e.IAB_TCF_PARAMETERS.ordinal() ? pn.this.c() : pn.this.a();
        }
    }

    class b implements dc.a {
        final /* synthetic */ qn a;
        final /* synthetic */ com.applovin.impl.sdk.j b;

        b(qn qnVar, com.applovin.impl.sdk.j jVar) {
            this.a = qnVar;
            this.b = jVar;
        }

        @Override // com.applovin.impl.dc.a
        public void a(kb kbVar, cc ccVar) {
            String strA;
            String strC;
            if (kbVar.b() == e.IAB_TCF_PARAMETERS.ordinal()) {
                if (kbVar.a() == d.TC_STRING.ordinal()) {
                    strA = uj.s.a();
                    strC = this.a.k();
                } else {
                    strA = uj.t.a();
                    strC = this.a.c();
                }
                r.a(pn.this, MaxDebuggerTcfStringActivity.class, this.b.e(), new a(strA, strC));
                return;
            }
            if (kbVar.a() == c.CONFIGURED_NETWORKS.ordinal()) {
                r.a(pn.this, MaxDebuggerCmpNetworksListActivity.class, this.b.e(), new C0029b());
            } else {
                yp.a(ccVar.c(), ccVar.b(), pn.this);
            }
        }

        class a implements r.b {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            a(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerTcfStringActivity maxDebuggerTcfStringActivity) {
                maxDebuggerTcfStringActivity.initialize(this.a, this.b, b.this.b);
            }
        }

        /* JADX INFO: renamed from: com.applovin.impl.pn$b$b, reason: collision with other inner class name */
        class C0029b implements r.b {
            C0029b() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerCmpNetworksListActivity maxDebuggerCmpNetworksListActivity) {
                maxDebuggerCmpNetworksListActivity.initialize(pn.this.f, pn.this.g, pn.this.c, pn.this.d, pn.this.h, b.this.b);
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
        setTitle("CMP (Consent Management Platform)");
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

    private void a(rn rnVar, List list) {
        if (rnVar.d() != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (rnVar.d().equals(((rn) it.next()).d())) {
                    return;
                }
            }
        }
        list.add(rnVar);
    }

    private cc b() {
        cc.b bVarA;
        String strA = uj.p.a();
        Integer numE = this.a.j0().e();
        if (StringUtils.isValidString(this.a.j0().d())) {
            bVarA = cc.a(cc.c.RIGHT_DETAIL);
        } else {
            cc.b bVarB = cc.a(cc.c.DETAIL).b("Unknown CMP SDK ID");
            bVarA = bVarB.a("Your integrated CMP might not be Google-certified. " + ("SharedPreferences value for key " + strA + " is " + numE + ".") + "\n\nIf you use Google AdMob or Google Ad Manager, make sure that the integrated CMP is included in the list of Google-certified CMPs at: https://support.google.com/admob/answer/13554116").a(R.drawable.applovin_ic_warning).b(t3.a(R.color.applovin_sdk_warningColor, this)).a(true);
        }
        bVarA.d(strA);
        bVarA.c(numE != null ? numE.toString() : "No value set");
        bVarA.c(numE != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK);
        return bVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a() {
        String str;
        ArrayList arrayList = new ArrayList(c.values().length);
        int size = this.f.size() + this.g.size();
        arrayList.add(b());
        arrayList.add(a(uj.q.a(), this.a.j0().f()));
        arrayList.add(cc.a(cc.c.DETAIL).d("To check which networks are missing from your CMP, first make sure that you have granted consent to all networks through your CMP flow. Then add the following networks to your CMP network list.").a());
        cc.b bVarD = cc.a(cc.c.RIGHT_DETAIL).d("Configured CMP Networks");
        if (size > 0) {
            str = "Missing " + size + " network(s)";
        } else {
            str = "";
        }
        arrayList.add(bVarD.c(str).c(size > 0 ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).a(this).a(true).a());
        return arrayList;
    }

    private cc a(String str, String str2, boolean z) {
        boolean zIsValidString = StringUtils.isValidString(str2);
        if (zIsValidString && str2.length() > 35) {
            str2 = str2.substring(0, 35) + "...";
        }
        cc.b bVarD = cc.a(cc.c.DETAIL).d(str);
        if (!zIsValidString) {
            str2 = "No value set";
        }
        cc.b bVarA = bVarD.c(str2).c(z ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).a(zIsValidString);
        if (zIsValidString) {
            bVarA.a(this);
        }
        return bVarA.a();
    }

    private cc a(String str, Integer num) {
        return cc.a(cc.c.RIGHT_DETAIL).d(str).c(num != null ? num.toString() : "No value set").c(num != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK).a();
    }

    private void a(List list) {
        boolean zB = this.a.j0().b();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            rn rnVar = (rn) it.next();
            if (rnVar.f() == rn.a.TCF_VENDOR) {
                if (Boolean.TRUE.equals(rnVar.a())) {
                    a(rnVar, this.c);
                } else {
                    a(rnVar, this.f);
                }
            } else if (rnVar.f() != rn.a.ATP_NETWORK) {
                this.h.add(rnVar);
            } else if (zB) {
                if (Boolean.TRUE.equals(rnVar.a())) {
                    a(rnVar, this.d);
                } else {
                    a(rnVar, this.g);
                }
            } else {
                this.h.add(rnVar);
            }
        }
    }
}
