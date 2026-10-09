.class final Lcom/google/android/gms/internal/ads/zzcur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxh;
.implements Lcom/google/android/gms/internal/ads/zzcwo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzbtj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    return-void
.end method


# virtual methods
.method public final zzdh(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzdj(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzdk(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbo;->zzad:Lcom/google/android/gms/internal/ads/zzbtk;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbtk;->zza:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbo;->zzad:Lcom/google/android/gms/internal/ads/zzbtk;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbtk;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbo;->zzad:Lcom/google/android/gms/internal/ads/zzbtk;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbtk;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
