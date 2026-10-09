package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class vn extends re {
    private com.applovin.impl.sdk.j a;
    private List b;
    private dc c;
    private List d;
    private ListView f;

    public vn() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    public void initialize(List<je> list, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = list;
        this.d = a(list);
        a aVar = new a(this, list);
        this.c = aVar;
        aVar.a(new b(list, jVar));
        this.c.notifyDataSetChanged();
    }

    class a extends dc {
        final /* synthetic */ List f;

        @Override // com.applovin.impl.dc
        protected cc a() {
            return new cc.b(cc.c.SECTION_CENTERED).d("Select a network to load test ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
        }

        @Override // com.applovin.impl.dc
        protected int b() {
            return 1;
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            return new fj("TEST MODE NETWORKS");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, List list) {
            super(context);
            this.f = list;
        }

        @Override // com.applovin.impl.dc
        protected int d(int i) {
            return this.f.size();
        }

        @Override // com.applovin.impl.dc
        protected List c(int i) {
            return vn.this.d;
        }
    }

    class b implements dc.a {
        final /* synthetic */ List a;
        final /* synthetic */ com.applovin.impl.sdk.j b;

        b(List list, com.applovin.impl.sdk.j jVar) {
            this.a = list;
            this.b = jVar;
        }

        @Override // com.applovin.impl.dc.a
        public void a(kb kbVar, cc ccVar) {
            List listU = ((je) this.a.get(kbVar.a())).u();
            if (listU.equals(this.b.k0().b())) {
                this.b.k0().a((List) null);
            } else {
                this.b.k0().a(listU);
            }
            vn.this.c.notifyDataSetChanged();
        }
    }

    class c extends bg {
        final /* synthetic */ je p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(je jeVar, Context context, je jeVar2) {
            super(jeVar, context);
            this.p = jeVar2;
        }

        @Override // com.applovin.impl.cc
        public SpannedString k() {
            return StringUtils.createSpannedString(this.p.g(), o() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
        }

        @Override // com.applovin.impl.bg, com.applovin.impl.cc
        public int d() {
            if (this.p.u().equals(vn.this.a.k0().b())) {
                return R.drawable.applovin_ic_check_mark_borderless;
            }
            return 0;
        }

        @Override // com.applovin.impl.bg, com.applovin.impl.cc
        public int e() {
            if (this.p.u().equals(vn.this.a.k0().b())) {
                return -16776961;
            }
            return super.e();
        }
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            je jeVar = (je) it.next();
            arrayList.add(new c(jeVar, this, jeVar));
        }
        return arrayList;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Test Mode Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f = listView;
        listView.setAdapter((ListAdapter) this.c);
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        return this.a;
    }

    @Override // com.applovin.impl.re, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.d = a(this.b);
        this.c.notifyDataSetChanged();
    }
}
