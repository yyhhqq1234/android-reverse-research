package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzrl implements zzsb {
    private final zzfvf zza;
    private final zzfvf zzb;
    private boolean zzc;

    public zzrl(int i) {
        zzrj zzrjVar = new zzrj(i);
        zzrk zzrkVar = new zzrk(i);
        this.zza = zzrjVar;
        this.zzb = zzrkVar;
        this.zzc = true;
    }

    static /* synthetic */ HandlerThread zza(int i) {
        return new HandlerThread(zzrn.zzt(i, "ExoPlayer:MediaCodecAsyncAdapter:"));
    }

    static /* synthetic */ HandlerThread zzb(int i) {
        return new HandlerThread(zzrn.zzt(i, "ExoPlayer:MediaCodecQueueingThread:"));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003e A[Catch: Exception -> 0x0088, TryCatch #1 {Exception -> 0x0088, blocks: (B:4:0x001a, B:6:0x0020, B:9:0x0029, B:11:0x002d, B:13:0x0035, B:15:0x0053, B:14:0x003e), top: B:38:0x001a }] */
    public final zzrn zzc(zzsa zzsaVar) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        zzse zzrrVar;
        int i;
        String str = zzsaVar.zza.zza;
        zzrn zzrnVar = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                if (this.zzc) {
                    zzab zzabVar = zzsaVar.zzc;
                    if (zzei.zza >= 34 && (zzei.zza >= 35 || zzbb.zzi(zzabVar.zzo))) {
                        zzrrVar = new zztd(mediaCodecCreateByCodecName);
                        i = 4;
                    } else {
                        HandlerThread handlerThreadZzb = zzb(((zzrk) this.zzb).zza);
                        HandlerThread handlerThread = handlerThreadZzb;
                        zzrrVar = new zzrr(mediaCodecCreateByCodecName, handlerThreadZzb);
                        i = 0;
                    }
                } else {
                    HandlerThread handlerThreadZzb2 = zzb(((zzrk) this.zzb).zza);
                    HandlerThread handlerThread2 = handlerThreadZzb2;
                    zzrrVar = new zzrr(mediaCodecCreateByCodecName, handlerThreadZzb2);
                    i = 0;
                }
                HandlerThread handlerThreadZza = zza(((zzrj) this.zza).zza);
                HandlerThread handlerThread3 = handlerThreadZza;
                zzrn zzrnVar2 = new zzrn(mediaCodecCreateByCodecName, handlerThreadZza, zzrrVar, zzsaVar.zzf, null);
                try {
                    Trace.endSection();
                    if (zzsaVar.zzd == null && zzsaVar.zza.zzh && zzei.zza >= 35) {
                        i |= 8;
                    }
                    zzrn.zzh(zzrnVar2, zzsaVar.zzb, zzsaVar.zzd, null, i);
                    return zzrnVar2;
                } catch (Exception e) {
                    e = e;
                    zzrnVar = zzrnVar2;
                    if (zzrnVar != null) {
                        zzrnVar.zzm();
                    } else if (mediaCodecCreateByCodecName != null) {
                        mediaCodecCreateByCodecName.release();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodecCreateByCodecName = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsb
    public final /* bridge */ /* synthetic */ zzsd zzd(zzsa zzsaVar) throws IOException {
        throw null;
    }

    public final void zze(boolean z) {
        this.zzc = true;
    }
}
