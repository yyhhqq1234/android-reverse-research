.class final Lcom/google/android/gms/internal/ads/zzfgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfft;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfgd;Lcom/google/android/gms/internal/ads/zzfft;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zzb:Lcom/google/android/gms/internal/ads/zzfgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zzb:Lcom/google/android/gms/internal/ads/zzfgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgd;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgf;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzb(Lcom/google/android/gms/internal/ads/zzfft;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zzb:Lcom/google/android/gms/internal/ads/zzfgd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgd;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgf;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zzd(Lcom/google/android/gms/internal/ads/zzfft;)V

    return-void
.end method
