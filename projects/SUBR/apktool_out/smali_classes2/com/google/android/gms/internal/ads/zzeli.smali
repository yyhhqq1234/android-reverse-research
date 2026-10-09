.class public final synthetic Lcom/google/android/gms/internal/ads/zzeli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzelj;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeli;->zza:Lcom/google/android/gms/internal/ads/zzelj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeli;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeli;->zza:Lcom/google/android/gms/internal/ads/zzelj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelj;->zze:Lcom/google/android/gms/internal/ads/zzelk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelk;->zzd(Lcom/google/android/gms/internal/ads/zzelk;)Lcom/google/android/gms/internal/ads/zzela;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzela;->zza()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeli;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvw;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
