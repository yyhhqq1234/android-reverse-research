package com.applovin.adview;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.applovin.impl.o9;
import com.applovin.impl.sb;
import com.applovin.impl.sdk.j;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinFullscreenAdViewObserver implements LifecycleObserver {
    private final j a;
    private final AtomicBoolean b = new AtomicBoolean(true);
    private o9 c;
    private sb d;

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        sb sbVar = this.d;
        if (sbVar != null) {
            sbVar.a();
            this.d = null;
        }
        o9 o9Var = this.c;
        if (o9Var != null) {
            o9Var.f();
            this.c.t();
            this.c = null;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        o9 o9Var = this.c;
        if (o9Var != null) {
            o9Var.u();
            this.c.x();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        o9 o9Var;
        if (this.b.getAndSet(false) || (o9Var = this.c) == null) {
            return;
        }
        o9Var.v();
        this.c.a(0L);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        o9 o9Var = this.c;
        if (o9Var != null) {
            o9Var.w();
        }
    }

    public AppLovinFullscreenAdViewObserver(Lifecycle lifecycle, sb sbVar, j jVar) {
        this.d = sbVar;
        this.a = jVar;
        lifecycle.addObserver(this);
    }

    public void setPresenter(o9 o9Var) {
        this.c = o9Var;
    }
}
