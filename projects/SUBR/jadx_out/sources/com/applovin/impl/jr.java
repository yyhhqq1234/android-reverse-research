package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class jr extends re {
    private String a;
    private com.applovin.impl.sdk.j b;
    private dc c;

    public void initialize(String str, List<String> list, com.applovin.impl.sdk.j jVar) {
        this.a = str;
        this.b = jVar;
        a aVar = new a(this, a(list));
        this.c = aVar;
        aVar.notifyDataSetChanged();
    }

    class a extends dc {
        final /* synthetic */ List f;

        @Override // com.applovin.impl.dc
        protected cc a() {
            return new cc.b(cc.c.SECTION_CENTERED).d("A plus in front of each segment indicates inclusion and a minus indicates exclusion. The comma in comma-separated values functions as an ∨ (or) operator, and a new row functions as an ∧ (and) operator.").a();
        }

        @Override // com.applovin.impl.dc
        protected int b() {
            return 1;
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            return new fj("SEGMENT TARGETING");
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
            return this.f;
        }
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        return this.b;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle(this.a);
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.c);
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(cc.a(cc.c.DETAIL).d((String) it.next()).a());
        }
        return arrayList;
    }
}
