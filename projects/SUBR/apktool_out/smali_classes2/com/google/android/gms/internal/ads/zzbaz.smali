.class final Lcom/google/android/gms/internal/ads/zzbaz;
.super Lcom/google/android/gms/internal/ads/zzcab;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbbf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zza:Lcom/google/android/gms/internal/ads/zzbbf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcab;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zza:Lcom/google/android/gms/internal/ads/zzbbf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbf;->zze(Lcom/google/android/gms/internal/ads/zzbbf;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcab;->cancel(Z)Z

    move-result p1

    return p1
.end method
