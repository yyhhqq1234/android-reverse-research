.class public final enum Lcom/google/android/gms/internal/ads/zzgxq;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzgxq;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzgxq;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzgxq;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzgxq;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzgxq;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzgxq;

.field public static final enum zzg:Lcom/google/android/gms/internal/ads/zzgxq;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/ads/zzgxq;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxq;->zza:Lcom/google/android/gms/internal/ads/zzgxq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgxq;->zzb:Lcom/google/android/gms/internal/ads/zzgxq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v5, "BUILD_MESSAGE_INFO"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgxq;->zzc:Lcom/google/android/gms/internal/ads/zzgxq;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v7, "NEW_MUTABLE_INSTANCE"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzgxq;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v9, "NEW_BUILDER"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzgxq;->zze:Lcom/google/android/gms/internal/ads/zzgxq;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v11, "GET_DEFAULT_INSTANCE"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzgxq;->zzf:Lcom/google/android/gms/internal/ads/zzgxq;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzgxq;

    const-string v13, "GET_PARSER"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/gms/internal/ads/zzgxq;->zzg:Lcom/google/android/gms/internal/ads/zzgxq;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/internal/ads/zzgxq;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/google/android/gms/internal/ads/zzgxq;->zzh:[Lcom/google/android/gms/internal/ads/zzgxq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgxq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxq;->zzh:[Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgxq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgxq;

    return-object v0
.end method
