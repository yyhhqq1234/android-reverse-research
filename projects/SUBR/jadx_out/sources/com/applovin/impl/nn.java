package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class nn extends re {
    private com.applovin.impl.sdk.j a;
    private dc b;

    private enum b {
        TC_NETWORKS,
        AC_NETWORKS
    }

    private cc a(String str, String str2) {
        return cc.a().d(str).c(str2).a();
    }

    public void initialize(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String strA = a4.b().a(this);
        boolean zB = jVar.j0().b();
        if (!zB) {
            arrayList2.add(a("Has User Consent", strA));
        }
        for (rn rnVar : jVar.j0().i()) {
            Boolean boolA = rnVar.a();
            if (boolA != null) {
                if (rnVar.f() == rn.a.TCF_VENDOR) {
                    arrayList.add(a(rnVar.b(), String.valueOf(boolA)));
                } else if (rnVar.f() == rn.a.ATP_NETWORK) {
                    arrayList2.add(a(rnVar.b(), String.valueOf(boolA)));
                }
            } else if (zB && rnVar.f() == rn.a.ATP_NETWORK) {
                arrayList2.add(a(rnVar.b(), strA));
            }
        }
        a aVar = new a(this, arrayList, arrayList2, zB);
        this.b = aVar;
        aVar.notifyDataSetChanged();
    }

    class a extends dc {
        final /* synthetic */ ArrayList f;
        final /* synthetic */ ArrayList g;
        final /* synthetic */ boolean h;

        @Override // com.applovin.impl.dc
        protected int b() {
            return b.values().length;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, ArrayList arrayList, ArrayList arrayList2, boolean z) {
            super(context);
            this.f = arrayList;
            this.g = arrayList2;
            this.h = z;
        }

        @Override // com.applovin.impl.dc
        protected int d(int i) {
            if (i == b.TC_NETWORKS.ordinal()) {
                return this.f.size();
            }
            return this.g.size();
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            if (i == b.TC_NETWORKS.ordinal()) {
                return new fj("TCF VENDORS (TC STRING)");
            }
            return new fj(this.h ? "ATP NETWORKS (AC STRING)" : "APPLOVIN PRIVACY SETTING");
        }

        @Override // com.applovin.impl.dc
        protected List c(int i) {
            if (i == b.TC_NETWORKS.ordinal()) {
                return this.f;
            }
            return this.g;
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
        setTitle("Network Consent Statuses");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.b);
    }
}
