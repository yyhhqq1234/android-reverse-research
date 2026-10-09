.class final Lcom/google/android/gms/internal/ads/zzccv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzccw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zza:Lcom/google/android/gms/internal/ads/zzccw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzz()Lcom/google/android/gms/internal/ads/zzccx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zza:Lcom/google/android/gms/internal/ads/zzccw;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccx;->zzc(Lcom/google/android/gms/internal/ads/zzccw;)V

    return-void
.end method
