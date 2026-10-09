.class public final Lcom/google/android/gms/internal/ads/zzge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgg;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzge;->zza:Landroid/content/Context;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzb:Lcom/google/android/gms/internal/ads/zzfx;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzfy;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzb:Lcom/google/android/gms/internal/ads/zzfx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zza:Landroid/content/Context;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfx;->zza()Lcom/google/android/gms/internal/ads/zzfy;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfy;)V

    return-object v0
.end method
