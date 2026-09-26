package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.widget.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class oa implements AdapterView.OnItemClickListener {
    final /* synthetic */ AdapterView a;
    final /* synthetic */ np b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oa(np npVar, AdapterView adapterView) {
        this.b = npVar;
        this.a = adapterView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        af.b bVar;
        com.netease.mpay.b.a aVar;
        com.netease.mpay.e.b.u uVar = (com.netease.mpay.e.b.u) this.a.getItemAtPosition(i);
        if (uVar == null) {
            return;
        }
        uVar.e = 1;
        bVar = this.b.i;
        bVar.a().notifyDataSetChanged();
        FragmentActivity fragmentActivity = this.b.a;
        b.a aVar2 = b.a.UserMessageDetailActivity;
        aVar = this.b.d;
        b.a(fragmentActivity, aVar2, new com.netease.mpay.b.ag(aVar.d(), uVar.a), null, 0);
    }
}
