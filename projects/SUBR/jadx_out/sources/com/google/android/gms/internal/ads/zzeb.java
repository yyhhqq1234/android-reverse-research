package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeb implements zzdg {
    private Message zza;

    private zzeb() {
        throw null;
    }

    /* synthetic */ zzeb(zzec zzecVar) {
    }

    public final zzeb zzb(Message message, zzed zzedVar) {
        this.zza = message;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final void zza() {
        Message message = this.zza;
        message.getClass();
        message.sendToTarget();
        this.zza = null;
        zzed.zzl(this);
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        message.getClass();
        boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        this.zza = null;
        zzed.zzl(this);
        return zSendMessageAtFrontOfQueue;
    }
}
