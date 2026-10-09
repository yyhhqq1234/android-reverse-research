.class public final synthetic Lcom/google/android/gms/internal/ads/zzelh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzelj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelh;->zza:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelh;->zza:Lcom/google/android/gms/internal/ads/zzelj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelj;->zze:Lcom/google/android/gms/internal/ads/zzelk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelk;->zzd(Lcom/google/android/gms/internal/ads/zzelk;)Lcom/google/android/gms/internal/ads/zzela;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzela;->zzb()Lcom/google/android/gms/internal/ads/zzcxh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxh;->zzs()V

    return-void
.end method
