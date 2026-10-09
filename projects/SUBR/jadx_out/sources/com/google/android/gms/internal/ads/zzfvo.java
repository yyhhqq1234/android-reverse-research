package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfvo extends zzfzt {

    @CheckForNull
    private Object zza;
    private int zzb = 2;

    protected zzfvo() {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzfun.zzl(this.zzb != 4);
        int i = this.zzb;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            return true;
        }
        if (i2 != 2) {
            this.zzb = 4;
            this.zza = zza();
            if (this.zzb != 3) {
                this.zzb = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.zzb = 2;
        Object obj = this.zza;
        this.zza = null;
        return obj;
    }

    @CheckForNull
    protected abstract Object zza();

    @CheckForNull
    protected final Object zzb() {
        this.zzb = 3;
        return null;
    }
}
