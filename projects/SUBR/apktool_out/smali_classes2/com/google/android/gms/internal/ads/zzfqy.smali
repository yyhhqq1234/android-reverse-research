.class public final Lcom/google/android/gms/internal/ads/zzfqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfqy;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhfh;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzc:Lcom/google/android/gms/internal/ads/zzfqy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqy;->zza:Lcom/google/android/gms/internal/ads/zzfqy;

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfqy;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqy;->zzc:Lcom/google/android/gms/internal/ads/zzfqy;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfqy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqy;->zzc:Lcom/google/android/gms/internal/ads/zzfqy;

    return-object v0
.end method
