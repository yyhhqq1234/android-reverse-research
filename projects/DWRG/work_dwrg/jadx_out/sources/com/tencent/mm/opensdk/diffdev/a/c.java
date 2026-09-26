package com.tencent.mm.opensdk.diffdev.a;

import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class c implements Runnable {
    final /* synthetic */ b g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.g = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list;
        ArrayList arrayList = new ArrayList();
        list = this.g.f.c;
        arrayList.addAll(list);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((OAuthListener) it.next()).onQrcodeScanned();
        }
    }
}
