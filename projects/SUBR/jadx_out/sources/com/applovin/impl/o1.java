package com.applovin.impl;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
final class o1 {
    private final AudioManager a;
    private final a b;
    private b c;
    private l1 d;
    private int f;
    private AudioFocusRequest h;
    private boolean i;
    private float g = 1.0f;
    private int e = 0;

    public interface b {
        void b(float f);

        void f(int i);
    }

    public o1(Context context, Handler handler, b bVar) {
        this.a = (AudioManager) b1.a((AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        this.c = bVar;
        this.b = new a(handler);
    }

    public float d() {
        return this.g;
    }

    public void e() {
        this.c = null;
        b();
    }

    private int f() {
        if (this.e == 1) {
            return 1;
        }
        if ((xp.a >= 26 ? h() : g()) == 1) {
            c(1);
            return 1;
        }
        c(0);
        return -1;
    }

    private void b() {
        if (this.e == 0) {
            return;
        }
        if (xp.a >= 26) {
            c();
        } else {
            a();
        }
        c(0);
    }

    private int g() {
        return this.a.requestAudioFocus(this.b, xp.e(((l1) b1.a(this.d)).c), this.f);
    }

    private int h() {
        AudioFocusRequest.Builder builder;
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest == null || this.i) {
            if (audioFocusRequest == null) {
                builder = new AudioFocusRequest.Builder(this.f);
            } else {
                builder = new AudioFocusRequest.Builder(this.h);
            }
            this.h = builder.setAudioAttributes(((l1) b1.a(this.d)).a()).setWillPauseWhenDucked(i()).setOnAudioFocusChangeListener(this.b).build();
            this.i = false;
        }
        return this.a.requestAudioFocus(this.h);
    }

    private void a() {
        this.a.abandonAudioFocus(this.b);
    }

    private void c() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest != null) {
            this.a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    private boolean i() {
        l1 l1Var = this.d;
        return l1Var != null && l1Var.a == 1;
    }

    private boolean d(int i) {
        return i == 1 || this.f != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class a implements AudioManager.OnAudioFocusChangeListener {
        private final Handler a;

        public a(Handler handler) {
            this.a = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            o1.this.b(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.a.post(new Runnable() { // from class: com.applovin.impl.o1$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(i);
                }
            });
        }
    }

    private static int a(l1 l1Var) {
        if (l1Var == null) {
            return 0;
        }
        switch (l1Var.c) {
            case 0:
                oc.d("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (l1Var.a == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                oc.d("AudioFocusManager", "Unidentified audio usage: " + l1Var.c);
                return 0;
            case 16:
                return xp.a >= 19 ? 4 : 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (i == -3 || i == -2) {
            if (i != -2 && !i()) {
                c(3);
                return;
            } else {
                a(0);
                c(2);
                return;
            }
        }
        if (i == -1) {
            a(-1);
            b();
        } else if (i != 1) {
            oc.d("AudioFocusManager", "Unknown focus change type: " + i);
        } else {
            c(1);
            a(1);
        }
    }

    private void c(int i) {
        if (this.e == i) {
            return;
        }
        this.e = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.g == f) {
            return;
        }
        this.g = f;
        b bVar = this.c;
        if (bVar != null) {
            bVar.b(f);
        }
    }

    public void b(l1 l1Var) {
        if (xp.a(this.d, l1Var)) {
            return;
        }
        this.d = l1Var;
        int iA = a(l1Var);
        this.f = iA;
        boolean z = true;
        if (iA != 1 && iA != 0) {
            z = false;
        }
        b1.a(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    private void a(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.f(i);
        }
    }

    public int a(boolean z, int i) {
        if (d(i)) {
            b();
            return z ? 1 : -1;
        }
        if (z) {
            return f();
        }
        return -1;
    }
}
