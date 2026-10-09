package com.applovin.communicator;

import android.content.Context;
import com.applovin.impl.communicator.MessagingServiceImpl;
import com.applovin.impl.ll;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppLovinCommunicator {
    private static AppLovinCommunicator e;
    private static final Object f = new Object();
    private j a;
    private n b;
    private final ll c = new ll();
    private final MessagingServiceImpl d = new MessagingServiceImpl();

    public static AppLovinCommunicator getInstance(Context context) {
        synchronized (f) {
            if (e == null) {
                e = new AppLovinCommunicator();
            }
        }
        return e;
    }

    public void a(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        a("Attached SDK instance: " + jVar + "...");
    }

    public AppLovinCommunicatorMessagingService getMessagingService() {
        return this.d;
    }

    public boolean hasSubscriber(String str) {
        return this.c.a(str);
    }

    public boolean respondsToTopic(String str) {
        return this.a.q().a(str);
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        subscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public String toString() {
        return "AppLovinCommunicator{sdk=" + this.a + '}';
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        unsubscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            if (!this.c.a(appLovinCommunicatorSubscriber, str)) {
                a("Unable to subscribe " + appLovinCommunicatorSubscriber + " to topic: " + str);
            }
        }
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            a("Unsubscribing " + appLovinCommunicatorSubscriber + " from topic: " + str);
            this.c.b(appLovinCommunicatorSubscriber, str);
        }
    }

    private void a(String str) {
        if (this.b == null || !n.a()) {
            return;
        }
        this.b.a("AppLovinCommunicator", str);
    }
}
