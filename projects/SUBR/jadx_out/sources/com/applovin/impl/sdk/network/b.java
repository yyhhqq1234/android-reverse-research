package com.applovin.impl.sdk.network;

import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.applovin.impl.fc;
import com.applovin.impl.jn;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements AppLovinBroadcastManager.Receiver {
    private final j a;
    private final n b;
    private final int c;
    private final c d;
    private final Object f = new Object();
    private final List g;
    private final Set h;
    private final List i;

    class a implements AppLovinPostbackListener {
        final /* synthetic */ d a;
        final /* synthetic */ AppLovinPostbackListener b;

        a(d dVar, AppLovinPostbackListener appLovinPostbackListener) {
            this.a = dVar;
            this.b = appLovinPostbackListener;
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackFailure(String str, int i) {
            n unused = b.this.b;
            if (n.a()) {
                b.this.b.d("PersistentPostbackManager", "Failed to submit postback: " + this.a + " with error code: " + i + "; will retry later...");
            }
            b.this.d(this.a);
            fc.a(this.b, str, i);
            if (this.a.c() == 1) {
                b.this.a.D().a("dispatchPostback", str, i);
            }
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackSuccess(String str) {
            b.this.a(this.a);
            n unused = b.this.b;
            if (n.a()) {
                b.this.b.a("PersistentPostbackManager", "Successfully submit postback: " + this.a);
            }
            b.this.c();
            fc.a(this.b, str);
        }
    }

    public b(j jVar) {
        ArrayList arrayList = new ArrayList();
        this.g = arrayList;
        this.h = new HashSet();
        this.i = new ArrayList();
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = jVar;
        this.b = jVar.I();
        int iIntValue = ((Integer) jVar.a(sj.M2)).intValue();
        this.c = iIntValue;
        if (!((Boolean) jVar.a(sj.P2)).booleanValue()) {
            this.d = null;
            return;
        }
        c cVar = new c(this, jVar);
        this.d = cVar;
        if (yp.a(sj.S0, jVar) && yp.h()) {
            a(new Runnable() { // from class: com.applovin.impl.sdk.network.b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.f();
                }
            }, true, true);
        } else {
            arrayList.addAll(cVar.a(iIntValue));
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        synchronized (this.f) {
            this.g.addAll(0, this.d.a(this.c));
        }
    }

    protected List d() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f) {
            if (((Boolean) this.a.a(sj.O2)).booleanValue()) {
                arrayList.ensureCapacity(this.i.size());
                arrayList.addAll(this.i);
            } else {
                arrayList.ensureCapacity(this.g.size());
                arrayList.addAll(this.g);
            }
        }
        return arrayList;
    }

    public void e(d dVar) {
        a(dVar, true);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        this.a.i0().a((yl) this.d, tm.b.OTHER);
    }

    private void c(d dVar) {
        synchronized (this.f) {
            while (this.g.size() > this.c) {
                this.g.remove(0);
            }
            this.g.add(dVar);
        }
        if (n.a()) {
            this.b.a("PersistentPostbackManager", "Enqueued postback: " + dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        synchronized (this.f) {
            Iterator it = new ArrayList(this.g).iterator();
            while (it.hasNext()) {
                b((d) it.next());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(d dVar, AppLovinPostbackListener appLovinPostbackListener) {
        synchronized (this.f) {
            c(dVar);
            a(dVar, appLovinPostbackListener);
        }
    }

    public void a(d dVar, boolean z) {
        a(dVar, z, (AppLovinPostbackListener) null);
    }

    public void a(final d dVar, boolean z, final AppLovinPostbackListener appLovinPostbackListener) {
        if (TextUtils.isEmpty(dVar.k())) {
            if (n.a()) {
                this.b.b("PersistentPostbackManager", "Requested a postback dispatch for empty URL; nothing to do...");
            }
        } else {
            if (z) {
                dVar.a();
            }
            a(new Runnable() { // from class: com.applovin.impl.sdk.network.b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(dVar, appLovinPostbackListener);
                }
            }, yp.h(), dVar.m());
        }
    }

    public void b() {
        a(new Runnable() { // from class: com.applovin.impl.sdk.network.b$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.e();
            }
        }, true, false);
    }

    private void b(d dVar) {
        a(dVar, (AppLovinPostbackListener) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this.f) {
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                b((d) it.next());
            }
            this.i.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(d dVar) {
        synchronized (this.f) {
            this.h.remove(dVar);
            this.i.add(dVar);
        }
    }

    public void a() {
        synchronized (this.f) {
            this.g.clear();
            this.i.clear();
        }
        this.a.i0().a((yl) this.d, tm.b.OTHER);
    }

    private void a(d dVar, AppLovinPostbackListener appLovinPostbackListener) {
        if (n.a()) {
            this.b.a("PersistentPostbackManager", "Preparing to submit postback: " + dVar);
        }
        if (this.a.v0() && !dVar.m()) {
            if (n.a()) {
                this.b.a("PersistentPostbackManager", "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(dVar.k())) {
            if (n.a()) {
                this.b.b("PersistentPostbackManager", "Skipping empty postback dispatch...");
                return;
            }
            return;
        }
        synchronized (this.f) {
            if (this.h.contains(dVar)) {
                if (n.a()) {
                    this.b.a("PersistentPostbackManager", "Skipping in progress postback: " + dVar.k());
                }
                return;
            }
            dVar.l();
            Integer num = (Integer) this.a.a(sj.L2);
            if (dVar.c() > num.intValue()) {
                if (n.a()) {
                    this.b.k("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + num + ". Dequeuing postback: " + dVar);
                }
                a(dVar);
                return;
            }
            synchronized (this.f) {
                this.h.add(dVar);
            }
            e eVarB = e.b(this.a).b(dVar.k()).a(dVar.d()).b(dVar.i()).c(dVar.h()).a(dVar.g()).a(dVar.j() != null ? new JSONObject(dVar.j()) : null).b(dVar.o()).a(dVar.n()).a(dVar.f()).h(dVar.p()).e(dVar.e()).a();
            if (n.a()) {
                this.b.a("PersistentPostbackManager", "Submitting postback: " + dVar);
            }
            this.a.X().dispatchPostbackRequest(eVarB, new a(dVar, appLovinPostbackListener));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d dVar) {
        synchronized (this.f) {
            this.h.remove(dVar);
            this.g.remove(dVar);
        }
        if (n.a()) {
            this.b.a("PersistentPostbackManager", "Dequeued postback: " + dVar);
        }
    }

    private void a(Runnable runnable, boolean z, boolean z2) {
        if (z) {
            this.a.i0().a((yl) new jn(this.a, z2, "runPostbackTask", runnable), tm.b.OTHER);
        } else {
            runnable.run();
        }
    }
}
