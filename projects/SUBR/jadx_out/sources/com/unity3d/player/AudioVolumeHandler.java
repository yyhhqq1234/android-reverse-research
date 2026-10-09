package com.unity3d.player;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class AudioVolumeHandler implements b.InterfaceC0129b {
    private b a;

    AudioVolumeHandler(Context context) {
        b bVar = new b(context);
        this.a = bVar;
        bVar.a(this);
    }

    public final void a() {
        this.a.a();
        this.a = null;
    }

    @Override // com.unity3d.player.b.InterfaceC0129b
    public final native void onAudioVolumeChanged(int i);
}
