package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzib extends zzbd {
    public final int zzc;
    public final String zzd;
    public final int zze;
    public final zzab zzf;
    public final int zzg;
    public final zzug zzh;
    final boolean zzi;

    static {
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(1005, 36);
        Integer.toString(1006, 36);
    }

    private zzib(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    public static zzib zzb(Throwable th, String str, int i, zzab zzabVar, int i2, boolean z, int i3) {
        return new zzib(1, th, null, i3, str, i, zzabVar, zzabVar == null ? 4 : i2, z);
    }

    public static zzib zzc(IOException iOException, int i) {
        return new zzib(0, iOException, i);
    }

    public static zzib zzd(RuntimeException runtimeException, int i) {
        return new zzib(2, runtimeException, i);
    }

    final zzib zza(zzug zzugVar) {
        String message = getMessage();
        int i = zzei.zza;
        return new zzib(message, getCause(), this.zza, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, zzugVar, this.zzb, this.zzi);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private zzib(int i, Throwable th, String str, int i2, String str2, int i3, zzab zzabVar, int i4, boolean z) {
        String str3;
        String str4;
        if (i == 0) {
            str3 = "Source error";
        } else if (i != 1) {
            str3 = "Unexpected runtime error";
        } else {
            String strValueOf = String.valueOf(zzabVar);
            int i5 = zzei.zza;
            if (i4 == 0) {
                str4 = "NO";
            } else if (i4 == 1) {
                str4 = "NO_UNSUPPORTED_TYPE";
            } else if (i4 == 2) {
                str4 = "NO_UNSUPPORTED_DRM";
            } else if (i4 == 3) {
                str4 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i4 != 4) {
                    throw new IllegalStateException();
                }
                str4 = "YES";
            }
            str3 = str2 + " error, index=" + i3 + ", format=" + strValueOf + ", format_supported=" + str4;
        }
        this(TextUtils.isEmpty(null) ? str3 : str3.concat(": null"), th, i2, i, str2, i3, zzabVar, i4, null, SystemClock.elapsedRealtime(), z);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0021  */
    private zzib(String str, Throwable th, int i, int i2, String str2, int i3, zzab zzabVar, int i4, zzug zzugVar, long j, boolean z) {
        int i5;
        boolean z2;
        super(str, th, i, Bundle.EMPTY, j);
        if (z) {
            i5 = i2;
            if (i5 == 1) {
                i5 = 1;
            } else {
                z2 = false;
            }
            zzcw.zzd(z2);
            zzcw.zzd(th != null);
            this.zzc = i5;
            this.zzd = str2;
            this.zze = i3;
            this.zzf = zzabVar;
            this.zzg = i4;
            this.zzh = zzugVar;
            this.zzi = z;
        }
        i5 = i2;
        z2 = true;
        zzcw.zzd(z2);
        zzcw.zzd(th != null);
        this.zzc = i5;
        this.zzd = str2;
        this.zze = i3;
        this.zzf = zzabVar;
        this.zzg = i4;
        this.zzh = zzugVar;
        this.zzi = z;
    }
}
