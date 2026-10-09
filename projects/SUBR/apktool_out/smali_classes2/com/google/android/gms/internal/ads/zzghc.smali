.class public final synthetic Lcom/google/android/gms/internal/ads/zzghc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmv;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdx;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghm;

    sget v0, Lcom/google/android/gms/internal/ads/zzghd;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzb()Lcom/google/android/gms/internal/ads/zzghr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghr;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzb()Lcom/google/android/gms/internal/ads/zzghr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghr;->zzb()Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgeh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgeh;->zzb()Lcom/google/android/gms/internal/ads/zzgdn;

    move-result-object v0

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzgha;->zza:I

    .line 3
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgeq;->zzb(Lcom/google/android/gms/internal/ads/zzgek;)[B

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxb;->zza()Lcom/google/android/gms/internal/ads/zzgxb;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgsp;->zzf([BLcom/google/android/gms/internal/ads/zzgxb;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgha;

    .line 7
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgha;-><init>(Lcom/google/android/gms/internal/ads/zzgsp;Lcom/google/android/gms/internal/ads/zzgdn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzc()Lcom/google/android/gms/internal/ads/zzgvo;

    move-result-object p1

    .line 8
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzgkc;->zzc(Lcom/google/android/gms/internal/ads/zzgdn;Lcom/google/android/gms/internal/ads/zzgvo;)Lcom/google/android/gms/internal/ads/zzgdn;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
