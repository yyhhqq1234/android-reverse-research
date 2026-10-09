.class public final Lcom/google/android/gms/internal/ads/zzgni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgsp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgsp;Lcom/google/android/gms/internal/ads/zzgvo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgni;->zzb:Lcom/google/android/gms/internal/ads/zzgsp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgni;->zza:Lcom/google/android/gms/internal/ads/zzgvo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgsp;)Lcom/google/android/gms/internal/ads/zzgni;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgni;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgnu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgni;-><init>(Lcom/google/android/gms/internal/ads/zzgsp;Lcom/google/android/gms/internal/ads/zzgvo;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgsp;)Lcom/google/android/gms/internal/ads/zzgni;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgni;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgni;-><init>(Lcom/google/android/gms/internal/ads/zzgsp;Lcom/google/android/gms/internal/ads/zzgvo;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzgsp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgni;->zzb:Lcom/google/android/gms/internal/ads/zzgsp;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgvo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgni;->zza:Lcom/google/android/gms/internal/ads/zzgvo;

    return-object v0
.end method
