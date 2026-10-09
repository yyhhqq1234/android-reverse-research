package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.vf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdmg {
    private final Executor zza;
    private final zzcnr zzb;
    private final zzddm zzc;
    private final zzcmk zzd;

    zzdmg(Executor executor, zzcnr zzcnrVar, zzddm zzddmVar, zzcmk zzcmkVar) {
        this.zza = executor;
        this.zzc = zzddmVar;
        this.zzb = zzcnrVar;
        this.zzd = zzcmkVar;
    }

    public final void zza(final zzcex zzcexVar) {
        if (zzcexVar == null) {
            return;
        }
        this.zzc.zza(zzcexVar.zzF());
        this.zzc.zzo(new zzayk() { // from class: com.google.android.gms.internal.ads.zzdmc
            @Override // com.google.android.gms.internal.ads.zzayk
            public final void zzdn(zzayj zzayjVar) {
                zzcgp zzcgpVarZzN = zzcexVar.zzN();
                Rect rect = zzayjVar.zzd;
                zzcgpVarZzN.zzr(rect.left, rect.top, false);
            }
        }, this.zza);
        this.zzc.zzo(new zzayk() { // from class: com.google.android.gms.internal.ads.zzdmd
            @Override // com.google.android.gms.internal.ads.zzayk
            public final void zzdn(zzayj zzayjVar) {
                HashMap map = new HashMap();
                map.put(vf.k, true != zzayjVar.zzj ? "0" : "1");
                zzcexVar.zzd("onAdVisibilityChanged", map);
            }
        }, this.zza);
        this.zzc.zzo(this.zzb, this.zza);
        this.zzb.zzf(zzcexVar);
        zzcgp zzcgpVarZzN = zzcexVar.zzN();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjY)).booleanValue() && zzcgpVarZzN != null) {
            zzcgpVarZzN.zzL(this.zzd);
            zzcgpVarZzN.zzM(this.zzd, null, null);
        }
        zzcexVar.zzag("/trackActiveViewUnit", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdme
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                this.zza.zzb((zzcex) obj, map);
            }
        });
        zzcexVar.zzag("/untrackActiveViewUnit", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdmf
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                this.zza.zzc((zzcex) obj, map);
            }
        });
    }

    final /* synthetic */ void zzb(zzcex zzcexVar, Map map) {
        this.zzb.zzb();
    }

    final /* synthetic */ void zzc(zzcex zzcexVar, Map map) {
        this.zzb.zza();
    }
}
