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
public abstract class un extends re {
    private com.applovin.impl.sdk.j a;
    private List b;
    private List c;
    private dc d;
    private List f;
    private List g;
    private ListView h;

    enum c {
        BIDDERS,
        WATERFALL,
        COUNT
    }

    public un() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    public void initialize(List<ic> list, List<ic> list2, final com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = list;
        this.c = list2;
        this.f = a(list);
        this.g = a(list2);
        a aVar = new a(this);
        this.d = aVar;
        aVar.a(new dc.a() { // from class: com.applovin.impl.un$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.dc.a
            public final void a(kb kbVar, cc ccVar) {
                this.f$0.a(jVar, kbVar, ccVar);
            }
        });
        this.d.notifyDataSetChanged();
    }

    class a extends dc {
        @Override // com.applovin.impl.dc
        protected cc a() {
            return new cc.b(cc.c.SECTION_CENTERED).d("Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
        }

        @Override // com.applovin.impl.dc
        protected int b() {
            return c.COUNT.ordinal();
        }

        a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.dc
        protected int d(int i) {
            return i == c.BIDDERS.ordinal() ? un.this.f.size() : un.this.g.size();
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            if (i == c.BIDDERS.ordinal()) {
                return new fj("BIDDERS");
            }
            return new fj("WATERFALL");
        }

        @Override // com.applovin.impl.dc
        protected List c(int i) {
            return i == c.BIDDERS.ordinal() ? un.this.f : un.this.g;
        }
    }

    class b extends bg {
        final /* synthetic */ ic p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(je jeVar, Context context, ic icVar) {
            super(jeVar, context);
            this.p = icVar;
        }

        @Override // com.applovin.impl.cc
        public SpannedString k() {
            return StringUtils.createSpannedString(this.p.a(), o() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
        }

        @Override // com.applovin.impl.bg, com.applovin.impl.cc
        public int d() {
            if (un.this.a.k0().b() == null || !un.this.a.k0().b().equals(this.p.b())) {
                return 0;
            }
            return R.drawable.applovin_ic_check_mark_borderless;
        }

        @Override // com.applovin.impl.bg, com.applovin.impl.cc
        public int e() {
            if (un.this.a.k0().b() == null || !un.this.a.k0().b().equals(this.p.b())) {
                return super.e();
            }
            return -16776961;
        }
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ic icVar = (ic) it.next();
            arrayList.add(new b(icVar.d(), this, icVar));
        }
        return arrayList;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Live Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.h = listView;
        listView.setAdapter((ListAdapter) this.d);
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        return this.a;
    }

    @Override // com.applovin.impl.re, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.f = a(this.b);
        this.g = a(this.c);
        this.d.c();
    }

    private ic a(kb kbVar) {
        if (kbVar.b() == c.BIDDERS.ordinal()) {
            return (ic) this.b.get(kbVar.a());
        }
        return (ic) this.c.get(kbVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.j jVar, kb kbVar, cc ccVar) {
        List listB = a(kbVar).b();
        if (listB.equals(jVar.k0().b())) {
            jVar.k0().a((List) null);
        } else {
            jVar.k0().a(listB);
        }
        this.d.notifyDataSetChanged();
    }
}
