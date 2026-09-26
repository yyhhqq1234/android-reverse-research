package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.t;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class cz {
    private static cz a;
    private com.netease.mpay.widget.av c;
    private HashMap b = new HashMap();
    private boolean d = false;
    private boolean e = false;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(t.c cVar, String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        ArrayList a = new ArrayList();
        Boolean b = false;
        Boolean c = false;
        com.netease.mpay.e.b.af d = null;
        com.netease.mpay.server.response.u e = null;

        b(Context context, String str) {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    private cz() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static cz a(Context context) {
        if (a != null) {
            return a;
        }
        synchronized (cz.class) {
            if (a == null) {
                a = new cz();
            }
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b b(Context context, String str) {
        b bVar;
        synchronized (b.class) {
            if (this.b == null) {
                this.b = new HashMap();
            }
            StringBuilder sb = new StringBuilder(str);
            if (bk.a != null) {
                sb.append("_").append(bk.a.b());
            }
            String sb2 = sb.toString();
            if (this.b.get(sb2) == null) {
                this.b.put(sb2, new b(context, str));
            }
            bVar = (b) this.b.get(sb2);
        }
        return bVar;
    }

    private void b(Activity activity, String str, boolean z, a aVar) {
        if (z) {
            this.c = com.netease.mpay.widget.av.a(activity, false);
            this.c.show();
        }
        synchronized (b(activity, str).a) {
            b(activity, str).a.add(aVar);
        }
        synchronized (b(activity, str).b) {
            if (b(activity, str).b.booleanValue()) {
                return;
            }
            b(activity, str).b = true;
            if (!b(activity, str).c.booleanValue()) {
                new com.netease.mpay.f.ab(activity, str, "login", new da(this, activity, str)).h();
            }
            new com.netease.mpay.f.t(activity, str, b(activity, str).d, b(activity, str).e, new db(this, activity, str, aVar)).h();
        }
    }

    @NonNull
    public com.netease.mpay.server.response.u a(Context context, String str) {
        com.netease.mpay.server.response.u uVar = b(context, str).e;
        return uVar != null ? uVar : new com.netease.mpay.server.response.u();
    }

    public void a() {
        a = null;
    }

    public void a(Activity activity, String str, boolean z, a aVar) {
        if (b(activity, str).d == null || b(activity, str).e == null) {
            b(activity, str, z, aVar);
            return;
        }
        if (aVar != null) {
            aVar.a();
        }
        b(activity, str, false, null);
    }
}
