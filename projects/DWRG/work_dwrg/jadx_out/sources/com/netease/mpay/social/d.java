package com.netease.mpay.social;

import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.af;
import com.netease.mpay.f.a.b;
import com.netease.mpay.server.response.ad;
import com.netease.mpay.social.a;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements com.netease.mpay.f.a.b {
    final /* synthetic */ b a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar) {
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        GetFriendsCallback getFriendsCallback;
        GetFriendsCallback getFriendsCallback2;
        GetFriendsCallback getFriendsCallback3;
        boolean unused = b.k = false;
        switch (aVar) {
            case ERR_LOGOUT:
                getFriendsCallback2 = this.a.h;
                getFriendsCallback2.onFailed(3);
                return;
            case ERR_RETRY:
                getFriendsCallback = this.a.h;
                getFriendsCallback.onFailed(2);
                return;
            default:
                getFriendsCallback3 = this.a.h;
                getFriendsCallback3.onFailed(100);
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ad adVar) {
        GetFriendsCallback getFriendsCallback;
        long j;
        a.C0052a c0052a;
        long j2;
        a.C0052a c0052a2;
        a.C0052a c0052a3;
        long j3;
        af afVar;
        a aVar;
        a.C0052a c0052a4;
        a.C0052a c0052a5;
        long j4;
        af afVar2;
        a.C0052a c0052a6;
        long j5;
        af afVar3;
        a.C0052a c0052a7;
        a.C0052a c0052a8;
        a.C0052a c0052a9;
        if (adVar != null && adVar.a != null) {
            Iterator it = adVar.a.iterator();
            while (it.hasNext()) {
                ad.a aVar2 = (ad.a) it.next();
                c0052a9 = this.a.g;
                m mVar = (m) c0052a9.d.get(aVar2.a);
                if (mVar != null) {
                    mVar.f = true;
                    mVar.c = aVar2.b;
                }
            }
        }
        if (b.c(this.a) <= 0) {
            getFriendsCallback = this.a.h;
            if (getFriendsCallback != null) {
                ArrayList arrayList = new ArrayList();
                c0052a7 = this.a.g;
                for (String str : c0052a7.d.keySet()) {
                    c0052a8 = this.a.g;
                    m mVar2 = (m) c0052a8.d.get(str);
                    if (mVar2.a()) {
                        arrayList.add(Friend.a(mVar2));
                    }
                }
                this.a.a(arrayList);
            }
            j = this.a.j;
            c0052a = this.a.g;
            if (j > c0052a.c) {
                c0052a5 = this.a.g;
                j4 = this.a.j;
                afVar2 = this.a.d;
                c0052a5.c = j4 + afVar2.E;
                c0052a6 = this.a.g;
                j5 = this.a.j;
                afVar3 = this.a.d;
                c0052a6.b = j5 + afVar3.D;
            } else {
                j2 = this.a.j;
                c0052a2 = this.a.g;
                if (j2 > c0052a2.b) {
                    c0052a3 = this.a.g;
                    j3 = this.a.j;
                    afVar = this.a.d;
                    c0052a3.b = j3 + afVar.D;
                }
            }
            aVar = this.a.e;
            c0052a4 = this.a.g;
            aVar.a(c0052a4);
        }
    }
}
