.class final Lcom/google/android/gms/internal/ads/zzcah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcaf;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzcaf;Lcom/google/android/gms/internal/ads/zzcad;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Lcom/google/android/gms/internal/ads/zzcaf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzb:Lcom/google/android/gms/internal/ads/zzcad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzb:Lcom/google/android/gms/internal/ads/zzcad;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcad;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zza(Ljava/lang/Object;)V

    return-void
.end method
