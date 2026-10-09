package com.applovin.impl;

import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ll {
    private final Set a = new HashSet(32);
    private final Object b = new Object();

    public boolean a(String str) {
        synchronized (this.b) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                if (str.equals(((ml) it.next()).b())) {
                    return true;
                }
            }
            return false;
        }
    }

    public void b(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        ml mlVarA;
        if (StringUtils.isValidString(str)) {
            synchronized (this.b) {
                mlVarA = a(str, appLovinCommunicatorSubscriber);
            }
            if (mlVarA != null) {
                mlVarA.a(false);
                AppLovinBroadcastManager.unregisterReceiver(mlVarA);
            }
        }
    }

    private ml a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (ml mlVar : this.a) {
            if (str.equals(mlVar.b()) && appLovinCommunicatorSubscriber.equals(mlVar.a())) {
                return mlVar;
            }
        }
        return null;
    }

    public boolean a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber != null && StringUtils.isValidString(str)) {
            synchronized (this.b) {
                ml mlVarA = a(str, appLovinCommunicatorSubscriber);
                if (mlVarA != null) {
                    com.applovin.impl.sdk.n.h("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
                    if (!mlVarA.c()) {
                        mlVarA.a(true);
                        AppLovinBroadcastManager.registerReceiver(mlVarA, new IntentFilter(str));
                    }
                    return true;
                }
                ml mlVar = new ml(str, appLovinCommunicatorSubscriber);
                this.a.add(mlVar);
                AppLovinBroadcastManager.registerReceiver(mlVar, new IntentFilter(str));
                return true;
            }
        }
        com.applovin.impl.sdk.n.h("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
        return false;
    }
}
