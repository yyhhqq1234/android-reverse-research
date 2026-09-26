package com.netease.mpay.server.response;

import android.content.Context;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cz;
import com.netease.mpay.server.response.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class u extends ac {
    public long a = -1;
    public ArrayList b = new ArrayList();
    public HashMap c = new HashMap();

    public u() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private int a(@NonNull Context context, @NonNull int[] iArr) {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            Iterator it2 = ((s.a) it.next()).a.iterator();
            while (it2.hasNext()) {
                s sVar = (s) it2.next();
                for (int i2 : iArr) {
                    if (sVar.a == i2 && sVar.b(context)) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    @NonNull
    public static u a(Context context, String str) {
        return cz.a(context).a(context, str);
    }

    public int a(ArrayList arrayList) {
        if (arrayList == null) {
            return 0;
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            s.a aVar = (s.a) it.next();
            i = ((aVar == null || aVar.a == null) ? 0 : aVar.a.size()) + i;
        }
        return i;
    }

    @NonNull
    public s a(int i) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            s.a aVar = (s.a) it.next();
            if (aVar != null && aVar.a != null) {
                Iterator it2 = aVar.a.iterator();
                while (it2.hasNext()) {
                    s sVar = (s) it2.next();
                    if (sVar != null && sVar.a == i) {
                        return sVar;
                    }
                }
            }
        }
        return new s(i);
    }

    public boolean a(Context context) {
        return a(context, new int[]{5, 4}) > 0;
    }

    public boolean a(Context context, int i) {
        return a(context, new int[]{i}) > 0;
    }

    public boolean a(Context context, String str, int i) {
        return a(b(context, str), i);
    }

    public boolean a(ArrayList arrayList, int i) {
        s.a aVar;
        if (arrayList == null || arrayList.size() != 1 || (aVar = (s.a) arrayList.get(0)) == null || aVar.a == null || aVar.a.size() != 1) {
            return false;
        }
        s sVar = (s) aVar.a.get(0);
        return sVar != null && i == sVar.a;
    }

    @NonNull
    public r b(int i) {
        r rVar = (r) this.c.get(Integer.valueOf(i));
        return rVar != null ? rVar : new r(i);
    }

    @NonNull
    public ArrayList b(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            s.a aVar = (s.a) it.next();
            s.a aVar2 = new s.a();
            Iterator it2 = aVar.a.iterator();
            while (it2.hasNext()) {
                s sVar = (s) it2.next();
                if (sVar.b(context) && (2 != sVar.a || new com.netease.mpay.e.b(context, str).c().a(2).size() < 1)) {
                    aVar2.a.add(sVar);
                }
            }
            if (aVar2.a.size() > 0) {
                arrayList.add(aVar2);
            }
        }
        if (arrayList.size() > 1) {
            ((s.a) arrayList.get(0)).a.add(((s.a) arrayList.get(0)).a.size(), s.a());
        }
        return arrayList;
    }
}
