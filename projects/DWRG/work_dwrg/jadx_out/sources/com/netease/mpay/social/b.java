package com.netease.mpay.social;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.af;
import com.netease.mpay.f.ac;
import com.netease.mpay.social.a;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class b {
    private static boolean k = false;
    private Activity a;
    private String b;
    private String c;
    private af d;
    private a e;
    private k f;
    private a.C0052a g;
    private GetFriendsCallback h;
    private int i = 0;
    private long j;

    public b(Activity activity, String str, String str2, String str3, GetFriendsCallback getFriendsCallback) {
        this.a = activity;
        this.b = str2;
        this.c = str3;
        this.f = new k(activity, str2, str3, str);
        this.d = new com.netease.mpay.e.b(this.a, str2).e().a();
        this.e = new a(this.a, str2, str3);
        this.h = getFriendsCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        k = false;
        this.h.onFailed(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList arrayList) {
        k = false;
        if (arrayList == null || arrayList.size() <= 0) {
            this.h.onSuccessed(null);
        } else {
            this.h.onSuccessed((Friend[]) arrayList.toArray(new Friend[arrayList.size()]));
        }
    }

    private void a(ArrayList arrayList, int i) {
        new ac(this.a, this.b, this.c, arrayList, i, new d(this)).h();
        this.i++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.g == null || this.g.d == null) {
            a(1);
            return;
        }
        HashMap hashMap = this.g.d;
        Set keySet = hashMap.keySet();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.j = new Date().getTime() / 1000;
        this.i = 0;
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            m mVar = (m) hashMap.get((String) it.next());
            if (this.j > this.g.c || !mVar.f) {
                arrayList.add(mVar);
            } else if (this.j > this.g.b && mVar.f && !mVar.a()) {
                arrayList2.add(mVar);
            }
            if (arrayList.size() == this.d.C) {
                a(new ArrayList(arrayList), 1);
                arrayList.clear();
            }
            if (arrayList2.size() == this.d.C) {
                a(new ArrayList(arrayList2), 2);
                arrayList2.clear();
            }
        }
        if (arrayList.size() > 0) {
            a(new ArrayList(arrayList), 1);
        }
        if (arrayList2.size() > 0) {
            a(new ArrayList(arrayList2), 2);
        }
        if (this.i > 0 || this.h == null) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = keySet.iterator();
        while (it2.hasNext()) {
            m mVar2 = (m) this.g.d.get((String) it2.next());
            if (mVar2.a()) {
                arrayList3.add(Friend.a(mVar2));
            }
        }
        a(arrayList3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int c(b bVar) {
        int i = bVar.i - 1;
        bVar.i = i;
        return i;
    }

    public void a() {
        if (this.h == null) {
            return;
        }
        if (k) {
            this.h.onFailed(4);
            return;
        }
        k = true;
        this.f.a(new c(this));
    }
}
