package com.netease.mpay;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.y;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.af;
import com.netease.mpay.widget.pull2refresh.Pull2RefreshList;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class np extends com.netease.mpay.a {
    private com.netease.mpay.b.a d;
    private Resources e;
    private com.netease.mpay.widget.s f;
    private Pull2RefreshList g;
    private ListView h;
    private af.b i;
    private com.netease.mpay.c.a j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        RESET,
        APPEND_LIST;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public np(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(AdapterView adapterView, ArrayList arrayList) {
        nz nzVar = new nz(this);
        adapterView.setOnItemClickListener(new oa(this, adapterView));
        this.i = new af.b(this.a, adapterView, arrayList, RIdentifier.g.z, nzVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(af.b bVar, ArrayList arrayList, a aVar) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        switch (aVar) {
            case RESET:
                bVar.a().a();
                bVar.a().a(arrayList);
                break;
            case APPEND_LIST:
                bVar.a().a(arrayList);
                break;
        }
        bVar.a().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            this.a.setContentView(RIdentifier.g.y);
            ((TextView) this.a.findViewById(RIdentifier.f.cS)).setText(cq.a(this.a, this.d.a(), RIdentifier.h.di));
            return;
        }
        this.a.setContentView(RIdentifier.g.A);
        this.g = (Pull2RefreshList) this.a.findViewById(RIdentifier.f.aU);
        this.h = (ListView) this.a.findViewById(RIdentifier.f.aR);
        this.g.init((LinearLayout) this.a.findViewById(RIdentifier.f.aS), this.h, (ImageView) this.a.findViewById(RIdentifier.f.aT), (ProgressBar) this.a.findViewById(RIdentifier.f.aV), new ns(this), this.a.findViewById(RIdentifier.f.bm), AnimationUtils.loadAnimation(this.a, RIdentifier.a.b), AnimationUtils.loadAnimation(this.a, RIdentifier.a.c));
        this.g.setOnStartPullingListener(new nt(this));
        this.g.setOnHeaderCompleteListener(new nu(this));
        this.g.setOnRefreshListener(new nv(this));
        this.g.setOnLoadListener(new nx(this));
        a((ListView) this.g.findViewById(RIdentifier.f.aR), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.a.isFinishing()) {
            return;
        }
        new com.netease.mpay.b.ap().a(this.a);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.a(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 0 && (alVar instanceof com.netease.mpay.b.ap)) {
            s();
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.e = this.a.getResources();
        this.f = new com.netease.mpay.widget.s(this.a);
        this.j = new com.netease.mpay.c.a(this.a.getApplicationContext(), this.d.a(), RIdentifier.e.A);
        super.a(this.e.getString(RIdentifier.h.dk));
        new com.netease.mpay.f.y(this.a, this.d.a(), this.d.b(), y.a.FETCH_HISTORY_LOCAL, new nq(this)).d().h();
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        this.a.finish();
        return true;
    }
}
