package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfrj {
    public static ListenableFuture zza(Task task, CancellationTokenSource cancellationTokenSource) {
        final zzfri zzfriVar = new zzfri(task, null);
        task.addOnCompleteListener(zzgcz.zzc(), new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfrh
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                zzfri zzfriVar2 = zzfriVar;
                if (task2.isCanceled()) {
                    zzfriVar2.cancel(false);
                    return;
                }
                if (task2.isSuccessful()) {
                    zzfriVar2.zzc(task2.getResult());
                    return;
                }
                Exception exception = task2.getException();
                if (exception == null) {
                    throw new IllegalStateException();
                }
                zzfriVar2.zzd(exception);
            }
        });
        return zzfriVar;
    }
}
