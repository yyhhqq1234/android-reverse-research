package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.pull2refresh.Pull2RefreshList;

/* loaded from: classes.dex */
class ns implements Pull2RefreshList.a {
    final /* synthetic */ np a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ns(np npVar) {
        this.a = npVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.pull2refresh.Pull2RefreshList.a
    public int a(View view) {
        return view.findViewById(RIdentifier.f.aW).getTop();
    }
}
