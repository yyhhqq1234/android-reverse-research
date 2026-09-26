package com.netease.mpay;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ic implements Application.ActivityLifecycleCallbacks {
    final /* synthetic */ hy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ic(hy hyVar) {
        this.a = hyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a(String str) {
        String[] strArr;
        if (str == null) {
            return false;
        }
        strArr = hy.b;
        for (String str2 : strArr) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Handler handler;
        Runnable runnable;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        arrayList = this.a.h;
        arrayList.remove(activity.getClass().getName());
        if (a(activity.getClass().getName())) {
            return;
        }
        arrayList2 = this.a.h;
        if (arrayList2.size() <= 0) {
            handler = this.a.o;
            runnable = this.a.p;
            handler.removeCallbacks(runnable);
            this.a.d();
            Application application = activity.getApplication();
            activityLifecycleCallbacks = this.a.s;
            application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
            hy unused = hy.c = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        ArrayList arrayList;
        int i;
        Context context;
        Handler handler;
        Runnable runnable;
        Handler handler2;
        Runnable runnable2;
        arrayList = this.a.h;
        arrayList.remove(activity.getClass().getName());
        i = this.a.f;
        if ((i & 1) != 1) {
            return;
        }
        context = this.a.d;
        if (!((PowerManager) context.getSystemService("power")).isScreenOn()) {
            this.a.d();
            return;
        }
        handler = this.a.o;
        runnable = this.a.p;
        handler.removeCallbacks(runnable);
        handler2 = this.a.o;
        runnable2 = this.a.p;
        handler2.postDelayed(runnable2, 2000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Handler handler;
        Runnable runnable;
        ArrayList arrayList;
        int i;
        handler = this.a.o;
        runnable = this.a.p;
        handler.removeCallbacks(runnable);
        arrayList = this.a.h;
        arrayList.add(activity.getClass().getName());
        i = this.a.f;
        if ((i & 1) != 1) {
            this.a.c();
        }
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
