package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfpg {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfph zzc;
    private final zzfni zzd;
    private final zzfnd zze;
    private zzfov zzf;
    private final Object zzg = new Object();

    public zzfpg(Context context, zzfph zzfphVar, zzfni zzfniVar, zzfnd zzfndVar) {
        this.zzb = context;
        this.zzc = zzfphVar;
        this.zzd = zzfniVar;
        this.zze = zzfndVar;
    }

    private final synchronized Class zzd(zzfow zzfowVar) throws zzfpf {
        String strZzk = zzfowVar.zza().zzk();
        HashMap map = zza;
        Class cls = (Class) map.get(strZzk);
        if (cls != null) {
            return cls;
        }
        try {
            if (!this.zze.zza(zzfowVar.zzc())) {
                throw new zzfpf(2026, "VM did not pass signature verification");
            }
            try {
                File fileZzb = zzfowVar.zzb();
                if (!fileZzb.exists()) {
                    fileZzb.mkdirs();
                }
                Class clsLoadClass = new DexClassLoader(zzfowVar.zzc().getAbsolutePath(), fileZzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                map.put(strZzk, clsLoadClass);
                return clsLoadClass;
            } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                throw new zzfpf(2008, e);
            }
        } catch (GeneralSecurityException e2) {
            throw new zzfpf(2026, e2);
        }
    }

    public final zzfnl zza() {
        zzfov zzfovVar;
        synchronized (this.zzg) {
            zzfovVar = this.zzf;
        }
        return zzfovVar;
    }

    public final zzfow zzb() {
        synchronized (this.zzg) {
            zzfov zzfovVar = this.zzf;
            if (zzfovVar == null) {
                return null;
            }
            return zzfovVar.zzf();
        }
    }

    public final boolean zzc(zzfow zzfowVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfov zzfovVar = new zzfov(zzd(zzfowVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzfowVar.zze(), null, new Bundle(), 2), zzfowVar, this.zzc, this.zzd);
                if (!zzfovVar.zzh()) {
                    throw new zzfpf(4000, "init failed");
                }
                int iZze = zzfovVar.zze();
                if (iZze != 0) {
                    throw new zzfpf(IronSourceConstants.NT_LOAD, "ci: " + iZze);
                }
                synchronized (this.zzg) {
                    zzfov zzfovVar2 = this.zzf;
                    if (zzfovVar2 != null) {
                        try {
                            zzfovVar2.zzg();
                        } catch (zzfpf e) {
                            this.zzd.zzc(e.zza(), -1L, e);
                        }
                        this.zzf = zzfovVar;
                    } else {
                        this.zzf = zzfovVar;
                    }
                    throw th;
                }
                this.zzd.zzd(3000, System.currentTimeMillis() - jCurrentTimeMillis);
                return true;
            } catch (Exception e2) {
                throw new zzfpf(IronSourceConstants.IS_CALLBACK_LOAD_SUCCESS, e2);
            }
        } catch (zzfpf e3) {
            this.zzd.zzc(e3.zza(), System.currentTimeMillis() - jCurrentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.zzd.zzc(4010, System.currentTimeMillis() - jCurrentTimeMillis, e4);
            return false;
        }
    }
}
