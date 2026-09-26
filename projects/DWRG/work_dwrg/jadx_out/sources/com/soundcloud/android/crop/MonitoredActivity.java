package com.soundcloud.android.crop;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class MonitoredActivity extends Activity {
    private final ArrayList<LifeCycleListener> listeners = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface LifeCycleListener {
        void onActivityCreated(MonitoredActivity monitoredActivity);

        void onActivityDestroyed(MonitoredActivity monitoredActivity);

        void onActivityStarted(MonitoredActivity monitoredActivity);

        void onActivityStopped(MonitoredActivity monitoredActivity);
    }

    /* loaded from: classes.dex */
    public static class LifeCycleAdapter implements LifeCycleListener {
        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityCreated(MonitoredActivity activity) {
        }

        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityDestroyed(MonitoredActivity activity) {
        }

        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityStarted(MonitoredActivity activity) {
        }

        @Override // com.soundcloud.android.crop.MonitoredActivity.LifeCycleListener
        public void onActivityStopped(MonitoredActivity activity) {
        }
    }

    public void addLifeCycleListener(LifeCycleListener listener) {
        if (!this.listeners.contains(listener)) {
            this.listeners.add(listener);
        }
    }

    public void removeLifeCycleListener(LifeCycleListener listener) {
        this.listeners.remove(listener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Iterator i$ = this.listeners.iterator();
        while (i$.hasNext()) {
            LifeCycleListener listener = i$.next();
            listener.onActivityCreated(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Iterator i$ = this.listeners.iterator();
        while (i$.hasNext()) {
            LifeCycleListener listener = i$.next();
            listener.onActivityDestroyed(this);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Iterator i$ = this.listeners.iterator();
        while (i$.hasNext()) {
            LifeCycleListener listener = i$.next();
            listener.onActivityStarted(this);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Iterator i$ = this.listeners.iterator();
        while (i$.hasNext()) {
            LifeCycleListener listener = i$.next();
            listener.onActivityStopped(this);
        }
    }
}
