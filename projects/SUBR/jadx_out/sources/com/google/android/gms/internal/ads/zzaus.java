package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaus implements zzauv {
    private static zzaus zzb;
    private final Context zzc;
    private final zzfox zzd;
    private final zzfpe zze;
    private final zzfpg zzf;
    private final zzavx zzg;
    private final zzfni zzh;
    private final Executor zzi;
    private final zzfpd zzj;
    private final zzawm zzl;
    private final zzawe zzm;
    private final zzavv zzn;
    private volatile boolean zzp;
    private volatile boolean zzq;
    private final int zzr;
    volatile long zza = 0;
    private final Object zzo = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    zzaus(Context context, zzfni zzfniVar, zzfox zzfoxVar, zzfpe zzfpeVar, zzfpg zzfpgVar, zzavx zzavxVar, Executor executor, zzfnd zzfndVar, int i, zzawm zzawmVar, zzawe zzaweVar, zzavv zzavvVar) {
        this.zzq = false;
        this.zzc = context;
        this.zzh = zzfniVar;
        this.zzd = zzfoxVar;
        this.zze = zzfpeVar;
        this.zzf = zzfpgVar;
        this.zzg = zzavxVar;
        this.zzi = executor;
        this.zzr = i;
        this.zzl = zzawmVar;
        this.zzm = zzaweVar;
        this.zzn = zzavvVar;
        this.zzq = false;
        this.zzj = new zzauq(this, zzfndVar);
    }

    public static synchronized zzaus zza(Context context, zzarg zzargVar, boolean z) {
        zzfnj zzfnjVarZzc;
        zzfnjVarZzc = zzfnk.zzc();
        zzfnjVarZzc.zza(zzargVar.zzf());
        zzfnjVarZzc.zzg(zzargVar.zzi());
        return zzs(context, Executors.newCachedThreadPool(), zzfnjVarZzc.zzh(), z);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ce A[Catch: all -> 0x011c, zzgyg -> 0x011e, TryCatch #1 {zzgyg -> 0x011e, blocks: (B:6:0x0021, B:8:0x0032, B:12:0x0038, B:13:0x0044, B:15:0x0052, B:17:0x0060, B:20:0x006d, B:27:0x009c, B:31:0x00b5, B:37:0x00ce, B:38:0x00db, B:40:0x00e1, B:42:0x00e9, B:43:0x00eb, B:34:0x00bf, B:35:0x00c6, B:23:0x0074, B:25:0x008a, B:44:0x00f5, B:45:0x0102, B:46:0x010f), top: B:58:0x0021, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f5 A[Catch: all -> 0x011c, zzgyg -> 0x011e, TryCatch #1 {zzgyg -> 0x011e, blocks: (B:6:0x0021, B:8:0x0032, B:12:0x0038, B:13:0x0044, B:15:0x0052, B:17:0x0060, B:20:0x006d, B:27:0x009c, B:31:0x00b5, B:37:0x00ce, B:38:0x00db, B:40:0x00e1, B:42:0x00e9, B:43:0x00eb, B:34:0x00bf, B:35:0x00c6, B:23:0x0074, B:25:0x008a, B:44:0x00f5, B:45:0x0102, B:46:0x010f), top: B:58:0x0021, outer: #2 }] */
    static /* bridge */ /* synthetic */ void zzj(zzaus zzausVar) {
        String str;
        String strZzj;
        int length;
        boolean zZza;
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfow zzfowVarZzu = zzausVar.zzu(1);
        if (zzfowVarZzu != null) {
            String strZzk = zzfowVarZzu.zza().zzk();
            strZzj = zzfowVarZzu.zza().zzj();
            str = strZzk;
        } else {
            str = null;
            strZzj = null;
        }
        try {
            try {
                zzfpb zzfpbVarZza = zzfns.zza(zzausVar.zzc, 1, zzausVar.zzr, str, strZzj, "1", zzausVar.zzh);
                byte[] bArr = zzfpbVarZza.zzb;
                if (bArr == null || (length = bArr.length) == 0) {
                    zzausVar.zzh.zzd(IronSourceConstants.errorCode_adClosed, System.currentTimeMillis() - jCurrentTimeMillis);
                } else {
                    try {
                        zzaxw zzaxwVarZzb = zzaxw.zzb(zzgwj.zzv(bArr, 0, length), zzgxb.zza());
                        if (zzaxwVarZzb.zzc().zzk().isEmpty() || zzaxwVarZzb.zzc().zzj().isEmpty() || zzaxwVarZzb.zzd().zzA().length == 0) {
                            zzausVar.zzh.zzd(IronSourceConstants.errorCode_destroy, System.currentTimeMillis() - jCurrentTimeMillis);
                        } else {
                            zzfow zzfowVarZzu2 = zzausVar.zzu(1);
                            if (zzfowVarZzu2 != null) {
                                zzaxz zzaxzVarZza = zzfowVarZzu2.zza();
                                if (zzaxwVarZzb.zzc().zzk().equals(zzaxzVarZza.zzk()) && zzaxwVarZzb.zzc().zzj().equals(zzaxzVarZza.zzj())) {
                                    zzausVar.zzh.zzd(IronSourceConstants.errorCode_destroy, System.currentTimeMillis() - jCurrentTimeMillis);
                                }
                            }
                            zzfpd zzfpdVar = zzausVar.zzj;
                            int i = zzfpbVarZza.zzc;
                            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcu)).booleanValue()) {
                                zZza = zzausVar.zzd.zza(zzaxwVarZzb, zzfpdVar);
                            } else if (i == 3) {
                                zZza = zzausVar.zze.zza(zzaxwVarZzb);
                            } else if (i == 4) {
                                zZza = zzausVar.zze.zzb(zzaxwVarZzb, zzfpdVar);
                            } else {
                                zzausVar.zzh.zzd(IronSourceConstants.NT_INSTANCE_SHOW, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                            if (zZza) {
                                zzfow zzfowVarZzu3 = zzausVar.zzu(1);
                                if (zzfowVarZzu3 != null) {
                                    if (zzausVar.zzf.zzc(zzfowVarZzu3)) {
                                        zzausVar.zzq = true;
                                    }
                                    zzausVar.zza = System.currentTimeMillis() / 1000;
                                }
                            } else {
                                zzausVar.zzh.zzd(IronSourceConstants.NT_INSTANCE_SHOW, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                        }
                    } catch (NullPointerException unused) {
                        zzausVar.zzh.zzd(IronSourceError.ERROR_OLD_API_INIT_IN_PROGRESS, System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
            } catch (zzgyg e) {
                zzausVar.zzh.zzc(IronSourceConstants.NT_INSTANCE_LOAD, System.currentTimeMillis() - jCurrentTimeMillis, e);
            }
        } finally {
            zzausVar.zzk.countDown();
        }
    }

    private static synchronized zzaus zzs(Context context, Executor executor, zzfnk zzfnkVar, boolean z) {
        if (zzb == null) {
            zzfni zzfniVarZza = zzfni.zza(context, executor, z);
            zzavg zzavgVarZzc = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdw)).booleanValue() ? zzavg.zzc(context) : null;
            zzawm zzawmVarZzd = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdx)).booleanValue() ? zzawm.zzd(context, executor) : null;
            zzawe zzaweVar = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue() ? new zzawe() : null;
            zzavv zzavvVar = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcT)).booleanValue() ? new zzavv() : null;
            zzfob zzfobVarZze = zzfob.zze(context, executor, zzfniVarZza, zzfnkVar);
            zzavw zzavwVar = new zzavw(context);
            zzavx zzavxVar = new zzavx(zzfnkVar, zzfobVarZze, new zzawk(context, zzavwVar), zzavwVar, zzavgVarZzc, zzawmVarZzd, zzaweVar, zzavvVar);
            int iZzb = zzfok.zzb(context, zzfniVarZza);
            zzfnd zzfndVar = new zzfnd();
            zzaus zzausVar = new zzaus(context, zzfniVarZza, new zzfox(context, iZzb), new zzfpe(context, iZzb, new zzaup(zzfniVarZza), ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcw)).booleanValue()), new zzfpg(context, zzavxVar, zzfniVarZza, zzfndVar), zzavxVar, executor, zzfndVar, iZzb, zzawmVarZzd, zzaweVar, zzavvVar);
            zzb = zzausVar;
            zzausVar.zzm();
            zzb.zzp();
        }
        return zzb;
    }

    private final void zzt() {
        zzawm zzawmVar = this.zzl;
        if (zzawmVar != null) {
            zzawmVar.zzh();
        }
    }

    private final zzfow zzu(int i) {
        if (zzfok.zza(this.zzr)) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcu)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzc(1);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zze(Context context, String str, View view, Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue()) {
            this.zzm.zzi();
        }
        zzp();
        zzfnl zzfnlVarZza = this.zzf.zza();
        if (zzfnlVarZza == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZza = zzfnlVarZza.zza(context, null, str, view, activity);
        this.zzh.zzf(5000, System.currentTimeMillis() - jCurrentTimeMillis, strZza, null);
        return strZza;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzf(Context context) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue()) {
            this.zzm.zzj();
        }
        zzp();
        zzfnl zzfnlVarZza = this.zzf.zza();
        if (zzfnlVarZza == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzc = zzfnlVarZza.zzc(context, null);
        this.zzh.zzf(IronSourceConstants.errorCode_biddingDataException, System.currentTimeMillis() - jCurrentTimeMillis, strZzc, null);
        return strZzc;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzh(Context context, View view, Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcM)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzp();
        zzfnl zzfnlVarZza = this.zzf.zza();
        if (zzfnlVarZza == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzb = zzfnlVarZza.zzb(context, null, view, activity);
        this.zzh.zzf(IronSourceConstants.errorCode_isReadyException, System.currentTimeMillis() - jCurrentTimeMillis, strZzb, null);
        return strZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzk(MotionEvent motionEvent) {
        zzfnl zzfnlVarZza = this.zzf.zza();
        if (zzfnlVarZza != null) {
            try {
                zzfnlVarZza.zzd(null, motionEvent);
            } catch (zzfpf e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzl(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlP)).booleanValue() || (displayMetrics = this.zzc.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f = i;
        float f2 = i2;
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 0, displayMetrics.density * f, displayMetrics.density * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain);
        motionEventObtain.recycle();
        MotionEvent motionEventObtain2 = MotionEvent.obtain(0L, 0L, 2, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain2);
        motionEventObtain2.recycle();
        MotionEvent motionEventObtain3 = MotionEvent.obtain(0L, i3, 1, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain3);
        motionEventObtain3.recycle();
    }

    final synchronized void zzm() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfow zzfowVarZzu = zzu(1);
        if (zzfowVarZzu == null) {
            this.zzh.zzd(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.zzf.zzc(zzfowVarZzu)) {
            this.zzq = true;
            this.zzk.countDown();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzavv zzavvVar = this.zzn;
        if (zzavvVar != null) {
            zzavvVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzo(View view) {
        this.zzg.zzd(view);
    }

    public final void zzp() {
        if (this.zzp) {
            return;
        }
        synchronized (this.zzo) {
            if (!this.zzp) {
                if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                    return;
                }
                zzfow zzfowVarZzb = this.zzf.zzb();
                if ((zzfowVarZzb == null || zzfowVarZzb.zzd(3600L)) && zzfok.zza(this.zzr)) {
                    this.zzi.execute(new zzaur(this));
                }
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.zzq;
    }
}
