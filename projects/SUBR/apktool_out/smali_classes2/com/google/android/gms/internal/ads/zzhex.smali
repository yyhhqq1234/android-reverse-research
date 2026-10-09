.class public final Lcom/google/android/gms/internal/ads/zzhex;
.super Lcom/google/android/gms/internal/ads/zzhem;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzhew;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhem;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhex;
    .locals 0

    const-string p1, "Network"

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhem;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhem;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhey;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhey;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhex;->zza:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhey;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhew;)V

    return-object v0
.end method
