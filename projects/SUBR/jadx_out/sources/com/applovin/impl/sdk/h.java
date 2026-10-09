package com.applovin.impl.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.services.core.device.MimeTypes;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class h extends BroadcastReceiver implements AppLovinBroadcastManager.Receiver {
    public static int i = -1;
    private final AudioManager a;
    private final Context b;
    private final j c;
    private final Set d = new HashSet();
    private final Object f = new Object();
    private boolean g;
    private int h;

    public interface a {
        void a(int i);
    }

    h(j jVar) {
        this.c = jVar;
        Context contextM = j.m();
        this.b = contextM;
        this.a = (AudioManager) contextM.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    public static boolean a(int i2) {
        return i2 == 0 || i2 == 1;
    }

    private void c() {
        this.c.I();
        if (n.a()) {
            this.c.I().a("AudioSessionManager", "Stopping observation of mute switch state...");
        }
        this.b.unregisterReceiver(this);
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public void b(a aVar) {
        synchronized (this.f) {
            if (this.d.contains(aVar)) {
                this.d.remove(aVar);
                if (this.d.isEmpty()) {
                    c();
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.media.RINGER_MODE_CHANGED".equals(intent.getAction())) {
            b(this.a.getRingerMode());
        }
    }

    public int a() {
        return this.a.getRingerMode();
    }

    public void a(a aVar) {
        synchronized (this.f) {
            if (this.d.contains(aVar)) {
                return;
            }
            this.d.add(aVar);
            if (this.d.size() == 1) {
                b();
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.g = true;
            this.h = this.a.getRingerMode();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.g = false;
            if (this.h != this.a.getRingerMode()) {
                this.h = i;
                b(this.a.getRingerMode());
            }
        }
    }

    private void b() {
        this.c.I();
        if (n.a()) {
            this.c.I().a("AudioSessionManager", "Observing ringer mode...");
        }
        this.h = i;
        this.b.registerReceiver(this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    private void b(final int i2) {
        if (this.g) {
            return;
        }
        this.c.I();
        if (n.a()) {
            this.c.I().a("AudioSessionManager", "Ringer mode is " + i2);
        }
        synchronized (this.f) {
            for (final a aVar : this.d) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.h$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        aVar.a(i2);
                    }
                });
            }
        }
    }
}
