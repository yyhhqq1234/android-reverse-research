.class final Lcom/google/android/gms/internal/ads/zzeyk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfer;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzeze;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzezg;

.field public final zzc:Lcom/google/android/gms/ads/internal/client/zzm;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/concurrent/Executor;

.field public final zzf:Lcom/google/android/gms/ads/internal/client/zzy;

.field public final zzg:Lcom/google/android/gms/internal/ads/zzfeg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeze;Lcom/google/android/gms/internal/ads/zzezg;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzy;Lcom/google/android/gms/internal/ads/zzfeg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zza:Lcom/google/android/gms/internal/ads/zzeze;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzb:Lcom/google/android/gms/internal/ads/zzezg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zze:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzf:Lcom/google/android/gms/ads/internal/client/zzy;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzg:Lcom/google/android/gms/internal/ads/zzfeg;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfeg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzg:Lcom/google/android/gms/internal/ads/zzfeg;

    return-object v0
.end method

.method public final zzb()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zze:Ljava/util/concurrent/Executor;

    return-object v0
.end method
