.class public final synthetic Lcom/google/android/gms/internal/ads/zzzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzaab;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzabe;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzabe;Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzy;->zza:Lcom/google/android/gms/internal/ads/zzaab;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzy;->zzb:Lcom/google/android/gms/internal/ads/zzabe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzy;->zzc:Lcom/google/android/gms/internal/ads/zzcd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzy;->zzb:Lcom/google/android/gms/internal/ads/zzabe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzy;->zza:Lcom/google/android/gms/internal/ads/zzaab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzy;->zzc:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabe;->zzc(Lcom/google/android/gms/internal/ads/zzabh;Lcom/google/android/gms/internal/ads/zzcd;)V

    return-void
.end method
