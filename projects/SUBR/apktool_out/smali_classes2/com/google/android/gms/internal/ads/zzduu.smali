.class public final enum Lcom/google/android/gms/internal/ads/zzduu;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzduu;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzduu;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzduu;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzduu;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzduu;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduu;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzduu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzduu;->zza:Lcom/google/android/gms/internal/ads/zzduu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzduu;

    const-string v3, "API"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzduu;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzduu;->zzb:Lcom/google/android/gms/internal/ads/zzduu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzduu;

    const-string v5, "GESTURE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzduu;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzduu;->zzc:Lcom/google/android/gms/internal/ads/zzduu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzduu;

    const-string v7, "DEBUG_MENU"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzduu;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzduu;->zzd:Lcom/google/android/gms/internal/ads/zzduu;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzduu;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/zzduu;->zze:[Lcom/google/android/gms/internal/ads/zzduu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzduu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzduu;->zze:[Lcom/google/android/gms/internal/ads/zzduu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzduu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzduu;

    return-object v0
.end method
