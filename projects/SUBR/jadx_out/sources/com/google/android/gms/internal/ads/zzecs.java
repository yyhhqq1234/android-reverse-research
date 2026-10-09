package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecs {
    private MeasurementManagerFutures zza;
    private final Context zzb;

    zzecs(Context context) {
        this.zzb = context;
    }

    public final ListenableFuture zza() {
        try {
            MeasurementManagerFutures measurementManagerFuturesFrom = MeasurementManagerFutures.from(this.zzb);
            this.zza = measurementManagerFuturesFrom;
            return measurementManagerFuturesFrom == null ? zzgch.zzg(new IllegalStateException("MeasurementManagerFutures is null")) : measurementManagerFuturesFrom.getMeasurementApiStatusAsync();
        } catch (Exception e) {
            return zzgch.zzg(e);
        }
    }

    public final ListenableFuture zzb(Uri uri, InputEvent inputEvent) {
        try {
            return ((MeasurementManagerFutures) Objects.requireNonNull(this.zza)).registerSourceAsync(uri, inputEvent);
        } catch (Exception e) {
            return zzgch.zzg(e);
        }
    }
}
