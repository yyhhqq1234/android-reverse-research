package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.collection.CircularIntArray;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzrt extends MediaCodec.Callback {
    private final HandlerThread zzb;
    private Handler zzc;
    private MediaFormat zzh;
    private MediaFormat zzi;
    private MediaCodec.CodecException zzj;
    private MediaCodec.CryptoException zzk;
    private long zzl;
    private boolean zzm;
    private IllegalStateException zzn;
    private zzsc zzo;
    private final Object zza = new Object();
    private final CircularIntArray zzd = new CircularIntArray();
    private final CircularIntArray zze = new CircularIntArray();
    private final ArrayDeque zzf = new ArrayDeque();
    private final ArrayDeque zzg = new ArrayDeque();

    zzrt(HandlerThread handlerThread) {
        this.zzb = handlerThread;
    }

    public static /* synthetic */ void zzd(zzrt zzrtVar) {
        synchronized (zzrtVar.zza) {
            if (zzrtVar.zzm) {
                return;
            }
            long j = zzrtVar.zzl - 1;
            zzrtVar.zzl = j;
            if (j > 0) {
                return;
            }
            if (j >= 0) {
                zzrtVar.zzj();
                return;
            }
            IllegalStateException illegalStateException = new IllegalStateException();
            synchronized (zzrtVar.zza) {
                zzrtVar.zzn = illegalStateException;
            }
        }
    }

    private final void zzi(MediaFormat mediaFormat) {
        this.zze.addLast(-2);
        this.zzg.add(mediaFormat);
    }

    private final void zzj() {
        if (!this.zzg.isEmpty()) {
            this.zzi = (MediaFormat) this.zzg.getLast();
        }
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        this.zzg.clear();
    }

    private final void zzk() {
        IllegalStateException illegalStateException = this.zzn;
        if (illegalStateException != null) {
            this.zzn = null;
            throw illegalStateException;
        }
        MediaCodec.CodecException codecException = this.zzj;
        if (codecException != null) {
            this.zzj = null;
            throw codecException;
        }
        MediaCodec.CryptoException cryptoException = this.zzk;
        if (cryptoException == null) {
            return;
        }
        this.zzk = null;
        throw cryptoException;
    }

    private final boolean zzl() {
        return this.zzl > 0 || this.zzm;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.zza) {
            this.zzk = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.zza) {
            this.zzj = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.zza) {
            this.zzd.addLast(i);
            zzsc zzscVar = this.zzo;
            if (zzscVar != null) {
                zzsn zzsnVar = ((zzsk) zzscVar).zza;
                if (zzsnVar.zzo != null) {
                    zzsnVar.zzo.zza();
                }
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            MediaFormat mediaFormat = this.zzi;
            if (mediaFormat != null) {
                zzi(mediaFormat);
                this.zzi = null;
            }
            this.zze.addLast(i);
            this.zzf.add(bufferInfo);
            zzsc zzscVar = this.zzo;
            if (zzscVar != null) {
                zzsn zzsnVar = ((zzsk) zzscVar).zza;
                if (zzsnVar.zzo != null) {
                    zzsnVar.zzo.zza();
                }
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.zza) {
            zzi(mediaFormat);
            this.zzi = null;
        }
    }

    public final int zza() {
        synchronized (this.zza) {
            zzk();
            int iPopFirst = -1;
            if (zzl()) {
                return -1;
            }
            if (!this.zzd.isEmpty()) {
                iPopFirst = this.zzd.popFirst();
            }
            return iPopFirst;
        }
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            zzk();
            if (zzl()) {
                return -1;
            }
            if (this.zze.isEmpty()) {
                return -1;
            }
            int iPopFirst = this.zze.popFirst();
            if (iPopFirst >= 0) {
                zzcw.zzb(this.zzh);
                MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.zzf.remove();
                bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
            } else if (iPopFirst == -2) {
                this.zzh = (MediaFormat) this.zzg.remove();
                iPopFirst = -2;
            }
            return iPopFirst;
        }
    }

    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        synchronized (this.zza) {
            mediaFormat = this.zzh;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public final void zze() {
        synchronized (this.zza) {
            this.zzl++;
            Handler handler = this.zzc;
            int i = zzei.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzrs
                @Override // java.lang.Runnable
                public final void run() {
                    zzrt.zzd(this.zza);
                }
            });
        }
    }

    public final void zzf(MediaCodec mediaCodec) {
        zzcw.zzf(this.zzc == null);
        this.zzb.start();
        Handler handler = new Handler(this.zzb.getLooper());
        mediaCodec.setCallback(this, handler);
        this.zzc = handler;
    }

    public final void zzg(zzsc zzscVar) {
        synchronized (this.zza) {
            this.zzo = zzscVar;
        }
    }

    public final void zzh() {
        synchronized (this.zza) {
            this.zzm = true;
            this.zzb.quit();
            zzj();
        }
    }
}
