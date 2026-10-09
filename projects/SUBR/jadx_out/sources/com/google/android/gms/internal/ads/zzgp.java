package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgp extends zzfz {
    public final int zzb;

    public zzgp(zzgd zzgdVar, int i, int i2) {
        super(zzb(2008, 1));
        this.zzb = 1;
    }

    public static zzgp zza(IOException iOException, zzgd zzgdVar, int i) {
        int i2;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i2 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else {
            i2 = (message == null || !zzftt.zza(message).matches("cleartext.*not permitted.*")) ? IronSourceConstants.IS_LOAD_CALLED : 2007;
        }
        return i2 == 2007 ? new zzgo(iOException, zzgdVar) : new zzgp(iOException, zzgdVar, i2, i);
    }

    private static int zzb(int i, int i2) {
        if (i != 2000) {
            return i;
        }
        if (i2 != 1) {
            return 2000;
        }
        return IronSourceConstants.IS_LOAD_CALLED;
    }

    public zzgp(IOException iOException, zzgd zzgdVar, int i, int i2) {
        super(iOException, zzb(i, i2));
        this.zzb = i2;
    }

    public zzgp(String str, zzgd zzgdVar, int i, int i2) {
        super(str, zzb(i, i2));
        this.zzb = i2;
    }

    public zzgp(String str, IOException iOException, zzgd zzgdVar, int i, int i2) {
        super(str, iOException, zzb(i, i2));
        this.zzb = i2;
    }
}
