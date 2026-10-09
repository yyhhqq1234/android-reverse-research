.class final Lcom/google/android/gms/internal/ads/zzzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabe;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzabh;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzzp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zzah(Lcom/google/android/gms/internal/ads/zzzp;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zzai(Lcom/google/android/gms/internal/ads/zzzp;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzabh;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzzp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zzah(Lcom/google/android/gms/internal/ads/zzzp;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzp;->zzaR(II)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzabh;Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 0

    return-void
.end method
