package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.i8;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a implements AppLovinBroadcastManager.Receiver {
    private static final long f = TimeUnit.SECONDS.toMillis(2);
    private final j a;
    private final n b;
    private final HashSet c = new HashSet();
    private final Object d = new Object();

    /* JADX INFO: renamed from: com.applovin.impl.sdk.a$a, reason: collision with other inner class name */
    public interface InterfaceC0035a {
        void onAdExpired(i8 i8Var);
    }

    public a(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            a();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            b();
        }
    }

    public void a(i8 i8Var) {
        synchronized (this.d) {
            b bVarB = b(i8Var);
            if (bVarB != null) {
                if (n.a()) {
                    this.b.a("AdExpirationManager", "Cancelling expiration timer for ad: " + i8Var);
                }
                bVarB.a();
                a(bVarB);
            }
        }
    }

    private b b(i8 i8Var) {
        synchronized (this.d) {
            try {
                if (i8Var == null) {
                    return null;
                }
                for (b bVar : this.c) {
                    if (i8Var == bVar.b()) {
                        return bVar;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b() {
        HashSet<b> hashSet = new HashSet();
        synchronized (this.d) {
            for (b bVar : this.c) {
                i8 i8VarB = bVar.b();
                if (i8VarB == null) {
                    hashSet.add(bVar);
                } else {
                    long timeToLiveMillis = i8VarB.getTimeToLiveMillis();
                    if (timeToLiveMillis <= 0) {
                        if (n.a()) {
                            this.b.a("AdExpirationManager", "Ad expired while app was paused. Preparing to notify listener for ad: " + i8VarB);
                        }
                        hashSet.add(bVar);
                    } else {
                        if (n.a()) {
                            this.b.a("AdExpirationManager", "Rescheduling expiration with remaining " + TimeUnit.MILLISECONDS.toSeconds(timeToLiveMillis) + " seconds for ad: " + i8VarB);
                        }
                        bVar.a(timeToLiveMillis);
                    }
                }
            }
        }
        for (b bVar2 : hashSet) {
            a(bVar2);
            bVar2.d();
        }
    }

    public boolean a(i8 i8Var, InterfaceC0035a interfaceC0035a) {
        synchronized (this.d) {
            if (b(i8Var) != null) {
                if (n.a()) {
                    this.b.a("AdExpirationManager", "Ad expiration already scheduled for ad: " + i8Var);
                }
                return true;
            }
            if (i8Var.getTimeToLiveMillis() <= f) {
                if (n.a()) {
                    this.b.a("AdExpirationManager", "Ad has already expired: " + i8Var);
                }
                i8Var.setExpired();
                return false;
            }
            if (n.a()) {
                this.b.a("AdExpirationManager", "Scheduling ad expiration " + TimeUnit.MILLISECONDS.toSeconds(i8Var.getTimeToLiveMillis()) + " seconds from now for " + i8Var + "...");
            }
            if (this.c.isEmpty()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
            this.c.add(b.a(i8Var, interfaceC0035a, this.a));
            return true;
        }
    }

    public void a(b bVar) {
        synchronized (this.d) {
            this.c.remove(bVar);
            if (this.c.isEmpty()) {
                AppLovinBroadcastManager.unregisterReceiver(this);
            }
        }
    }

    private void a() {
        synchronized (this.d) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
        }
    }
}
