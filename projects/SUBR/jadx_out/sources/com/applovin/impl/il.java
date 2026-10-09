package com.applovin.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
final class il {
    private final Context a;
    private final Handler b;
    private final b c;
    private final AudioManager d;
    private c e;
    private int f;
    private int g;
    private boolean h;

    public interface b {
        void a(int i, boolean z);

        void d(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(il ilVar) {
        ilVar.d();
    }

    public il(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = handler;
        this.c = bVar;
        AudioManager audioManager = (AudioManager) b1.b((AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        this.d = audioManager;
        this.f = 3;
        this.g = b(audioManager, 3);
        this.h = a(audioManager, this.f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.e = cVar;
        } catch (RuntimeException e) {
            oc.c("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    public int a() {
        return this.d.getStreamMaxVolume(this.f);
    }

    public void c() {
        c cVar = this.e;
        if (cVar != null) {
            try {
                this.a.unregisterReceiver(cVar);
            } catch (RuntimeException e) {
                oc.c("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int iB = b(this.d, this.f);
        boolean zA = a(this.d, this.f);
        if (this.g == iB && this.h == zA) {
            return;
        }
        this.g = iB;
        this.h = zA;
        this.c.a(iB, zA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = il.this.b;
            final il ilVar = il.this;
            handler.post(new Runnable() { // from class: com.applovin.impl.il$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    il.b(ilVar);
                }
            });
        }
    }

    private static int b(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            oc.c("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i, e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    public void a(int i) {
        if (this.f == i) {
            return;
        }
        this.f = i;
        d();
        this.c.d(i);
    }

    public int b() {
        if (xp.a >= 28) {
            return this.d.getStreamMinVolume(this.f);
        }
        return 0;
    }

    private static boolean a(AudioManager audioManager, int i) {
        if (xp.a >= 23) {
            return audioManager.isStreamMute(i);
        }
        return b(audioManager, i) == 0;
    }
}
