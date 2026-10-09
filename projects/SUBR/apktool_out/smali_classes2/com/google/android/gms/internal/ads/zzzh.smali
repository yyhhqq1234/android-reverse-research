.class final Lcom/google/android/gms/internal/ads/zzzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaal;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaaq;

.field private zzc:Lcom/google/android/gms/internal/ads/zzab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaal;Lcom/google/android/gms/internal/ads/zzaaq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:Lcom/google/android/gms/internal/ads/zzaaq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/Surface;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaal;->zzm(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzb()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzi()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaq;->zza()V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzab;)V
    .locals 0

    return-void
.end method

.method public final zzf(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzc(Z)V

    return-void
.end method

.method public final zzg(ILcom/google/android/gms/internal/ads/zzab;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-ne v1, v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:Lcom/google/android/gms/internal/ads/zzaaq;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzaaq;->zzb(II)V

    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzl(F)V

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzd()V

    return-void
.end method

.method public final zzi(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zze(Z)V

    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzg()V

    return-void
.end method

.method public final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzh()V

    return-void
.end method

.method public final zzl()V
    .locals 0

    return-void
.end method

.method public final zzm(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabg;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaaq;->zzd(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzib; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabg;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;)V

    throw p2
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzj(I)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzabe;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzdz;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzm(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzq(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzn(F)V

    return-void
.end method

.method public final zzr(JJJJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzaai;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzu(JZJJLcom/google/android/gms/internal/ads/zzabf;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzv()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zzw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzx(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzo(Z)Z

    move-result p1

    return p1
.end method
