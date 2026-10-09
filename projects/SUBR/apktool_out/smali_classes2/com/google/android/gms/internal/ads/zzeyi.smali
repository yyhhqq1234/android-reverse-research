.class public final synthetic Lcom/google/android/gms/internal/ads/zzeyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzezg;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeyk;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeze;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzcuz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeyl;Lcom/google/android/gms/internal/ads/zzezg;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzeze;Lcom/google/android/gms/internal/ads/zzcuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zza:Lcom/google/android/gms/internal/ads/zzeyl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzb:Lcom/google/android/gms/internal/ads/zzezg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzc:Lcom/google/android/gms/internal/ads/zzeyk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzd:Lcom/google/android/gms/internal/ads/zzeze;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zze:Lcom/google/android/gms/internal/ads/zzcuz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zza:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzb:Lcom/google/android/gms/internal/ads/zzezg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzc:Lcom/google/android/gms/internal/ads/zzeyk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzd:Lcom/google/android/gms/internal/ads/zzeze;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zze:Lcom/google/android/gms/internal/ads/zzcuz;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeyq;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeyl;->zzb(Lcom/google/android/gms/internal/ads/zzezg;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzeze;Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzeyq;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
