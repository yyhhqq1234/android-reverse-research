.class public final Lcom/google/android/gms/internal/ads/zzadc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:F

.field public final zzj:I

.field public final zzk:Ljava/lang/String;

.field public final zzl:Lcom/google/android/gms/internal/ads/zzfh;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadc;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzd:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzf:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzh:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzi:F

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzj:I

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzl:Lcom/google/android/gms/internal/ads/zzfh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzadc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzadc;->zzc(Lcom/google/android/gms/internal/ads/zzdy;ZLcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdy;Lcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzc(Lcom/google/android/gms/internal/ads/zzdy;ZLcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzdy;ZLcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x15

    .line 2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    add-int/2addr v9, v13

    .line 8
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 10
    new-array v6, v9, [B

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v26, p2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, -0x1

    const/16 v25, 0x0

    :goto_3
    if-ge v11, v5, :cond_1b

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v13

    const/16 v14, 0x3f

    and-int/2addr v13, v14

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v8

    move-object/from16 v3, v26

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v8, :cond_1a

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v10

    move/from16 v27, v5

    .line 14
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    invoke-static {v5, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v2

    .line 15
    invoke-static {v5, v2, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    if-ne v13, v2, :cond_3

    if-nez v14, :cond_4

    add-int v2, v12, v10

    .line 43
    invoke-static {v6, v12, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzd([BII)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v3

    move/from16 v34, v8

    move/from16 v35, v13

    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_3
    move v2, v13

    :cond_4
    const/16 v5, 0x21

    const/16 v7, 0x8

    if-ne v2, v5, :cond_7

    if-nez v14, :cond_6

    add-int v2, v12, v10

    .line 41
    invoke-static {v6, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzc([BIILcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v2

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzfe;->zze:I

    move/from16 v16, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzb:I

    add-int/2addr v5, v7

    move/from16 v17, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    add-int/2addr v5, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzh:I

    move/from16 v18, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzi:I

    move/from16 v19, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzj:I

    move/from16 v20, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzf:F

    move/from16 v21, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzg:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfe;->zza:Lcom/google/android/gms/internal/ads/zzez;

    if-eqz v2, :cond_5

    move/from16 v23, v5

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzez;->zza:I

    move/from16 v24, v7

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzez;->zzb:Z

    move/from16 v34, v8

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzez;->zzc:I

    move/from16 v35, v13

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzez;->zzd:I

    move/from16 v26, v15

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzez;->zze:[I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzez;->zzf:I

    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v13

    move-object/from16 v32, v15

    move/from16 v33, v2

    .line 42
    invoke-static/range {v28 .. v33}, Lcom/google/android/gms/internal/ads/zzcy;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_5

    :cond_5
    move/from16 v23, v5

    move/from16 v24, v7

    move/from16 v34, v8

    move/from16 v35, v13

    move/from16 v26, v15

    :goto_5
    move/from16 v15, v16

    move/from16 v16, v26

    const/4 v7, 0x0

    move/from16 v46, v20

    move/from16 v20, v19

    move/from16 v19, v24

    move/from16 v24, v23

    move/from16 v23, v21

    move/from16 v21, v46

    goto/16 :goto_14

    :cond_6
    move/from16 v34, v8

    move/from16 v35, v13

    goto/16 :goto_13

    :cond_7
    move/from16 v34, v8

    move/from16 v35, v13

    const/16 v5, 0x27

    if-ne v2, v5, :cond_18

    if-nez v14, :cond_18

    add-int v2, v12, v10

    add-int/lit8 v5, v12, 0x2

    const/4 v8, -0x1

    add-int/2addr v2, v8

    .line 16
    :goto_6
    aget-byte v13, v6, v2

    if-nez v13, :cond_8

    if-le v2, v5, :cond_16

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_8
    if-eqz v13, :cond_16

    if-gt v2, v5, :cond_9

    goto/16 :goto_f

    .line 40
    :cond_9
    new-instance v13, Lcom/google/android/gms/internal/ads/zzfl;

    add-int/lit8 v2, v2, 0x1

    .line 17
    invoke-direct {v13, v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    :goto_7
    const/16 v2, 0x10

    .line 18
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzg(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 19
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    const/4 v5, 0x0

    :goto_8
    const/16 v8, 0xff

    if-ne v2, v8, :cond_a

    add-int/lit16 v5, v5, 0xff

    .line 20
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    goto :goto_8

    :cond_a
    add-int/2addr v5, v2

    .line 21
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    const/4 v7, 0x0

    :goto_9
    if-ne v2, v8, :cond_b

    add-int/lit16 v7, v7, 0xff

    const/16 v2, 0x8

    .line 22
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v26

    move/from16 v2, v26

    goto :goto_9

    :cond_b
    const/16 v8, 0x8

    add-int/2addr v7, v2

    if-eqz v7, :cond_16

    .line 23
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzfl;->zzg(I)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_f

    :cond_c
    const/16 v2, 0xb0

    if-ne v5, v2, :cond_15

    .line 24
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v37

    .line 25
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 26
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v5

    move/from16 v38, v5

    goto :goto_a

    :cond_d
    const/16 v38, 0x0

    .line 27
    :goto_a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v5

    const/4 v7, 0x0

    const/16 v40, -0x1

    const/16 v41, -0x1

    const/16 v42, -0x1

    const/16 v43, -0x1

    const/16 v44, -0x1

    const/16 v45, -0x1

    :goto_b
    if-gt v7, v5, :cond_14

    .line 28
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v40

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v41

    const/4 v8, 0x6

    move/from16 v26, v14

    .line 30
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v14

    const/16 v8, 0x3f

    if-ne v14, v8, :cond_e

    goto/16 :goto_10

    :cond_e
    if-nez v14, :cond_f

    add-int/lit8 v8, v37, -0x1e

    move/from16 v29, v15

    const/4 v15, 0x0

    .line 31
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_f
    move/from16 v29, v15

    const/4 v15, 0x0

    add-int v8, v14, v37

    add-int/lit8 v8, v8, -0x1f

    .line 32
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 33
    :goto_c
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v43

    if-eqz v2, :cond_12

    const/4 v8, 0x6

    .line 34
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v8

    const/16 v15, 0x3f

    if-ne v8, v15, :cond_10

    goto :goto_11

    :cond_10
    if-nez v8, :cond_11

    add-int/lit8 v15, v38, -0x1e

    move/from16 v28, v2

    const/4 v2, 0x0

    .line 35
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_d

    :cond_11
    move/from16 v28, v2

    const/4 v2, 0x0

    add-int v15, v8, v38

    add-int/lit8 v15, v15, -0x1f

    .line 36
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 37
    :goto_d
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v45

    move/from16 v44, v8

    goto :goto_e

    :cond_12
    move/from16 v28, v2

    .line 38
    :goto_e
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    .line 39
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_13
    add-int/lit8 v7, v7, 0x1

    move/from16 v42, v14

    move/from16 v14, v26

    move/from16 v2, v28

    move/from16 v15, v29

    goto :goto_b

    :cond_14
    move/from16 v26, v14

    move/from16 v29, v15

    .line 32
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    add-int/lit8 v39, v5, 0x1

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v45}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(IIIIIIIII)V

    goto :goto_12

    :cond_15
    const/16 v7, 0x8

    const/4 v8, -0x1

    goto/16 :goto_7

    :cond_16
    :goto_f
    move/from16 v26, v14

    :goto_10
    move/from16 v29, v15

    :goto_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_19

    if-eqz v3, :cond_19

    .line 16
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:I

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    const/4 v7, 0x0

    .line 40
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzex;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    if-ne v2, v5, :cond_17

    move/from16 v14, v26

    move/from16 v15, v29

    const/16 v22, 0x4

    goto :goto_14

    :cond_17
    const/4 v2, 0x5

    move/from16 v14, v26

    move/from16 v15, v29

    const/16 v22, 0x5

    goto :goto_14

    :cond_18
    :goto_13
    move/from16 v26, v14

    move/from16 v29, v15

    :cond_19
    const/4 v7, 0x0

    move/from16 v14, v26

    move/from16 v15, v29

    :goto_14
    add-int/2addr v12, v10

    .line 44
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/4 v2, 0x1

    add-int/2addr v14, v2

    move/from16 v5, v27

    move/from16 v8, v34

    move/from16 v13, v35

    const/4 v2, 0x4

    goto/16 :goto_4

    :cond_1a
    move/from16 v27, v5

    move/from16 v29, v15

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v26, v3

    const/4 v2, 0x4

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_1b
    if-nez v9, :cond_1c

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_1c
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_15
    move-object v13, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadc;

    const/4 v2, 0x1

    add-int/lit8 v14, v4, 0x1

    move-object v12, v0

    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Ljava/util/List;IIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfh;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1d

    const-string v1, "HEVC config"

    goto :goto_16

    :cond_1d
    const-string v1, "L-HEVC config"

    :goto_16
    const-string v2, "Error parsing"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    throw v0
.end method
