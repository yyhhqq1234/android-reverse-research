.class public final Lcom/google/android/gms/internal/ads/zzcjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcjn;)Lcom/google/android/gms/ads/internal/zza;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzccp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzccp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcbk;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzccp;Lcom/google/android/gms/internal/ads/zzcaz;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzc(Lcom/google/android/gms/internal/ads/zzcjn;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzc(Lcom/google/android/gms/internal/ads/zzcjn;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method
