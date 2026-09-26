package com.netease.mpay.d.a.a;

import android.view.View;
import android.widget.AdapterView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.q;
import com.netease.mpay.server.response.w;
import java.util.ArrayList;

/* loaded from: classes.dex */
class p implements AdapterView.OnItemClickListener {
    final /* synthetic */ n a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n nVar) {
        this.a = nVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (this.a.b != null) {
            arrayList = this.a.c;
            if (arrayList.get(i) != null) {
                q.a aVar = this.a.b;
                arrayList2 = this.a.c;
                aVar.a(((w.a) arrayList2.get(i)).b);
            }
        }
    }
}
