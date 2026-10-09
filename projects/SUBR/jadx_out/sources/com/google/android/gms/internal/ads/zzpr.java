package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpr extends zzci {
    private int[] zzd;
    private int[] zze;

    zzpr() {
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final void zze(ByteBuffer byteBuffer) {
        int[] iArr = this.zze;
        iArr.getClass();
        int[] iArr2 = iArr;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferZzj = zzj(((iLimit - iPosition) / this.zzb.zze) * this.zzc.zze);
        while (iPosition < iLimit) {
            for (int i : iArr2) {
                byteBufferZzj.putShort(byteBuffer.getShort(i + i + iPosition));
            }
            iPosition += this.zzb.zze;
        }
        byteBuffer.position(iLimit);
        byteBufferZzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzci
    public final zzcf zzi(zzcf zzcfVar) throws zzcg {
        int[] iArr = this.zzd;
        if (iArr == null) {
            return zzcf.zza;
        }
        if (zzcfVar.zzd != 2) {
            throw new zzcg("Unhandled input format:", zzcfVar);
        }
        boolean z = zzcfVar.zzc != iArr.length;
        int i = 0;
        while (true) {
            int length = iArr.length;
            if (i >= length) {
                return z ? new zzcf(zzcfVar.zzb, length, 2) : zzcf.zza;
            }
            int i2 = iArr[i];
            if (i2 >= zzcfVar.zzc) {
                throw new zzcg("Unhandled input format:", zzcfVar);
            }
            z |= i2 != i;
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzci
    protected final void zzk() {
        this.zze = this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzci
    protected final void zzm() {
        this.zze = null;
        this.zzd = null;
    }

    public final void zzo(int[] iArr) {
        this.zzd = iArr;
    }
}
