.class public final Lcom/google/android/gms/internal/ads/zzdgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgm;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzbl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgm;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgl;->zza()Lcom/google/android/gms/ads/internal/client/zzbl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgm;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgl;->zza()Lcom/google/android/gms/ads/internal/client/zzbl;

    move-result-object v0

    return-object v0
.end method
