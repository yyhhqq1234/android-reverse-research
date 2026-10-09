package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsj extends Exception {
    public final String zza;
    public final boolean zzb;
    public final zzsg zzc;
    public final String zzd;

    public zzsj(zzab zzabVar, Throwable th, boolean z, int i) {
        this("Decoder init failed: [" + i + "], " + zzabVar.toString(), th, zzabVar.zzo, false, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_" + Math.abs(i), null);
    }

    static /* bridge */ /* synthetic */ zzsj zza(zzsj zzsjVar, zzsj zzsjVar2) {
        return new zzsj(zzsjVar.getMessage(), zzsjVar.getCause(), zzsjVar.zza, false, zzsjVar.zzc, zzsjVar.zzd, zzsjVar2);
    }

    public zzsj(zzab zzabVar, Throwable th, boolean z, zzsg zzsgVar) {
        this("Decoder init failed: " + zzsgVar.zza + ", " + zzabVar.toString(), th, zzabVar.zzo, false, zzsgVar, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null, null);
    }

    private zzsj(String str, Throwable th, String str2, boolean z, zzsg zzsgVar, String str3, zzsj zzsjVar) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = zzsgVar;
        this.zzd = str3;
    }
}
