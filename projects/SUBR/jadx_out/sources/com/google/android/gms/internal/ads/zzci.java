package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzci implements zzch {
    protected zzcf zzb;
    protected zzcf zzc;
    private zzcf zzd;
    private zzcf zze;
    private ByteBuffer zzf;
    private ByteBuffer zzg;
    private boolean zzh;

    public zzci() {
        ByteBuffer byteBuffer = zza;
        this.zzf = byteBuffer;
        this.zzg = byteBuffer;
        this.zzd = zzcf.zza;
        zzcf zzcfVar = zzcf.zza;
        this.zze = zzcfVar;
        this.zzb = zzcfVar;
        this.zzc = zzcfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final zzcf zza(zzcf zzcfVar) throws zzcg {
        this.zzd = zzcfVar;
        this.zze = zzi(zzcfVar);
        return zzg() ? this.zze : zzcf.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public ByteBuffer zzb() {
        ByteBuffer byteBuffer = this.zzg;
        this.zzg = zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final void zzc() {
        this.zzg = zza;
        this.zzh = false;
        this.zzb = this.zzd;
        this.zzc = this.zze;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final void zzd() {
        this.zzh = true;
        zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final void zzf() {
        zzc();
        this.zzf = zza;
        this.zzd = zzcf.zza;
        zzcf zzcfVar = zzcf.zza;
        this.zze = zzcfVar;
        this.zzb = zzcfVar;
        this.zzc = zzcfVar;
        zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public boolean zzg() {
        return this.zze != zzcf.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public boolean zzh() {
        return this.zzh && this.zzg == zza;
    }

    protected zzcf zzi(zzcf zzcfVar) throws zzcg {
        throw null;
    }

    protected final ByteBuffer zzj(int i) {
        if (this.zzf.capacity() < i) {
            this.zzf = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.zzf.clear();
        }
        ByteBuffer byteBuffer = this.zzf;
        this.zzg = byteBuffer;
        return byteBuffer;
    }

    protected void zzk() {
    }

    protected void zzl() {
    }

    protected void zzm() {
    }

    protected final boolean zzn() {
        return this.zzg.hasRemaining();
    }
}
