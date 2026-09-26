package com.netease.mpay.widget.pull2refresh;

import android.view.View;
import android.widget.ListView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.pull2refresh.Pull2RefreshList;
import com.netease.mpay.widget.pull2refresh.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements a.b {
    final /* synthetic */ Pull2RefreshList.a a;
    final /* synthetic */ Pull2RefreshList b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Pull2RefreshList pull2RefreshList, Pull2RefreshList.a aVar) {
        this.b = pull2RefreshList;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.b
    public int a(View view) {
        return this.a.a(view);
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.b
    public boolean b(View view) {
        View childAt;
        ListView listView = (ListView) view;
        if (listView.getChildCount() == 0) {
            return true;
        }
        return listView.getFirstVisiblePosition() == 0 && (childAt = listView.getChildAt(0)) != null && childAt.getTop() == 0;
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.b
    public void c(View view) {
        ((ListView) view).setSelectionFromTop(0, 0);
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.b
    public boolean d(View view) {
        ListView listView = (ListView) view;
        if (listView.getChildCount() == 0 || listView.getCount() - listView.getLastVisiblePosition() > 1) {
            return false;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            View view2 = (View) listView.getParent();
            listView.getLocationOnScreen(iArr);
            view2.getLocationOnScreen(iArr2);
            return iArr[1] + listView.getHeight() >= view2.getHeight() + iArr2[1];
        } catch (Exception e) {
            return false;
        }
    }
}
