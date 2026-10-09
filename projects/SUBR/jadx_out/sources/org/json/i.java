package org.json;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class i implements Application.ActivityLifecycleCallbacks {
    private ln a;

    public i(ln lnVar) {
        this.a = lnVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (SDKUtils.isIronSourceActivity(activity)) {
            return;
        }
        this.a.b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (SDKUtils.isIronSourceActivity(activity)) {
            return;
        }
        this.a.c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
