package org.json.sdk.controller;

import android.app.Activity;
import android.media.AudioManager;
import com.unity3d.services.core.device.MimeTypes;
import org.json.Cif;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
class t {

    class a implements Runnable {
        final /* synthetic */ AudioManager a;

        a(AudioManager audioManager) {
            this.a = audioManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.a(this.a);
        }
    }

    class b implements Runnable {
        final /* synthetic */ AudioManager a;

        b(AudioManager audioManager) {
            this.a = audioManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.d(this.a);
        }
    }

    t() {
    }

    public static void a(Activity activity) {
        Cif.a.b(new a((AudioManager) activity.getSystemService(MimeTypes.BASE_TYPE_AUDIO)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(AudioManager audioManager) {
        try {
            audioManager.abandonAudioFocus(null);
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }

    public static void b(Activity activity) {
        Cif.a.b(new b((AudioManager) activity.getSystemService(MimeTypes.BASE_TYPE_AUDIO)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(AudioManager audioManager) {
        try {
            audioManager.requestAudioFocus(null, 3, 2);
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }
}
