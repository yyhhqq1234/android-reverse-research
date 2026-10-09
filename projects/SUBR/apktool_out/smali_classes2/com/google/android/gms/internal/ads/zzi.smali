.class public final Lcom/google/android/gms/internal/ads/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:[B

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzi;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzk;->zze:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzi;->zzd:[B

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzi;->zze:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:I

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    return-object p0
.end method

.method public final zze([B)Lcom/google/android/gms/internal/ads/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zzd:[B

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzi;->zze:I

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzk;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzi;->zzd:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzi;->zze:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzk;-><init>(III[BIILcom/google/android/gms/internal/ads/zzj;)V

    return-object v8
.end method
