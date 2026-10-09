package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduq {
    private final zzdua zza;
    private final zzdpj zzb;
    private final Object zzc = new Object();
    private final List zzd = new ArrayList();
    private boolean zze;

    zzduq(zzdua zzduaVar, zzdpj zzdpjVar) {
        this.zza = zzduaVar;
        this.zzb = zzdpjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        zzdpi zzdpiVarZza;
        zzdpi zzdpiVarZza2;
        zzbrs zzbrsVar;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbln zzblnVar = (zzbln) it.next();
                String string = (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjj)).booleanValue() || (zzdpiVarZza2 = this.zzb.zza(zzblnVar.zza)) == null || (zzbrsVar = zzdpiVarZza2.zzc) == null) ? "" : zzbrsVar.toString();
                String str = string;
                boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjk)).booleanValue() && (zzdpiVarZza = this.zzb.zza(zzblnVar.zza)) != null && zzdpiVarZza.zzd;
                List list2 = this.zzd;
                String str2 = zzblnVar.zza;
                list2.add(new zzdup(str2, str, this.zzb.zzb(str2), zzblnVar.zzb ? 1 : 0, zzblnVar.zzd, zzblnVar.zzc, z));
            }
            this.zze = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f A[Catch: all -> 0x003f, LOOP:0: B:13:0x0029->B:15:0x002f, LOOP_END, TryCatch #0 {, blocks: (B:4:0x0008, B:6:0x000c, B:8:0x0014, B:9:0x001e, B:10:0x0021, B:12:0x0023, B:13:0x0029, B:15:0x002f, B:16:0x003d), top: B:21:0x0008 }] */
    public final JSONArray zza() throws JSONException {
        Iterator it;
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            if (this.zze) {
                it = this.zzd.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((zzdup) it.next()).zza());
                }
            } else if (this.zza.zzt()) {
                zzd(this.zza.zzg());
                it = this.zzd.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((zzdup) it.next()).zza());
                }
            } else {
                zzc();
            }
        }
        return jSONArray;
    }

    public final void zzc() {
        this.zza.zzs(new zzduo(this));
    }
}
