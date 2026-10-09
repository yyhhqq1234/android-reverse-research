.class public final Lcom/google/android/gms/internal/ads/zzesj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzhfj;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzhfj;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzesh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzesh;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
