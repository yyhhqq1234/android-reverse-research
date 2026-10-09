.class public final synthetic Lcom/google/android/gms/internal/ads/zzest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzesx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbrd;

.field public final synthetic zzc:Landroid/os/Bundle;

.field public final synthetic zzd:Ljava/util/List;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzejm;

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzcab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzesx;Lcom/google/android/gms/internal/ads/zzbrd;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzejm;Lcom/google/android/gms/internal/ads/zzcab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzest;->zza:Lcom/google/android/gms/internal/ads/zzesx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzest;->zzb:Lcom/google/android/gms/internal/ads/zzbrd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzest;->zzc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzest;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzest;->zze:Lcom/google/android/gms/internal/ads/zzejm;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzest;->zzf:Lcom/google/android/gms/internal/ads/zzcab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzest;->zza:Lcom/google/android/gms/internal/ads/zzesx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzest;->zzb:Lcom/google/android/gms/internal/ads/zzbrd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzest;->zzc:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzest;->zzd:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzest;->zze:Lcom/google/android/gms/internal/ads/zzejm;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzest;->zzf:Lcom/google/android/gms/internal/ads/zzcab;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzesx;->zze(Lcom/google/android/gms/internal/ads/zzbrd;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzejm;Lcom/google/android/gms/internal/ads/zzcab;)V

    return-void
.end method
