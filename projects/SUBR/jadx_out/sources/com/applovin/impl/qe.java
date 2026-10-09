package com.applovin.impl;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitsListActivity;
import com.applovin.mediation.MaxDebuggerDetailActivity;
import com.applovin.mediation.MaxDebuggerTcfConsentStatusesListActivity;
import com.applovin.mediation.MaxDebuggerTcfInfoListActivity;
import com.applovin.mediation.MaxDebuggerTestLiveNetworkActivity;
import com.applovin.mediation.MaxDebuggerTestModeNetworkActivity;
import com.applovin.mediation.MaxDebuggerUnifiedFlowActivity;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class qe extends re {
    private se a;
    private DataSetObserver b;
    private FrameLayout c;
    private ListView d;
    private o f;

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        b();
        return true;
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        se seVar = this.a;
        if (seVar != null) {
            return seVar.s();
        }
        return null;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Mediation Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.c = (FrameLayout) findViewById(android.R.id.content);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.d = listView;
        listView.setAdapter((ListAdapter) this.a);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        se seVar = this.a;
        if (seVar == null || seVar.v()) {
            return;
        }
        c();
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        se seVar = this.a;
        if (seVar != null) {
            seVar.unregisterDataSetObserver(this.b);
            this.a.a((dc.a) null);
        }
    }

    public void setListAdapter(se seVar, q qVar) {
        DataSetObserver dataSetObserver;
        se seVar2 = this.a;
        if (seVar2 != null && (dataSetObserver = this.b) != null) {
            seVar2.unregisterDataSetObserver(dataSetObserver);
        }
        this.a = seVar;
        this.b = new a();
        b((Context) this);
        this.a.registerDataSetObserver(this.b);
        this.a.a(new b(qVar));
    }

    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            qe.this.a();
            qe qeVar = qe.this;
            qeVar.b((Context) qeVar);
        }
    }

    class b implements dc.a {
        final /* synthetic */ q a;

        b(q qVar) {
            this.a = qVar;
        }

        @Override // com.applovin.impl.dc.a
        public void a(kb kbVar, cc ccVar) {
            int iB = kbVar.b();
            if (iB == se.e.APP_INFO.ordinal()) {
                yp.a(ccVar.c(), ccVar.b(), qe.this);
                return;
            }
            if (iB == se.e.MAX.ordinal()) {
                if (qe.this.a.a(ccVar)) {
                    r.a(qe.this, MaxDebuggerUnifiedFlowActivity.class, this.a, new a());
                    return;
                } else {
                    yp.a(ccVar.c(), ccVar.b(), qe.this);
                    return;
                }
            }
            if (iB == se.e.PRIVACY.ordinal()) {
                if (kbVar.a() == se.d.CMP.ordinal()) {
                    if (StringUtils.isValidString(qe.this.a.s().j0().k())) {
                        r.a(qe.this, MaxDebuggerTcfInfoListActivity.class, this.a, new C0033b());
                        return;
                    } else {
                        yp.a(ccVar.c(), ccVar.b(), qe.this);
                        return;
                    }
                }
                if (kbVar.a() == se.d.NETWORK_CONSENT_STATUSES.ordinal()) {
                    r.a(qe.this, MaxDebuggerTcfConsentStatusesListActivity.class, this.a, new c());
                    return;
                }
                return;
            }
            if (iB == se.e.ADS.ordinal()) {
                if (kbVar.a() == se.b.AD_UNITS.ordinal()) {
                    if (qe.this.a.e().size() > 0) {
                        r.a(qe.this, MaxDebuggerAdUnitsListActivity.class, this.a, new d());
                        return;
                    } else {
                        yp.a("No live ad units", "Please setup or enable your MAX ad units on https://applovin.com.", qe.this);
                        return;
                    }
                }
                if (kbVar.a() == se.b.SELECT_LIVE_NETWORKS.ordinal()) {
                    if (qe.this.a.j().size() > 0 || qe.this.a.u().size() > 0) {
                        if (qe.this.a.s().k0().c()) {
                            yp.a("Restart Required", ccVar.b(), qe.this);
                            return;
                        } else {
                            r.a(qe.this, MaxDebuggerTestLiveNetworkActivity.class, this.a, new e());
                            return;
                        }
                    }
                    yp.a("Complete Integrations", "Please complete integrations in order to access this.", qe.this);
                    return;
                }
                if (kbVar.a() == se.b.SELECT_TEST_MODE_NETWORKS.ordinal()) {
                    if (qe.this.a.s().k0().c()) {
                        if (qe.this.a.t().size() > 0) {
                            r.a(qe.this, MaxDebuggerTestModeNetworkActivity.class, this.a, new f());
                            return;
                        } else {
                            yp.a("Complete Integrations", "Please complete integrations in order to access this.", qe.this);
                            return;
                        }
                    }
                    qe.this.getSdk().k0().a();
                    yp.a("Restart Required", ccVar.b(), qe.this);
                    return;
                }
                if (kbVar.a() == se.b.INITIALIZATION_AD_UNITS.ordinal()) {
                    r.a(qe.this, MaxDebuggerAdUnitsListActivity.class, this.a, new g());
                    return;
                }
                return;
            }
            if ((iB == se.e.MICRO_SDK_PARTNER_NETWORKS.ordinal() || iB == se.e.INCOMPLETE_NETWORKS.ordinal() || iB == se.e.COMPLETED_NETWORKS.ordinal()) && (ccVar instanceof bg)) {
                r.a(qe.this, MaxDebuggerDetailActivity.class, this.a, new h(ccVar));
            }
        }

        class a implements r.b {
            a() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerUnifiedFlowActivity maxDebuggerUnifiedFlowActivity) {
                maxDebuggerUnifiedFlowActivity.initialize(qe.this.a.s());
            }
        }

        /* JADX INFO: renamed from: com.applovin.impl.qe$b$b, reason: collision with other inner class name */
        class C0033b implements r.b {
            C0033b() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerTcfInfoListActivity maxDebuggerTcfInfoListActivity) {
                maxDebuggerTcfInfoListActivity.initialize(qe.this.a.s());
            }
        }

        class c implements r.b {
            c() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerTcfConsentStatusesListActivity maxDebuggerTcfConsentStatusesListActivity) {
                maxDebuggerTcfConsentStatusesListActivity.initialize(qe.this.a.s());
            }
        }

        class d implements r.b {
            d() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                maxDebuggerAdUnitsListActivity.initialize(qe.this.a.e(), false, qe.this.a.s());
            }
        }

        class e implements r.b {
            e() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerTestLiveNetworkActivity maxDebuggerTestLiveNetworkActivity) {
                maxDebuggerTestLiveNetworkActivity.initialize(qe.this.a.j(), qe.this.a.u(), qe.this.a.s());
            }
        }

        class f implements r.b {
            f() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerTestModeNetworkActivity maxDebuggerTestModeNetworkActivity) {
                maxDebuggerTestModeNetworkActivity.initialize(qe.this.a.t(), qe.this.a.s());
            }
        }

        class g implements r.b {
            g() {
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                maxDebuggerAdUnitsListActivity.initialize(qe.this.a.n(), true, qe.this.a.s());
            }
        }

        class h implements r.b {
            final /* synthetic */ cc a;

            h(cc ccVar) {
                this.a = ccVar;
            }

            @Override // com.applovin.impl.r.b
            public void a(MaxDebuggerDetailActivity maxDebuggerDetailActivity) {
                maxDebuggerDetailActivity.initialize(((bg) this.a).r());
            }
        }
    }

    private void c() {
        a();
        o oVar = new o(this, 50, android.R.attr.progressBarStyleLarge);
        this.f = oVar;
        oVar.setColor(-3355444);
        this.c.addView(this.f, new FrameLayout.LayoutParams(-1, -1, 17));
        this.c.bringChildToFront(this.f);
        this.f.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Context context) {
        if (!StringUtils.isValidString(this.a.g()) || this.a.d()) {
            return;
        }
        this.a.b(true);
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.qe$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        yp.a(this.a.h(), this.a.g(), context);
    }

    private void b() {
        String strO = this.a.o();
        if (TextUtils.isEmpty(strO)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", strO);
        intent.putExtra("android.intent.extra.TITLE", "Mediation Debugger logs");
        intent.putExtra("android.intent.extra.SUBJECT", "MAX Mediation Debugger logs");
        startActivity(Intent.createChooser(intent, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        o oVar = this.f;
        if (oVar != null) {
            oVar.b();
            this.c.removeView(this.f);
            this.f = null;
        }
    }
}
