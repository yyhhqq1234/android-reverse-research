.class public final Lcom/google/android/gms/internal/ads/zzqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzch;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzqu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzck;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzch;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzch;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqc;->zza:[Lcom/google/android/gms/internal/ads/zzch;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:Lcom/google/android/gms/internal/ads/zzck;

    aput-object v0, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public final zza(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzck;->zzi(J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqu;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbe;)Lcom/google/android/gms/internal/ads/zzbe;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzb:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzk(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzc:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzj(F)V

    return-object p1
.end method

.method public final zzd(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzb:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqu;->zzp(Z)V

    return p1
.end method

.method public final zze()[Lcom/google/android/gms/internal/ads/zzch;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zza:[Lcom/google/android/gms/internal/ads/zzch;

    return-object v0
.end method
