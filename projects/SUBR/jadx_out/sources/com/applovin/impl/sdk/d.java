package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import com.applovin.impl.h0;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.p6;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.uj;
import com.applovin.impl.yl;
import com.applovin.sdk.AppLovinAdType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements AppLovinBroadcastManager.Receiver {
    private final j a;
    private final c b;
    private final List c = Collections.synchronizedList(new ArrayList());

    public interface a {
        void a(com.applovin.impl.sdk.ad.b bVar);
    }

    public d(j jVar) {
        this.a = jVar;
        this.b = new c(jVar);
    }

    private void c(c.a aVar) {
        if (aVar != null && this.c.remove(aVar)) {
            this.b.b(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.a.h0().b(uj.C);
        this.b.a();
    }

    private void e() {
        String str = (String) this.a.h0().a(uj.C);
        if (str == null) {
            return;
        }
        JSONArray jsonArray = JsonUtils.toJsonArray(str, new JSONArray());
        for (int length = jsonArray.length() - 1; length >= 0; length--) {
            c.a aVarA = c.a.a(JsonUtils.getJSONObject(jsonArray, length, new JSONObject()), this.a);
            if (aVarA != null) {
                if (a(aVarA)) {
                    long jB = aVarA.b() - SystemClock.elapsedRealtime();
                    this.a.D().a(ka.v, CollectionUtils.map("details", "ttl = " + jB + "ms"));
                } else {
                    this.c.add(0, aVarA);
                }
            }
        }
    }

    private void f() {
        this.a.i0().a((yl) new jn(this.a, "loadPersistedAdFilesQueueAndCleanupAsync", new Runnable() { // from class: com.applovin.impl.sdk.d$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c();
            }
        }), tm.b.OTHER);
    }

    private void h() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.c) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                arrayList.add(((c.a) it.next()).a());
            }
        }
        this.a.h0().b(uj.C, new JSONArray((Collection) arrayList).toString());
    }

    public void b() {
        f();
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
    }

    public void g() {
        this.a.i0().a((yl) new jn(this.a, "resetManagerState", new Runnable() { // from class: com.applovin.impl.sdk.d$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.d();
            }
        }), tm.b.OTHER);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        h();
    }

    public void b(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            return;
        }
        this.a.D().a(ka.p, bVar);
        this.b.b(bVar, new c.b() { // from class: com.applovin.impl.sdk.d$$ExternalSyntheticLambda1
            @Override // com.applovin.impl.sdk.c.b
            public final void a(c.a aVar) {
                this.f$0.b(aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        e();
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(c.a aVar) {
        if (aVar == null) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("AdPersistenceManager", "Ad failed to persist");
                return;
            }
            return;
        }
        this.c.add(aVar);
        if (((Boolean) this.a.a(sj.Z0)).booleanValue()) {
            h();
        }
    }

    private void a(a aVar, c.a aVar2, h0 h0Var, String str) {
        if (aVar == null) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("AdPersistenceManager", str);
        }
        aVar.a(null);
        this.b.b(aVar2);
        this.a.D().a(ka.u, h0Var, new AppLovinError(-1, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, c.a aVar2, h0 h0Var, com.applovin.impl.sdk.ad.b bVar, String str) {
        if (bVar != null && !StringUtils.isValidString(str)) {
            a(aVar, bVar, aVar2);
        } else {
            a(aVar, aVar2, h0Var, str);
        }
    }

    public void a(final h0 h0Var, final a aVar) {
        if (aVar == null) {
            this.a.I();
            if (n.a()) {
                this.a.I().b("AdPersistenceManager", "Persisted ad could not be retrieved: listener is null");
            }
            p6.a("Persisted ad could not be retrieved: listener is null", new Object[0]);
            return;
        }
        if (h0Var == null) {
            a(aVar, null, null, "Persisted ad could not be retrieved: adZone is null");
            return;
        }
        this.a.D().a(ka.s, h0Var, (AppLovinError) null);
        final c.a aVarA = a(h0Var.g());
        this.b.a(aVarA, new c.InterfaceC0037c() { // from class: com.applovin.impl.sdk.d$$ExternalSyntheticLambda3
            @Override // com.applovin.impl.sdk.c.InterfaceC0037c
            public final void a(com.applovin.impl.sdk.ad.b bVar, String str) {
                this.f$0.a(aVar, aVarA, h0Var, bVar, str);
            }
        });
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            return;
        }
        c(c.a.a(bVar));
    }

    private c.a a(AppLovinAdType appLovinAdType) {
        c.a aVar;
        synchronized (this.c) {
            Iterator it = this.c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    aVar = null;
                    break;
                }
                aVar = (c.a) it.next();
                if (aVar.e().equals(appLovinAdType) && !a(aVar)) {
                    break;
                }
            }
            this.c.remove(aVar);
        }
        return aVar;
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, c.a aVar2) {
        if (aVar == null) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("AdPersistenceManager", "Loading persisted ad");
        }
        aVar.a(bVar);
        this.b.b(aVar2);
        this.a.D().a(ka.t, bVar);
    }

    private boolean a(c.a aVar) {
        return SystemClock.elapsedRealtime() + ((Long) this.a.a(sj.b1)).longValue() >= aVar.b();
    }

    private void a() {
        synchronized (this.c) {
            this.b.a(new ArrayList(this.c));
        }
    }
}
