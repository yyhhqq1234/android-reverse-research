.class public final Lcom/google/android/gms/internal/ads/zzhbo;
.super Lcom/google/android/gms/internal/ads/zzgxl;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzd;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhdx;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbp;->zzd()Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxl;-><init>(Lcom/google/android/gms/internal/ads/zzgxr;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbo;->zza:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhbp;->zzf(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/String;)V

    return-object p0
.end method
