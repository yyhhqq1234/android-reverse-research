package com.netease.mpay;

import android.os.Build;
import android.widget.ListView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.np;
import com.netease.mpay.widget.af;
import com.netease.mpay.widget.pull2refresh.Pull2RefreshList;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ny implements com.netease.mpay.f.a.b {
    final /* synthetic */ nx a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ny(nx nxVar) {
        this.a = nxVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        Pull2RefreshList pull2RefreshList;
        com.netease.mpay.widget.s sVar;
        switch (aVar) {
            case ERR_LOGOUT:
                this.a.a.s();
                return;
            default:
                pull2RefreshList = this.a.a.g;
                pull2RefreshList.completeLoad();
                sVar = this.a.a.f;
                sVar.a(str);
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ArrayList arrayList) {
        Pull2RefreshList pull2RefreshList;
        af.b bVar;
        ListView listView;
        ListView listView2;
        ListView listView3;
        ListView listView4;
        pull2RefreshList = this.a.a.g;
        pull2RefreshList.completeLoad();
        np npVar = this.a.a;
        bVar = this.a.a.i;
        npVar.a(bVar, arrayList, np.a.APPEND_LIST);
        if (Build.VERSION.SDK_INT >= 8) {
            listView = this.a.a.h;
            int lastVisiblePosition = listView.getLastVisiblePosition() + 1;
            listView2 = this.a.a.h;
            if (lastVisiblePosition < listView2.getCount()) {
                listView3 = this.a.a.h;
                listView4 = this.a.a.h;
                listView3.smoothScrollToPosition(listView4.getLastVisiblePosition() + 1);
            }
        }
    }
}
