package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxDebuggerAdUnitWaterfallsListActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 extends re {
    private com.applovin.impl.sdk.j a;
    private dc b;
    private List c;
    private boolean d;
    private ListView f;

    public void initialize(final List<z> list, boolean z, final com.applovin.impl.sdk.j jVar) {
        this.d = z;
        this.a = jVar;
        this.c = a(list);
        a aVar = new a(this, list);
        this.b = aVar;
        aVar.a(new dc.a() { // from class: com.applovin.impl.c0$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.dc.a
            public final void a(kb kbVar, cc ccVar) {
                this.f$0.a(list, jVar, kbVar, ccVar);
            }
        });
        this.b.notifyDataSetChanged();
    }

    class a extends dc {
        final /* synthetic */ List f;

        @Override // com.applovin.impl.dc
        protected int b() {
            return 1;
        }

        @Override // com.applovin.impl.dc
        protected cc e(int i) {
            return new fj("");
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
            return c0.this.c;
        }
    }

    @Override // com.applovin.impl.re
    protected com.applovin.impl.sdk.j getSdk() {
        return this.a;
    }

    @Override // com.applovin.impl.re, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((this.d ? "Selective Init " : "").concat("Ad Units"));
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f = listView;
        listView.setAdapter((ListAdapter) this.b);
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ID\t\t\t\t\t\t", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(zVar.c(), ViewCompat.MEASURED_STATE_MASK));
            spannableStringBuilder.append((CharSequence) new SpannedString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("FORMAT  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(zVar.b(), ViewCompat.MEASURED_STATE_MASK));
            arrayList.add(cc.a(cc.c.DETAIL).b(StringUtils.createSpannedString(zVar.d(), ViewCompat.MEASURED_STATE_MASK, 18, 1)).a(new SpannedString(spannableStringBuilder)).a(this).a(true).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, final com.applovin.impl.sdk.j jVar, kb kbVar, cc ccVar) {
        final z zVar = (z) list.get(kbVar.a());
        if (zVar.g().size() == 1) {
            r.a(this, MaxDebuggerAdUnitDetailActivity.class, jVar.e(), new r.b() { // from class: com.applovin.impl.c0$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.r.b
                public final void a(Activity activity) {
                    ((MaxDebuggerAdUnitDetailActivity) activity).initialize(zVar, null, null, jVar);
                }
            });
        } else {
            r.a(this, MaxDebuggerAdUnitWaterfallsListActivity.class, jVar.e(), new r.b() { // from class: com.applovin.impl.c0$$ExternalSyntheticLambda2
                @Override // com.applovin.impl.r.b
                public final void a(Activity activity) {
                    ((MaxDebuggerAdUnitWaterfallsListActivity) activity).initialize(zVar, jVar);
                }
            });
        }
    }
}
