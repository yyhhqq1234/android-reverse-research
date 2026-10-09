package com.applovin.impl.sdk;

import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
class p {
    private final Queue a = new LinkedList();
    private final Object b = new Object();

    p() {
    }

    void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.b) {
            if (b() <= 25) {
                this.a.offer(appLovinAdImpl);
            } else {
                n.h("AppLovinSdk", "Maximum queue capacity reached - discarding ad...");
            }
        }
    }

    int b() {
        int size;
        synchronized (this.b) {
            size = this.a.size();
        }
        return size;
    }

    boolean c() {
        boolean z;
        synchronized (this.b) {
            z = b() == 0;
        }
        return z;
    }

    AppLovinAdImpl d() {
        AppLovinAdImpl appLovinAdImpl;
        synchronized (this.b) {
            appLovinAdImpl = (AppLovinAdImpl) this.a.peek();
        }
        return appLovinAdImpl;
    }

    void b(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.b) {
            this.a.remove(appLovinAdImpl);
        }
    }

    AppLovinAdImpl a() {
        AppLovinAdImpl appLovinAdImpl;
        synchronized (this.b) {
            appLovinAdImpl = !c() ? (AppLovinAdImpl) this.a.poll() : null;
        }
        return appLovinAdImpl;
    }
}
