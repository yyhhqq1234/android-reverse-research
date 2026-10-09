.class public final Lcom/google/android/gms/internal/ads/zzgyb;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgya;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgya;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyb;->zza:Lcom/google/android/gms/internal/ads/zzgxz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgyb;->zzb:Lcom/google/android/gms/internal/ads/zzgya;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyb;->zza:Lcom/google/android/gms/internal/ads/zzgxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyb;->zzb:Lcom/google/android/gms/internal/ads/zzgya;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzd(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzgya;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyb;->zza:Lcom/google/android/gms/internal/ads/zzgxz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->size()I

    move-result v0

    return v0
.end method
