.class public final Lcom/google/android/gms/internal/ads/zzcqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zza:Lcom/google/android/gms/internal/ads/zzcqh;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Runnable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zza:Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqh;->zzb()Ljava/lang/Runnable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zza:Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqh;->zzb()Ljava/lang/Runnable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    return-object v0
.end method
