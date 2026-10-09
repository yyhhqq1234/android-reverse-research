package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.vj;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfov implements zzfnl {
    private final Object zza;
    private final zzfow zzb;
    private final zzfph zzc;
    private final zzfni zzd;

    zzfov(Object obj, zzfow zzfowVar, zzfph zzfphVar, zzfni zzfniVar) {
        this.zza = obj;
        this.zzb = zzfowVar;
        this.zzc = zzfphVar;
        this.zzd = zzfniVar;
    }

    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzatm zzatmVarZza = zzatn.zza();
        zzatmVarZza.zzc(5);
        zzatmVarZza.zza(zzgwj.zzv(bArr, 0, bArr.length));
        return Base64.encodeToString(((zzatn) zzatmVarZza.zzbr()).zzaV(), 11);
    }

    private final synchronized byte[] zzj(Map map, Map map2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            this.zzd.zzc(2007, System.currentTimeMillis() - jCurrentTimeMillis, e);
            return null;
        }
        return (byte[]) this.zza.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.zza, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfnl
    public final synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map mapZza;
        mapZza = this.zzc.zza();
        mapZza.put("f", "c");
        mapZza.put("ctx", context);
        mapZza.put("cs", str2);
        mapZza.put(vj.SESSION_HISTORY_KEY_AD_ID, null);
        mapZza.put("view", view);
        mapZza.put("act", activity);
        return zzi(zzj(null, mapZza));
    }

    @Override // com.google.android.gms.internal.ads.zzfnl
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map mapZzc;
        mapZzc = this.zzc.zzc();
        mapZzc.put("f", "v");
        mapZzc.put("ctx", context);
        mapZzc.put(vj.SESSION_HISTORY_KEY_AD_ID, null);
        mapZzc.put("view", view);
        mapZzc.put("act", activity);
        return zzi(zzj(null, mapZzc));
    }

    @Override // com.google.android.gms.internal.ads.zzfnl
    public final synchronized String zzc(Context context, String str) {
        Map mapZzb;
        mapZzb = this.zzc.zzb();
        mapZzb.put("f", "q");
        mapZzb.put("ctx", context);
        mapZzb.put(vj.SESSION_HISTORY_KEY_AD_ID, null);
        return zzi(zzj(null, mapZzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfnl
    public final synchronized void zzd(String str, MotionEvent motionEvent) throws zzfpf {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            HashMap map = new HashMap();
            map.put("t", new Throwable());
            map.put(vj.SESSION_HISTORY_KEY_AD_ID, null);
            map.put("evt", motionEvent);
            this.zza.getClass().getDeclaredMethod("he", Map.class).invoke(this.zza, map);
            this.zzd.zzd(3003, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e) {
            throw new zzfpf(2005, e);
        }
    }

    public final synchronized int zze() throws zzfpf {
        try {
        } catch (Exception e) {
            throw new zzfpf(2006, e);
        }
        return ((Integer) this.zza.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zza, new Object[0])).intValue();
    }

    final zzfow zzf() {
        return this.zzb;
    }

    public final synchronized void zzg() throws zzfpf {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.zza.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.zza, new Object[0]);
            this.zzd.zzd(3001, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e) {
            throw new zzfpf(2003, e);
        }
    }

    final synchronized boolean zzh() throws zzfpf {
        try {
        } catch (Exception e) {
            throw new zzfpf(IronSourceConstants.IS_LOAD_CALLED, e);
        }
        return ((Boolean) this.zza.getClass().getDeclaredMethod(y8.a.e, new Class[0]).invoke(this.zza, new Object[0])).booleanValue();
    }
}
