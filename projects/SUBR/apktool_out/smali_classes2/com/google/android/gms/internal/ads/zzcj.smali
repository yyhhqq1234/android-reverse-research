.class final Lcom/google/android/gms/internal/ads/zzcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:F

.field private final zzd:F

.field private final zze:F

.field private final zzf:I

.field private final zzg:I

.field private final zzh:I

.field private final zzi:[S

.field private zzj:[S

.field private zzk:I

.field private zzl:[S

.field private zzm:I

.field private zzn:[S

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:I

.field private zzv:I

.field private zzw:D


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzc:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzd:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zze:F

    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzf:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzg:I

    add-int/2addr p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    new-array p3, p1, [S

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzi:[S

    mul-int p1, p1, p2

    .line 2
    new-array p2, p1, [S

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    .line 3
    new-array p2, p1, [S

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    .line 4
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzn:[S

    return-void
.end method

.method private final zzg([SIII)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p3, p4, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    .line 1
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v7, v7, p2

    add-int v8, v7, v5

    aget-short v8, p1, v8

    add-int/2addr v7, p3

    add-int/2addr v7, v5

    .line 2
    aget-short v7, p1, v7

    sub-int/2addr v8, v7

    .line 3
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v1, p3

    if-ge v5, v7, :cond_1

    move v1, v6

    :cond_1
    if-ge v5, v7, :cond_2

    move v3, p3

    :cond_2
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_3

    move v4, v6

    :cond_3
    if-le v5, v7, :cond_4

    move v2, p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_5
    div-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzu:I

    .line 5
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzv:I

    return v3
.end method

.method private final zzh([SII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v1, v1, v2

    mul-int v3, p3, v2

    mul-int p2, p2, v2

    .line 2
    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    return-void
.end method

.method private final zzi([SII)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    div-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v5, v4, p3

    if-ge v2, v5, :cond_0

    mul-int v4, v4, p2

    mul-int v5, v5, v1

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    aget-short v4, p1, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2
    :cond_0
    div-int/2addr v3, v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzi:[S

    int-to-short v3, v3

    .line 3
    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static zzj(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    mul-int v3, p7, p1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    add-int/2addr v3, v1

    add-int/2addr v2, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 1
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzk()V
    .locals 22

    move-object/from16 v0, p0

    .line 20
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzc:F

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzd:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3ff0000a7c5ac472L    # 1.00001

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpl-double v7, v1, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    if-gtz v7, :cond_1

    const-wide v7, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v4, v1, v7

    if-gez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    .line 19
    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzcj;->zzh([SII)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    goto/16 :goto_9

    .line 20
    :cond_1
    :goto_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    if-ge v4, v7, :cond_2

    goto/16 :goto_9

    :cond_2
    const/4 v7, 0x0

    .line 28
    :goto_1
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    if-lez v8, :cond_3

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    .line 1
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    .line 2
    invoke-direct {v0, v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzcj;->zzh([SII)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    sub-int/2addr v9, v8

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    add-int/2addr v7, v8

    goto/16 :goto_8

    .line 18
    :cond_3
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zza:I

    const/16 v10, 0xfa0

    if-le v9, v10, :cond_4

    div-int/lit16 v9, v9, 0xfa0

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    :goto_2
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    if-ne v10, v6, :cond_5

    if-ne v9, v6, :cond_5

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzf:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzg:I

    .line 8
    invoke-direct {v0, v8, v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzcj;->zzg([SIII)I

    move-result v8

    goto :goto_3

    .line 3
    :cond_5
    invoke-direct {v0, v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzcj;->zzi([SII)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzi:[S

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzf:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzg:I

    div-int/2addr v12, v9

    div-int/2addr v11, v9

    .line 4
    invoke-direct {v0, v10, v5, v11, v12}, Lcom/google/android/gms/internal/ads/zzcj;->zzg([SIII)I

    move-result v10

    if-eq v9, v6, :cond_9

    mul-int v10, v10, v9

    mul-int/lit8 v9, v9, 0x4

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzf:I

    sub-int v12, v10, v9

    if-lt v12, v11, :cond_6

    move v11, v12

    :cond_6
    add-int/2addr v10, v9

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzg:I

    if-le v10, v9, :cond_7

    move v10, v9

    :cond_7
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    if-ne v9, v6, :cond_8

    .line 5
    invoke-direct {v0, v8, v7, v11, v10}, Lcom/google/android/gms/internal/ads/zzcj;->zzg([SIII)I

    move-result v8

    goto :goto_3

    .line 6
    :cond_8
    invoke-direct {v0, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzcj;->zzi([SII)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzi:[S

    .line 7
    invoke-direct {v0, v8, v5, v11, v10}, Lcom/google/android/gms/internal/ads/zzcj;->zzg([SIII)I

    move-result v8

    goto :goto_3

    :cond_9
    move v8, v10

    .line 8
    :goto_3
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzu:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzv:I

    if-eqz v9, :cond_d

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzs:I

    if-nez v11, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v12, v9, 0x3

    if-le v10, v12, :cond_b

    goto :goto_4

    :cond_b
    add-int v10, v9, v9

    .line 14
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzt:I

    mul-int/lit8 v12, v12, 0x3

    if-gt v10, v12, :cond_c

    goto :goto_4

    :cond_c
    move v15, v11

    goto :goto_5

    :cond_d
    :goto_4
    move v15, v8

    :goto_5
    add-int v16, v7, v15

    .line 8
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzt:I

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzs:I

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v1, v10

    int-to-double v13, v15

    if-lez v12, :cond_f

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v17, v1, v10

    if-ltz v17, :cond_e

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    div-double/2addr v13, v8

    add-double/2addr v13, v10

    .line 9
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    int-to-double v10, v9

    sub-double/2addr v13, v10

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    move v5, v9

    goto :goto_6

    :cond_e
    sub-double/2addr v10, v1

    .line 12
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    mul-double v13, v13, v10

    div-double/2addr v13, v8

    add-double/2addr v13, v5

    .line 10
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    int-to-double v5, v6

    sub-double/2addr v13, v5

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    move v5, v15

    .line 9
    :goto_6
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    .line 11
    invoke-direct {v0, v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    move v8, v5

    move-object v6, v12

    move v13, v7

    move-object v14, v6

    move v6, v15

    move/from16 v15, v16

    .line 12
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzcj;->zzj(II[SI[SI[SI)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int/2addr v8, v5

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int v15, v6, v5

    add-int/2addr v7, v15

    goto :goto_8

    :cond_f
    move v6, v15

    .line 10
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    sub-double/2addr v10, v1

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, v1, v18

    if-gez v12, :cond_10

    mul-double v13, v13, v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    div-double/2addr v13, v10

    add-double/2addr v13, v8

    .line 13
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v15, v8

    int-to-double v8, v15

    sub-double/2addr v13, v8

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    move/from16 v18, v15

    goto :goto_7

    :cond_10
    add-double v18, v1, v1

    add-double v18, v18, v8

    .line 17
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    mul-double v13, v13, v18

    div-double/2addr v13, v10

    add-double/2addr v13, v8

    .line 14
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    int-to-double v8, v9

    sub-double/2addr v13, v8

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    move/from16 v18, v6

    .line 13
    :goto_7
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int v15, v6, v18

    .line 15
    invoke-direct {v0, v8, v9, v15}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v10, v7, v9

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    mul-int v11, v11, v9

    mul-int v9, v9, v6

    .line 16
    invoke-static {v5, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int v11, v8, v6

    move/from16 v8, v18

    move-object v12, v5

    move/from16 v13, v16

    move-object v14, v5

    move v5, v15

    move v15, v7

    .line 17
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzcj;->zzj(II[SI[SI[SI)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int v7, v7, v18

    .line 2
    :goto_8
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    add-int/2addr v5, v7

    if-le v5, v4, :cond_19

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    sub-int/2addr v1, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v7, v7, v4

    mul-int v4, v4, v1

    const/4 v5, 0x0

    .line 18
    invoke-static {v2, v7, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    .line 20
    :goto_9
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzd:F

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcj;->zze:F

    mul-float v2, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_18

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    if-ne v1, v3, :cond_11

    goto/16 :goto_f

    :cond_11
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zza:I

    int-to-float v4, v1

    div-float/2addr v4, v2

    int-to-long v1, v1

    float-to-long v4, v4

    :goto_a
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_12

    cmp-long v8, v1, v6

    if-eqz v8, :cond_12

    const-wide/16 v8, 0x2

    rem-long v10, v4, v8

    cmp-long v12, v10, v6

    if-nez v12, :cond_12

    rem-long v10, v1, v8

    cmp-long v12, v10, v6

    if-nez v12, :cond_12

    div-long/2addr v4, v8

    div-long/2addr v1, v8

    goto :goto_a

    :cond_12
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    sub-int/2addr v6, v3

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzn:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    invoke-direct {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzn:[S

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v10, v3, v9

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    mul-int v11, v11, v9

    mul-int v9, v9, v6

    .line 21
    invoke-static {v8, v10, v7, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    const/4 v3, 0x0

    :goto_b
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    add-int/lit8 v7, v6, -0x1

    if-ge v3, v7, :cond_17

    :goto_c
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    int-to-long v8, v6

    mul-long v10, v8, v4

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzq:I

    int-to-long v12, v12

    mul-long v14, v12, v1

    cmp-long v16, v10, v14

    if-lez v16, :cond_14

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    .line 22
    invoke-direct {v0, v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    const/4 v6, 0x0

    :goto_d
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    if-ge v6, v7, :cond_13

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    mul-int v9, v9, v7

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzn:[S

    mul-int v11, v3, v7

    add-int/2addr v11, v6

    .line 23
    aget-short v12, v10, v11

    add-int/2addr v11, v7

    .line 24
    aget-short v7, v10, v11

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzq:I

    int-to-long v10, v10

    mul-long v10, v10, v1

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzp:I

    int-to-long v14, v13

    mul-long v14, v14, v4

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v18, v1

    int-to-long v1, v13

    mul-long v1, v1, v4

    int-to-long v12, v12

    move-wide/from16 v20, v4

    move v5, v3

    int-to-long v3, v7

    sub-long v14, v1, v14

    sub-long/2addr v1, v10

    sub-long v10, v14, v1

    mul-long v1, v1, v12

    mul-long v10, v10, v3

    add-long/2addr v1, v10

    .line 25
    div-long/2addr v1, v14

    long-to-int v2, v1

    add-int/2addr v9, v6

    int-to-short v1, v2

    .line 26
    aput-short v1, v8, v9

    add-int/lit8 v6, v6, 0x1

    move v3, v5

    move-wide/from16 v1, v18

    move-wide/from16 v4, v20

    goto :goto_d

    :cond_13
    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    move v5, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzq:I

    const/4 v10, 0x1

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzq:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    move-wide/from16 v1, v18

    move-wide/from16 v4, v20

    goto :goto_c

    :cond_14
    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    const/4 v10, 0x1

    move v5, v3

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzp:I

    cmp-long v1, v8, v18

    if-nez v1, :cond_16

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzp:I

    cmp-long v2, v12, v20

    if-nez v2, :cond_15

    const/16 v17, 0x1

    goto :goto_e

    :cond_15
    const/16 v17, 0x0

    .line 27
    :goto_e
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzq:I

    :cond_16
    add-int/lit8 v3, v5, 0x1

    move-wide/from16 v1, v18

    move-wide/from16 v4, v20

    goto/16 :goto_b

    :cond_17
    if-eqz v7, :cond_18

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzn:[S

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    sub-int/2addr v6, v7

    mul-int v3, v7, v2

    mul-int v6, v6, v2

    const/4 v5, 0x0

    .line 28
    invoke-static {v1, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    sub-int/2addr v1, v7

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    :cond_18
    :goto_f
    return-void

    :cond_19
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method private final zzl([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v0, v0, v1

    add-int/2addr v0, v0

    return v0
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v0, v0, v1

    add-int/2addr v0, v0

    return v0
.end method

.method public final zzc()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzt:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzv:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    return-void
.end method

.method public final zzd(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzl:[S

    mul-int p1, p1, v1

    .line 3
    invoke-static {v2, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zze()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    sub-int v2, v0, v1

    int-to-double v3, v1

    int-to-double v1, v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzc:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzd:F

    div-float/2addr v6, v7

    float-to-double v8, v6

    div-double/2addr v1, v8

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    add-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zze:F

    mul-float v3, v3, v7

    float-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v5, v1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzw:D

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    add-int/2addr v1, v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzh:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    add-int/2addr v3, v3

    mul-int v6, v3, v4

    if-ge v2, v6, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    mul-int v4, v4, v0

    add-int/2addr v4, v2

    .line 2
    aput-short v1, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcj;->zzk()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    if-le v0, v5, :cond_1

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzm:I

    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzr:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzo:I

    return-void
.end method

.method public final zzf(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    .line 2
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzl([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzj:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzb:I

    mul-int v3, v3, v4

    add-int/2addr v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcj;->zzk:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcj;->zzk()V

    return-void
.end method
