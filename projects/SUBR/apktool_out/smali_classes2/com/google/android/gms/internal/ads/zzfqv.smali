.class public final Lcom/google/android/gms/internal/ads/zzfqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfqs;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfqs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqt;-><init>(Lcom/google/android/gms/internal/ads/zzfqu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqv;->zza:Lcom/google/android/gms/internal/ads/zzfqs;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqv;->zzb:Lcom/google/android/gms/internal/ads/zzfqs;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfqs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqv;->zzb:Lcom/google/android/gms/internal/ads/zzfqs;

    return-object v0
.end method
