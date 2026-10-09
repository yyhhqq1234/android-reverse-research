.class public final Lcom/google/android/gms/internal/ads/zzfk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field public static final zza:[B

.field public static final zzb:[F

.field private static final zzc:Ljava/lang/Object;

.field private static zzd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zzb:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zzc:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zzd:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static zza([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    if-le v0, v2, :cond_4

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_4

    .line 3
    aget-byte v3, p0, p1

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_4
    :goto_1
    const/4 v3, 0x2

    if-le v0, v3, :cond_6

    .line 3
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_6

    .line 4
    aget-byte v4, p0, p1

    if-nez v4, :cond_6

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_6
    :goto_2
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_3
    if-ge p1, v4, :cond_a

    .line 5
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-nez v6, :cond_9

    add-int/lit8 v6, p1, -0x2

    .line 6
    aget-byte v7, p0, v6

    if-nez v7, :cond_8

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    if-eq v5, v2, :cond_7

    goto :goto_4

    .line 7
    :cond_7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    return v6

    :cond_8
    :goto_4
    move p1, v6

    :cond_9
    add-int/lit8 p1, p1, 0x3

    goto :goto_3

    :cond_a
    if-le v0, v3, :cond_c

    add-int/lit8 p1, p2, -0x3

    .line 8
    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    goto :goto_6

    :cond_c
    if-ne v0, v3, :cond_d

    .line 12
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    .line 9
    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :cond_d
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_b

    .line 10
    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    :goto_5
    const/4 p1, 0x1

    .line 8
    :goto_6
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_e

    add-int/lit8 p1, p2, -0x2

    .line 11
    aget-byte p1, p0, p1

    if-nez p1, :cond_f

    aget-byte p1, p0, v4

    if-nez p1, :cond_f

    goto :goto_7

    .line 13
    :cond_e
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_f

    .line 12
    aget-byte p1, p0, v4

    if-nez p1, :cond_f

    :goto_7
    const/4 p1, 0x1

    goto :goto_8

    :cond_f
    const/4 p1, 0x0

    .line 11
    :goto_8
    aput-boolean p1, p3, v2

    .line 13
    aget-byte p0, p0, v4

    if-nez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static zzb([BI)I
    .locals 8

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zzc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-lt v2, p1, :cond_2

    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfk;->zzd:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    .line 6
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    .line 7
    aput-byte v1, p0, v5

    add-int/lit8 v5, v7, 0x1

    .line 8
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int v1, p1, v5

    .line 9
    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    monitor-exit v0

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_4

    .line 1
    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_3

    aget-byte v4, p0, v5

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    move v2, p1

    :goto_3
    if-ge v2, p1, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zzd:[I

    .line 2
    array-length v5, v4

    if-gt v5, v3, :cond_5

    add-int/2addr v5, v5

    .line 3
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zzd:[I

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zzd:[I

    add-int/lit8 v5, v3, 0x1

    .line 4
    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    .line 11
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzc([BIILcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzfe;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfl;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzl(Lcom/google/android/gms/internal/ads/zzfl;)Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v6

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfl;

    const/4 v5, 0x2

    add-int/2addr v1, v5

    .line 3
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    if-ne v2, v7, :cond_0

    const/4 v2, 0x7

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v10, -0x1

    if-eqz v3, :cond_1

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 6
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfxn;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 7
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v12

    add-int/2addr v12, v10

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 8
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzex;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzex;->zza:I

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    if-nez v7, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 10
    invoke-static {v4, v8, v2, v12}, Lcom/google/android/gms/internal/ads/zzfk;->zzm(Lcom/google/android/gms/internal/ads/zzfl;ZILcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v12

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 35
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzfh;->zzb:Lcom/google/android/gms/internal/ads/zzfa;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzfa;->zzb:[I

    .line 11
    aget v14, v14, v11

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 12
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v13

    if-le v13, v14, :cond_3

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzfh;->zzb:Lcom/google/android/gms/internal/ads/zzfa;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 13
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzez;

    .line 14
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v13

    const/16 v14, 0x8

    if-eqz v7, :cond_7

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 16
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v15

    goto :goto_3

    :cond_4
    const/4 v15, -0x1

    :goto_3
    if-eqz v3, :cond_6

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfh;->zzc:Lcom/google/android/gms/internal/ads/zzfc;

    if-eqz v9, :cond_6

    if-ne v15, v10, :cond_5

    iget-object v15, v9, Lcom/google/android/gms/internal/ads/zzfc;->zzb:[I

    .line 17
    aget v15, v15, v11

    :cond_5
    if-eq v15, v10, :cond_6

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfc;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v9

    if-le v9, v15, :cond_6

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfh;->zzc:Lcom/google/android/gms/internal/ads/zzfc;

    .line 19
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfc;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzfb;

    .line 20
    iget v15, v9, Lcom/google/android/gms/internal/ads/zzfb;->zza:I

    .line 21
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzfb;->zzd:I

    .line 22
    iget v14, v9, Lcom/google/android/gms/internal/ads/zzfb;->zze:I

    .line 23
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzfb;->zzb:I

    .line 24
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzfb;->zzc:I

    move v0, v10

    move v8, v15

    move v10, v9

    move v9, v5

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    goto :goto_5

    .line 25
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v5

    if-ne v5, v1, :cond_8

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    const/4 v9, 0x3

    goto :goto_4

    :cond_8
    move v9, v5

    .line 27
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v10

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v14

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v15

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v0

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v8

    invoke-static {v10, v9, v15, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzk(IIII)I

    move-result v10

    invoke-static {v14, v9, v0, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzj(IIII)I

    move-result v0

    move v14, v0

    .line 34
    :cond_9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v0

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    move v9, v0

    move v8, v5

    move v0, v10

    move v10, v1

    .line 36
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    if-nez v7, :cond_b

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v5

    const/4 v15, 0x1

    if-eq v15, v5, :cond_a

    move v5, v2

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    const/4 v15, -0x1

    :goto_7
    if-gt v5, v2, :cond_c

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move/from16 v20, v2

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    goto :goto_7

    :cond_b
    const/4 v15, -0x1

    .line 41
    :cond_c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    if-eqz v7, :cond_d

    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 55
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    goto :goto_d

    .line 49
    :cond_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    :goto_8
    const/4 v7, 0x4

    if-ge v5, v7, :cond_13

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v2, :cond_12

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v20

    if-nez v20, :cond_e

    .line 51
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move/from16 v20, v0

    move/from16 v22, v15

    const/4 v0, 0x3

    const/16 v18, 0x4

    goto :goto_b

    :cond_e
    add-int v20, v5, v5

    const/16 v18, 0x4

    add-int/lit8 v20, v20, 0x4

    move/from16 v22, v15

    const/4 v2, 0x1

    shl-int v15, v2, v20

    move/from16 v20, v0

    const/16 v0, 0x40

    .line 52
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v5, v2, :cond_f

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()I

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_10

    .line 54
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x3

    :goto_b
    if-ne v5, v0, :cond_11

    const/4 v0, 0x3

    goto :goto_c

    :cond_11
    const/4 v0, 0x1

    :goto_c
    add-int/2addr v7, v0

    move/from16 v0, v20

    move/from16 v15, v22

    const/4 v2, 0x6

    goto :goto_9

    :cond_12
    move/from16 v20, v0

    move/from16 v22, v15

    const/16 v18, 0x4

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x6

    goto :goto_8

    :cond_13
    :goto_d
    move/from16 v20, v0

    move/from16 v22, v15

    const/4 v0, 0x2

    .line 56
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x8

    .line 58
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 62
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v0

    const/4 v2, 0x0

    new-array v5, v2, [I

    new-array v7, v2, [I

    move/from16 v18, v13

    const/4 v2, -0x1

    const/4 v13, -0x1

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v0, :cond_26

    if-eqz v15, :cond_21

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v21

    if-eqz v21, :cond_21

    move/from16 v21, v0

    add-int v0, v2, v13

    .line 72
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v23

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v24

    const/16 v19, 0x1

    add-int/lit8 v24, v24, 0x1

    add-int v23, v23, v23

    rsub-int/lit8 v23, v23, 0x1

    move/from16 v25, v10

    add-int/lit8 v10, v0, 0x1

    move/from16 v26, v9

    .line 74
    new-array v9, v10, [Z

    move/from16 v27, v8

    const/4 v8, 0x0

    :goto_f
    if-gt v8, v0, :cond_16

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v28

    if-nez v28, :cond_15

    .line 76
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v28

    aput-boolean v28, v9, v8

    goto :goto_10

    .line 77
    :cond_15
    aput-boolean v19, v9, v8

    :goto_10
    add-int/lit8 v8, v8, 0x1

    const/16 v19, 0x1

    goto :goto_f

    :cond_16
    add-int/lit8 v8, v13, -0x1

    move/from16 v28, v8

    .line 78
    new-array v8, v10, [I

    .line 79
    new-array v10, v10, [I

    const/16 v29, 0x0

    :goto_11
    mul-int v30, v23, v24

    if-ltz v28, :cond_18

    .line 80
    aget v31, v7, v28

    add-int v31, v31, v30

    if-gez v31, :cond_17

    add-int v30, v2, v28

    .line 81
    aget-boolean v30, v9, v30

    if-eqz v30, :cond_17

    add-int/lit8 v30, v29, 0x1

    .line 82
    aput v31, v8, v29

    move/from16 v29, v30

    :cond_17
    add-int/lit8 v28, v28, -0x1

    goto :goto_11

    :cond_18
    if-gez v30, :cond_19

    .line 83
    aget-boolean v23, v9, v0

    if-eqz v23, :cond_19

    add-int/lit8 v23, v29, 0x1

    .line 84
    aput v30, v8, v29

    move/from16 v29, v23

    :cond_19
    move-object/from16 v24, v6

    move-object/from16 v23, v12

    move/from16 v12, v29

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v2, :cond_1b

    .line 85
    aget v28, v5, v6

    add-int v28, v28, v30

    if-gez v28, :cond_1a

    .line 86
    aget-boolean v29, v9, v6

    if-eqz v29, :cond_1a

    add-int/lit8 v29, v12, 0x1

    .line 87
    aput v28, v8, v12

    move/from16 v12, v29

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 88
    :cond_1b
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    add-int/lit8 v8, v2, -0x1

    const/16 v28, 0x0

    :goto_13
    if-ltz v8, :cond_1d

    .line 89
    aget v29, v5, v8

    add-int v29, v29, v30

    if-lez v29, :cond_1c

    .line 90
    aget-boolean v31, v9, v8

    if-eqz v31, :cond_1c

    add-int/lit8 v31, v28, 0x1

    .line 91
    aput v29, v10, v28

    move/from16 v28, v31

    :cond_1c
    add-int/lit8 v8, v8, -0x1

    goto :goto_13

    :cond_1d
    if-lez v30, :cond_1e

    .line 92
    aget-boolean v0, v9, v0

    if-eqz v0, :cond_1e

    add-int/lit8 v0, v28, 0x1

    .line 93
    aput v30, v10, v28

    move/from16 v28, v0

    :cond_1e
    move/from16 v0, v28

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v13, :cond_20

    .line 94
    aget v8, v7, v5

    add-int v8, v8, v30

    if-lez v8, :cond_1f

    add-int v28, v2, v5

    .line 95
    aget-boolean v28, v9, v28

    if-eqz v28, :cond_1f

    add-int/lit8 v28, v0, 0x1

    .line 96
    aput v8, v10, v0

    move/from16 v0, v28

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 97
    :cond_20
    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move v13, v0

    move-object v7, v2

    move-object v5, v6

    move v2, v12

    goto :goto_19

    :cond_21
    move/from16 v21, v0

    move-object/from16 v24, v6

    move/from16 v27, v8

    move/from16 v26, v9

    move/from16 v25, v10

    move-object/from16 v23, v12

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v0

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v2

    .line 66
    new-array v5, v0, [I

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v0, :cond_23

    if-lez v6, :cond_22

    add-int/lit8 v7, v6, -0x1

    .line 67
    aget v7, v5, v7

    goto :goto_16

    :cond_22
    const/4 v7, 0x0

    :goto_16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 69
    :cond_23
    new-array v6, v2, [I

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v2, :cond_25

    if-lez v7, :cond_24

    add-int/lit8 v8, v7, -0x1

    .line 70
    aget v8, v6, v8

    goto :goto_18

    :cond_24
    const/4 v8, 0x0

    :goto_18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_25
    move v13, v2

    move-object v7, v6

    move v2, v0

    :goto_19
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v21

    move-object/from16 v12, v23

    move-object/from16 v6, v24

    move/from16 v10, v25

    move/from16 v9, v26

    move/from16 v8, v27

    goto/16 :goto_e

    :cond_26
    move-object/from16 v24, v6

    move/from16 v27, v8

    move/from16 v26, v9

    move/from16 v25, v10

    move-object/from16 v23, v12

    .line 98
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v0

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v0, :cond_27

    add-int/lit8 v2, v1, 0x5

    .line 100
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_27
    const/4 v0, 0x2

    .line 101
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_32

    .line 103
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x8

    .line 104
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v5

    const/16 v1, 0xff

    if-ne v5, v1, :cond_28

    const/16 v1, 0x10

    .line 105
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v5

    .line 106
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v1

    if-eqz v5, :cond_2a

    if-eqz v1, :cond_2a

    int-to-float v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_1b

    :cond_28
    const/16 v1, 0x11

    if-ge v5, v1, :cond_29

    .line 125
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zzb:[F

    .line 107
    aget v2, v1, v5

    goto :goto_1b

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected aspect_ratio_idc value: "

    .line 108
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NalUnitUtil"

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2a
    :goto_1b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 110
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 111
    :cond_2b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x3

    .line 112
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_2c

    const/4 v5, 0x2

    goto :goto_1c

    :cond_2c
    const/4 v5, 0x1

    .line 114
    :goto_1c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x8

    .line 115
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v1

    .line 116
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    .line 117
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 118
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v10

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v0

    goto :goto_1e

    :cond_2d
    const/4 v0, -0x1

    goto :goto_1d

    :cond_2e
    if-eqz v3, :cond_2f

    .line 130
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfh;->zzd:Lcom/google/android/gms/internal/ads/zzfg;

    if-eqz v0, :cond_2f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfg;->zzb:[I

    .line 119
    aget v1, v1, v11

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfg;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v0

    if-le v0, v1, :cond_2f

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfh;->zzd:Lcom/google/android/gms/internal/ads/zzfg;

    .line 121
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfg;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzff;

    .line 123
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzff;->zza:I

    .line 124
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzff;->zzb:I

    .line 125
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzff;->zzc:I

    move v5, v1

    goto :goto_1e

    :cond_2f
    const/4 v0, -0x1

    const/4 v5, -0x1

    :goto_1d
    const/4 v10, -0x1

    .line 126
    :goto_1e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 127
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 128
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 129
    :cond_30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 130
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_31

    add-int/2addr v14, v14

    :cond_31
    move/from16 v17, v5

    move/from16 v16, v10

    move v13, v14

    move v14, v2

    goto :goto_1f

    :cond_32
    move v13, v14

    const/4 v0, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, -0x1

    const/16 v17, -0x1

    :goto_1f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfe;

    move-object v5, v1

    move-object/from16 v6, v24

    move-object/from16 v7, v23

    move/from16 v8, v27

    move/from16 v9, v26

    move/from16 v10, v25

    move/from16 v11, v18

    move/from16 v12, v20

    move/from16 v15, v22

    move/from16 v18, v0

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/zzfe;-><init>(Lcom/google/android/gms/internal/ads/zzey;Lcom/google/android/gms/internal/ads/zzez;IIIIIIFIIII)V

    return-object v1
.end method

.method public static zzd([BII)Lcom/google/android/gms/internal/ads/zzfh;
    .locals 36

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfl;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzl(Lcom/google/android/gms/internal/ads/zzfl;)Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v2

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v4

    const/4 v5, 0x6

    .line 6
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const/4 v8, 0x3

    .line 7
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v9

    const/16 v10, 0x11

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    const/4 v10, 0x0

    .line 9
    invoke-static {v0, v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzm(Lcom/google/android/gms/internal/ads/zzfl;ZILcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v11

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v12

    const/4 v13, 0x0

    if-eq v7, v12, :cond_0

    move v12, v9

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-gt v12, v9, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v12

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v14

    add-int/2addr v14, v7

    .line 16
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v15

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfa;

    new-array v5, v7, [I

    .line 17
    invoke-direct {v10, v15, v5}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Ljava/util/List;[I)V

    const/4 v5, 0x2

    if-lt v6, v5, :cond_2

    if-lt v14, v5, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v12, 0x1

    if-eqz v15, :cond_80

    if-eqz v3, :cond_80

    if-ge v4, v6, :cond_4

    goto/16 :goto_58

    :cond_4
    new-array v3, v5, [I

    aput v4, v3, v7

    aput v14, v3, v13

    .line 19
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 20
    new-array v15, v14, [I

    .line 21
    new-array v5, v14, [I

    aget-object v16, v3, v13

    .line 22
    aput v13, v16, v13

    aput v7, v15, v13

    aput v13, v5, v13

    const/4 v8, 0x1

    :goto_3
    if-ge v8, v14, :cond_7

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_4
    if-gt v7, v12, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 24
    aget-object v19, v3, v8

    add-int/lit8 v20, v18, 0x1

    aput v7, v19, v18

    .line 25
    aput v7, v5, v8

    move/from16 v18, v20

    .line 26
    :cond_5
    aput v18, v15, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_17

    const/16 v7, 0x40

    .line 28
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 31
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v7

    :goto_5
    if-ge v13, v7, :cond_17

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    if-eqz v13, :cond_a

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v19

    if-eqz v19, :cond_9

    goto :goto_6

    :cond_9
    const/16 v19, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v19, 0x1

    :goto_7
    if-eqz v19, :cond_e

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v19

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v20

    if-nez v19, :cond_b

    if-eqz v20, :cond_f

    .line 36
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v1, 0x13

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 38
    :cond_c
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    if-eqz v21, :cond_d

    const/4 v1, 0x4

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_d
    const/16 v1, 0xf

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    goto :goto_8

    :cond_e
    const/16 v19, 0x0

    const/16 v20, 0x0

    :cond_f
    const/16 v21, 0x0

    :goto_8
    const/4 v1, 0x0

    :goto_9
    if-gt v1, v9, :cond_16

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v22

    if-nez v22, :cond_11

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v22

    if-eqz v22, :cond_10

    goto :goto_a

    .line 44
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v22

    if-eqz v22, :cond_12

    move/from16 v22, v7

    const/4 v8, 0x0

    goto :goto_b

    .line 43
    :cond_11
    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 45
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v22

    move/from16 v8, v22

    move/from16 v22, v7

    :goto_b
    add-int v7, v19, v20

    move-object/from16 v23, v5

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v7, :cond_15

    move/from16 v24, v7

    const/4 v7, 0x0

    :goto_d
    if-gt v7, v8, :cond_14

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    if-eqz v21, :cond_13

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 50
    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_14
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v24

    goto :goto_c

    :cond_15
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v22

    move-object/from16 v5, v23

    const/16 v8, 0x8

    goto :goto_9

    :cond_16
    move-object/from16 v23, v5

    move/from16 v22, v7

    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x4

    const/16 v8, 0x8

    goto/16 :goto_5

    :cond_17
    move-object/from16 v23, v5

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v10

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto/16 :goto_59

    .line 53
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzd()V

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1, v9, v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzm(Lcom/google/android/gms/internal/ads/zzfl;ZILcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v5

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    const/16 v7, 0x10

    new-array v8, v7, [Z

    move-object/from16 v19, v5

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v7, :cond_1a

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v20

    aput-boolean v20, v8, v13

    if-eqz v20, :cond_19

    add-int/lit8 v5, v5, 0x1

    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_1a
    if-eqz v5, :cond_7f

    const/4 v13, 0x1

    aget-boolean v20, v8, v13

    if-nez v20, :cond_1b

    goto/16 :goto_57

    :cond_1b
    add-int/lit8 v13, v5, 0x1

    .line 58
    new-array v7, v5, [I

    move-object/from16 v22, v3

    move-object/from16 v21, v11

    const/4 v11, 0x0

    :goto_f
    sub-int v3, v5, v1

    if-ge v11, v3, :cond_1c

    const/4 v3, 0x3

    .line 59
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v24

    aput v24, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 60
    :cond_1c
    new-array v3, v13, [I

    if-eqz v1, :cond_1f

    const/4 v11, 0x1

    :goto_10
    if-ge v11, v5, :cond_1e

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v11, :cond_1d

    .line 61
    aget v24, v3, v11

    aget v25, v7, v13

    const/16 v17, 0x1

    add-int/lit8 v25, v25, 0x1

    add-int v24, v24, v25

    aput v24, v3, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1e
    const/4 v11, 0x6

    .line 62
    aput v11, v3, v5

    :cond_1f
    const/4 v11, 0x2

    new-array v13, v11, [I

    const/4 v11, 0x1

    aput v5, v13, v11

    const/4 v11, 0x0

    aput v6, v13, v11

    .line 63
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    new-array v13, v6, [I

    const/16 v18, 0x0

    aput v18, v13, v18

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v24

    move/from16 v26, v9

    move-object/from16 v25, v15

    const/4 v15, 0x1

    :goto_12
    if-ge v15, v6, :cond_24

    if-eqz v24, :cond_20

    const/4 v9, 0x6

    .line 65
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v28

    aput v28, v13, v15

    goto :goto_13

    :cond_20
    const/4 v9, 0x6

    .line 66
    aput v15, v13, v15

    :goto_13
    if-nez v1, :cond_22

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v5, :cond_21

    .line 68
    aget-object v27, v11, v15

    aget v28, v7, v9

    move/from16 v29, v1

    const/16 v17, 0x1

    add-int/lit8 v1, v28, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v1

    aput v1, v27, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v29

    goto :goto_14

    :cond_21
    move/from16 v29, v1

    goto :goto_16

    :cond_22
    move/from16 v29, v1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v5, :cond_23

    .line 67
    aget-object v9, v11, v15

    aget v28, v13, v15

    add-int/lit8 v30, v1, 0x1

    aget v31, v3, v30

    const/16 v17, 0x1

    shl-int v31, v17, v31

    const/16 v27, -0x1

    add-int/lit8 v31, v31, -0x1

    and-int v28, v28, v31

    aget v31, v3, v1

    shr-int v28, v28, v31

    aput v28, v9, v1

    move/from16 v1, v30

    goto :goto_15

    :cond_23
    :goto_16
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v29

    goto :goto_12

    .line 66
    :cond_24
    new-array v1, v4, [I

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v6, :cond_2b

    .line 69
    aget v7, v13, v5

    const/4 v9, -0x1

    aput v9, v1, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_18
    const/16 v15, 0x10

    if-ge v7, v15, :cond_27

    .line 70
    aget-boolean v15, v8, v7

    if-eqz v15, :cond_26

    const/4 v15, 0x1

    if-ne v7, v15, :cond_25

    .line 71
    aget v7, v13, v5

    aget-object v17, v11, v5

    aget v17, v17, v9

    aput v17, v1, v7

    const/16 v17, 0x1

    goto :goto_19

    :cond_25
    move/from16 v17, v7

    :goto_19
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v17

    goto :goto_1a

    :cond_26
    const/4 v15, 0x1

    :goto_1a
    add-int/2addr v7, v15

    goto :goto_18

    :cond_27
    if-lez v5, :cond_2a

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v5, :cond_29

    .line 72
    aget v9, v13, v5

    aget v9, v1, v9

    aget v15, v13, v7

    aget v15, v1, v15

    if-ne v9, v15, :cond_28

    goto :goto_1c

    :cond_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v3, v3, 0x1

    :cond_2a
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2b
    const/4 v5, 0x4

    .line 73
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v7

    const/4 v5, 0x2

    if-lt v3, v5, :cond_7e

    if-nez v7, :cond_2c

    goto/16 :goto_56

    .line 75
    :cond_2c
    new-array v5, v3, [I

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v3, :cond_2d

    .line 76
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_2d
    new-array v7, v4, [I

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v6, :cond_2e

    .line 77
    aget v9, v13, v8

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v8, v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_2e
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 78
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    const/4 v9, 0x0

    :goto_1f
    if-gt v9, v12, :cond_30

    .line 79
    aget v11, v1, v9

    move-object/from16 v24, v1

    const/4 v15, -0x1

    add-int/lit8 v1, v3, -0x1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2f

    .line 80
    aget v1, v5, v1

    goto :goto_20

    :cond_2f
    const/4 v1, -0x1

    :goto_20
    new-instance v11, Lcom/google/android/gms/internal/ads/zzex;

    .line 81
    aget v15, v7, v9

    invoke-direct {v11, v15, v1}, Lcom/google/android/gms/internal/ads/zzex;-><init>(II)V

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v24

    goto :goto_1f

    .line 82
    :cond_30
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v3

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzex;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v10

    .line 214
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto/16 :goto_59

    :cond_31
    const/4 v1, 0x1

    :goto_21
    if-gt v1, v12, :cond_33

    .line 84
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzex;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_32

    goto :goto_22

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_33
    const/4 v7, -0x1

    const/4 v1, -0x1

    :goto_22
    if-ne v1, v7, :cond_34

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v10

    .line 85
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto/16 :goto_59

    :cond_34
    const/4 v5, 0x2

    new-array v7, v5, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v9, 0x0

    aput v6, v7, v9

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    new-array v11, v5, [I

    aput v6, v11, v8

    aput v6, v11, v9

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    const/4 v8, 0x1

    :goto_23
    if-ge v8, v6, :cond_36

    const/4 v9, 0x0

    :goto_24
    if-ge v9, v8, :cond_35

    .line 86
    aget-object v11, v7, v8

    aget-object v12, v5, v8

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v15

    aput-boolean v15, v12, v9

    aput-boolean v15, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_35
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_36
    const/4 v8, 0x1

    :goto_25
    if-ge v8, v6, :cond_3a

    add-int/lit8 v9, v6, -0x1

    const/4 v11, 0x0

    :goto_26
    if-ge v11, v9, :cond_39

    const/4 v12, 0x0

    :goto_27
    if-ge v12, v8, :cond_38

    .line 88
    aget-object v15, v5, v8

    aget-boolean v24, v15, v12

    if-eqz v24, :cond_37

    aget-object v24, v5, v12

    aget-boolean v24, v24, v11

    if-eqz v24, :cond_37

    const/16 v17, 0x1

    .line 89
    aput-boolean v17, v15, v11

    goto :goto_28

    :cond_37
    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    :cond_38
    :goto_28
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_3a
    new-array v8, v4, [I

    const/4 v9, 0x0

    :goto_29
    if-ge v9, v6, :cond_3c

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2a
    if-ge v11, v9, :cond_3b

    .line 90
    aget-object v15, v7, v9

    aget-boolean v15, v15, v11

    add-int/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    .line 91
    :cond_3b
    aget v11, v13, v9

    aput v12, v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_3c
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2b
    if-ge v9, v6, :cond_3e

    .line 92
    aget v12, v13, v9

    aget v12, v8, v12

    if-nez v12, :cond_3d

    add-int/lit8 v11, v11, 0x1

    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_3e
    const/4 v9, 0x1

    if-le v11, v9, :cond_3f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v10

    .line 93
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto/16 :goto_59

    :cond_3f
    new-array v9, v6, [I

    new-array v11, v14, [I

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v12

    if-eqz v12, :cond_41

    const/4 v12, 0x0

    :goto_2c
    if-ge v12, v6, :cond_40

    const/4 v15, 0x3

    .line 95
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v24

    aput v24, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    :cond_40
    move/from16 v12, v26

    goto :goto_2d

    :cond_41
    move/from16 v12, v26

    const/4 v15, 0x0

    .line 96
    invoke-static {v9, v15, v6, v12}, Ljava/util/Arrays;->fill([IIII)V

    :goto_2d
    const/4 v15, 0x0

    :goto_2e
    if-ge v15, v14, :cond_43

    move-object/from16 p1, v5

    move-object/from16 v26, v8

    move-object/from16 v24, v13

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 97
    :goto_2f
    aget v5, v25, v15

    if-ge v13, v5, :cond_42

    .line 98
    aget-object v5, v22, v15

    aget v5, v5, v13

    .line 99
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzex;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzex;->zza:I

    aget v5, v9, v5

    .line 100
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_2f

    :cond_42
    add-int/lit8 v8, v8, 0x1

    .line 101
    aput v8, v11, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p1

    move-object/from16 v13, v24

    move-object/from16 v8, v26

    goto :goto_2e

    :cond_43
    move-object/from16 p1, v5

    move-object/from16 v26, v8

    move-object/from16 v24, v13

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x0

    :goto_30
    add-int/lit8 v8, v6, -0x1

    if-ge v5, v8, :cond_46

    add-int/lit8 v8, v5, 0x1

    move v9, v8

    :goto_31
    if-ge v9, v6, :cond_45

    .line 103
    aget-object v13, v7, v9

    aget-boolean v13, v13, v5

    if-eqz v13, :cond_44

    const/4 v13, 0x3

    .line 104
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_44
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_45
    move v5, v8

    goto :goto_30

    .line 105
    :cond_46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 107
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    move-object/from16 v13, v21

    .line 108
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    if-le v5, v8, :cond_47

    move-object/from16 v8, v19

    .line 109
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    move-object v13, v8

    const/4 v8, 0x2

    :goto_32
    if-ge v8, v5, :cond_47

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v15

    .line 111
    invoke-static {v0, v15, v12, v13}, Lcom/google/android/gms/internal/ads/zzfk;->zzm(Lcom/google/android/gms/internal/ads/zzfl;ZILcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v13

    .line 112
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 113
    :cond_47
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v8

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v9

    add-int/2addr v9, v14

    if-le v9, v14, :cond_48

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v10

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto/16 :goto_59

    :cond_48
    const/4 v12, 0x2

    .line 116
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v13

    new-array v15, v12, [I

    const/4 v12, 0x1

    aput v4, v15, v12

    const/4 v12, 0x0

    aput v9, v15, v12

    .line 117
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    .line 118
    new-array v15, v9, [I

    move-object/from16 v19, v8

    .line 119
    new-array v8, v9, [I

    move-object/from16 v21, v7

    const/4 v7, 0x0

    :goto_33
    if-ge v7, v14, :cond_4d

    move/from16 v28, v14

    const/4 v14, 0x0

    .line 120
    aput v14, v15, v7

    .line 121
    aget v14, v23, v7

    aput v14, v8, v7

    if-nez v13, :cond_49

    .line 122
    aget-object v14, v12, v7

    move-object/from16 v29, v11

    aget v11, v25, v7

    move/from16 v30, v6

    move-object/from16 v31, v10

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static {v14, v6, v11, v10}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 123
    aget v6, v25, v7

    aput v6, v15, v7

    const/4 v6, 0x1

    :goto_34
    const/4 v10, 0x0

    goto :goto_37

    :cond_49
    move/from16 v30, v6

    move-object/from16 v31, v10

    move-object/from16 v29, v11

    const/4 v10, 0x1

    if-ne v13, v10, :cond_4c

    const/4 v6, 0x0

    .line 124
    :goto_35
    aget v10, v25, v7

    if-ge v6, v10, :cond_4b

    .line 125
    aget-object v10, v12, v7

    aget-object v11, v22, v7

    aget v11, v11, v6

    if-ne v11, v14, :cond_4a

    const/4 v11, 0x1

    goto :goto_36

    :cond_4a
    const/4 v11, 0x0

    :goto_36
    aput-boolean v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_4b
    const/4 v6, 0x1

    .line 126
    aput v6, v15, v7

    goto :goto_34

    :cond_4c
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 127
    aget-object v11, v12, v10

    aput-boolean v6, v11, v10

    .line 128
    aput v6, v15, v10

    :goto_37
    add-int/lit8 v7, v7, 0x1

    move/from16 v14, v28

    move-object/from16 v11, v29

    move/from16 v6, v30

    move-object/from16 v10, v31

    goto :goto_33

    :cond_4d
    move/from16 v30, v6

    move-object/from16 v31, v10

    move-object/from16 v29, v11

    move/from16 v28, v14

    const/4 v6, 0x1

    const/4 v10, 0x0

    new-array v7, v4, [I

    const/4 v11, 0x2

    new-array v14, v11, [I

    aput v4, v14, v6

    aput v9, v14, v10

    .line 129
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    const/4 v6, 0x0

    const/4 v10, 0x1

    :goto_38
    if-ge v10, v9, :cond_5a

    if-ne v13, v11, :cond_4f

    const/4 v11, 0x0

    .line 130
    :goto_39
    aget v14, v25, v10

    if-ge v11, v14, :cond_4f

    .line 131
    aget-object v14, v12, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v23

    aput-boolean v23, v14, v11

    .line 132
    aget v14, v15, v10

    aget-object v23, v12, v10

    aget-boolean v23, v23, v11

    add-int v14, v14, v23

    aput v14, v15, v10

    if-eqz v23, :cond_4e

    .line 134
    aget-object v14, v22, v10

    aget v14, v14, v11

    aput v14, v8, v10

    :cond_4e
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :cond_4f
    if-nez v6, :cond_52

    .line 135
    aget-object v6, v22, v10

    const/4 v11, 0x0

    aget v6, v6, v11

    if-nez v6, :cond_51

    aget-object v6, v12, v10

    aget-boolean v6, v6, v11

    if-eqz v6, :cond_51

    const/4 v6, 0x0

    const/4 v14, 0x1

    .line 136
    :goto_3a
    aget v11, v25, v10

    if-ge v14, v11, :cond_52

    .line 137
    aget-object v11, v22, v10

    aget v11, v11, v14

    if-ne v11, v1, :cond_50

    aget-object v11, v12, v10

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_50

    move v6, v10

    :cond_50
    add-int/lit8 v14, v14, 0x1

    goto :goto_3a

    :cond_51
    const/4 v6, 0x0

    :cond_52
    const/4 v11, 0x0

    .line 138
    :goto_3b
    aget v14, v25, v10

    if-ge v11, v14, :cond_58

    const/4 v14, 0x1

    if-le v5, v14, :cond_56

    .line 139
    aget-object v14, v4, v10

    aget-object v23, v12, v10

    aget-boolean v23, v23, v11

    aput-boolean v23, v14, v11

    move-object/from16 v23, v12

    move v14, v13

    int-to-double v12, v5

    move/from16 v32, v1

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 140
    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/ads/zzgag;->zza(DLjava/math/RoundingMode;)I

    move-result v1

    .line 141
    aget-object v12, v4, v10

    aget-boolean v12, v12, v11

    if-nez v12, :cond_54

    .line 142
    aget-object v12, v22, v10

    aget v12, v12, v11

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzex;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzex;->zza:I

    const/4 v13, 0x0

    :goto_3c
    if-ge v13, v11, :cond_54

    .line 143
    aget-object v33, v22, v10

    move/from16 v34, v5

    aget v5, v33, v13

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzex;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzex;->zza:I

    .line 144
    aget-object v33, p1, v12

    aget-boolean v5, v33, v5

    if-eqz v5, :cond_53

    .line 145
    aget-object v5, v4, v10

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    goto :goto_3d

    :cond_53
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v34

    goto :goto_3c

    :cond_54
    move/from16 v34, v5

    .line 146
    :goto_3d
    aget-object v5, v4, v10

    aget-boolean v5, v5, v11

    if-eqz v5, :cond_57

    if-lez v6, :cond_55

    if-ne v10, v6, :cond_55

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v1

    aput v1, v7, v11

    goto :goto_3e

    .line 147
    :cond_55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    goto :goto_3e

    :cond_56
    move/from16 v32, v1

    move/from16 v34, v5

    move-object/from16 v23, v12

    move v14, v13

    :cond_57
    :goto_3e
    add-int/lit8 v11, v11, 0x1

    move v13, v14

    move-object/from16 v12, v23

    move/from16 v1, v32

    move/from16 v5, v34

    goto :goto_3b

    :cond_58
    move/from16 v32, v1

    move/from16 v34, v5

    move-object/from16 v23, v12

    move v14, v13

    .line 149
    aget v1, v15, v10

    const/4 v5, 0x1

    if-ne v1, v5, :cond_59

    aget v1, v8, v10

    aget v1, v26, v1

    if-lez v1, :cond_59

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    :cond_59
    add-int/lit8 v10, v10, 0x1

    move v13, v14

    move-object/from16 v12, v23

    move/from16 v1, v32

    move/from16 v5, v34

    const/4 v11, 0x2

    goto/16 :goto_38

    :cond_5a
    if-nez v6, :cond_5b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v4, v31

    .line 213
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto/16 :goto_59

    .line 151
    :cond_5b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 152
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfxk;

    move-result-object v5

    move/from16 v6, v30

    new-array v8, v6, [I

    const/4 v10, 0x0

    :goto_3f
    if-ge v10, v1, :cond_5f

    const/16 v11, 0x10

    .line 153
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v12

    .line 154
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v13

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v14

    if-eqz v14, :cond_5d

    const/4 v14, 0x2

    .line 156
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v15

    const/4 v14, 0x3

    if-ne v15, v14, :cond_5c

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    :cond_5c
    const/4 v14, 0x4

    .line 158
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v20

    .line 159
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v22

    move/from16 v32, v20

    move/from16 v33, v22

    goto :goto_40

    :cond_5d
    const/4 v15, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 160
    :goto_40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v14

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v11

    move-object/from16 p1, v3

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v3

    move-object/from16 v22, v2

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v2

    invoke-static {v12, v15, v14, v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzk(IIII)I

    move-result v12

    invoke-static {v13, v15, v3, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzj(IIII)I

    move-result v13

    goto :goto_41

    :cond_5e
    move-object/from16 v22, v2

    move-object/from16 p1, v3

    :goto_41
    move/from16 v34, v12

    move/from16 v35, v13

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfb;

    move-object/from16 v30, v2

    move/from16 v31, v15

    invoke-direct/range {v30 .. v35}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(IIIII)V

    .line 165
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, v22

    goto :goto_3f

    :cond_5f
    move-object/from16 v22, v2

    move-object/from16 p1, v3

    const/4 v2, 0x1

    if-le v1, v2, :cond_60

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_60

    int-to-double v1, v1

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 168
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgag;->zza(DLjava/math/RoundingMode;)I

    move-result v1

    const/4 v2, 0x1

    :goto_42
    if-ge v2, v6, :cond_61

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    aput v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_60
    const/4 v2, 0x1

    :goto_43
    if-ge v2, v6, :cond_61

    const/4 v3, -0x1

    add-int/lit8 v10, v1, -0x1

    .line 167
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 169
    :cond_61
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfc;

    .line 170
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v1

    invoke-direct {v10, v1, v8}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/util/List;[I)V

    const/4 v1, 0x2

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    const/4 v1, 0x1

    :goto_44
    if-ge v1, v6, :cond_63

    .line 172
    aget v2, v24, v1

    aget v2, v26, v2

    if-nez v2, :cond_62

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_63
    const/4 v1, 0x1

    :goto_45
    if-ge v1, v9, :cond_6a

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    const/4 v3, 0x0

    .line 175
    :goto_46
    aget v5, v29, v1

    if-ge v3, v5, :cond_69

    if-lez v3, :cond_64

    if-eqz v2, :cond_64

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v5

    goto :goto_47

    :cond_64
    if-nez v3, :cond_65

    const/4 v5, 0x1

    goto :goto_47

    :cond_65
    const/4 v5, 0x0

    :goto_47
    if-eqz v5, :cond_68

    const/4 v5, 0x0

    .line 177
    :goto_48
    aget v8, v25, v1

    if-ge v5, v8, :cond_67

    .line 178
    aget-object v8, v4, v1

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_66

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 180
    :cond_67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 182
    :cond_6a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    const/4 v13, 0x2

    add-int/2addr v1, v13

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 186
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    goto :goto_4b

    :cond_6b
    const/4 v2, 0x1

    :goto_49
    if-ge v2, v6, :cond_6e

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v2, :cond_6d

    .line 184
    aget-object v4, v21, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_6c

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 187
    :cond_6e
    :goto_4b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    const/4 v2, 0x1

    :goto_4c
    if-gt v2, v1, :cond_6f

    const/16 v3, 0x8

    .line 188
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 189
    :cond_6f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzd()V

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-nez v1, :cond_70

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 193
    :cond_70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 194
    :cond_71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-nez v1, :cond_72

    if-eqz v2, :cond_78

    :cond_72
    move/from16 v14, v28

    const/4 v3, 0x0

    :goto_4d
    if-ge v3, v14, :cond_78

    const/4 v4, 0x0

    .line 196
    :goto_4e
    aget v5, v29, v3

    if-ge v4, v5, :cond_77

    if-eqz v1, :cond_73

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v5

    goto :goto_4f

    :cond_73
    const/4 v5, 0x0

    :goto_4f
    if-eqz v2, :cond_74

    .line 198
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v8

    goto :goto_50

    :cond_74
    const/4 v8, 0x0

    :goto_50
    if-eqz v5, :cond_75

    const/16 v5, 0x20

    .line 199
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_75
    if-eqz v8, :cond_76

    const/16 v5, 0x12

    .line 200
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 201
    :cond_78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v2, 0x4

    .line 202
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    const/4 v2, 0x1

    add-int/2addr v3, v2

    goto :goto_51

    :cond_79
    const/4 v2, 0x1

    move v3, v6

    .line 203
    :goto_51
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfxn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfxk;

    move-result-object v4

    new-array v5, v6, [I

    const/4 v8, 0x0

    :goto_52
    if-ge v8, v3, :cond_7b

    const/4 v9, 0x3

    .line 204
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v11

    if-eq v2, v11, :cond_7a

    const/4 v2, 0x2

    goto :goto_53

    :cond_7a
    const/4 v2, 0x1

    :goto_53
    const/16 v11, 0x8

    .line 206
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v12

    .line 207
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v14

    .line 208
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzff;

    invoke-direct {v15, v12, v2, v14}, Lcom/google/android/gms/internal/ads/zzff;-><init>(III)V

    .line 209
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    goto :goto_52

    :cond_7b
    if-eqz v1, :cond_7c

    const/4 v1, 0x1

    if-le v3, v1, :cond_7c

    const/4 v13, 0x0

    :goto_54
    if-ge v13, v6, :cond_7c

    const/4 v1, 0x4

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    aput v2, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_54

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfg;

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(Ljava/util/List;[I)V

    move-object v6, v0

    goto :goto_55

    :cond_7d
    const/4 v6, 0x0

    :goto_55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfa;

    move-object/from16 v1, v19

    .line 212
    invoke-direct {v4, v1, v7}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Ljava/util/List;[I)V

    move-object v1, v0

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto :goto_59

    :cond_7e
    :goto_56
    move-object/from16 v22, v2

    move-object/from16 v31, v10

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, v22

    move-object/from16 v4, v31

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto :goto_59

    :cond_7f
    :goto_57
    move-object/from16 v22, v2

    move-object/from16 v31, v10

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, v22

    move-object/from16 v4, v31

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    goto :goto_59

    :cond_80
    :goto_58
    move-object/from16 v22, v2

    move-object/from16 v31, v10

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfh;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, v22

    move-object/from16 v4, v31

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzey;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfg;)V

    :goto_59
    return-object v0
.end method

.method public static zze([BII)Lcom/google/android/gms/internal/ads/zzfi;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfl;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfi;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfi;-><init>(IIZ)V

    return-object v0
.end method

.method public static zzf([BII)Lcom/google/android/gms/internal/ads/zzfj;
    .locals 32

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfl;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v6

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v7

    const/16 v3, 0x56

    const/16 v4, 0x2c

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v10, 0xf4

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v14, 0x1

    const/16 v15, 0x64

    if-eq v2, v15, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v13, 0x53

    if-eq v2, v13, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v13, 0x76

    if-eq v2, v13, :cond_1

    const/16 v13, 0x80

    if-eq v2, v13, :cond_1

    const/16 v13, 0x8a

    if-ne v2, v13, :cond_0

    const/16 v2, 0x8a

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_6

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v13

    if-ne v13, v11, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v16

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    move v1, v13

    const/16 v16, 0x0

    .line 8
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v17

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v18

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v19

    if-eqz v19, :cond_8

    if-eq v1, v11, :cond_3

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/16 v1, 0xc

    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v1, :cond_8

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v8, 0x6

    if-ge v10, v8, :cond_4

    const/16 v8, 0x10

    goto :goto_4

    :cond_4
    const/16 v8, 0x40

    :goto_4
    const/4 v9, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    :goto_5
    if-ge v9, v8, :cond_7

    if-eqz v20, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()I

    move-result v20

    add-int v15, v21, v20

    add-int/lit16 v15, v15, 0x100

    rem-int/lit16 v15, v15, 0x100

    move/from16 v20, v15

    :cond_5
    if-eqz v20, :cond_6

    move/from16 v21, v20

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x64

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v15, 0x64

    goto :goto_3

    .line 14
    :cond_8
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v8

    if-nez v8, :cond_9

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    move/from16 v24, v8

    move/from16 v25, v9

    :goto_7
    const/16 v26, 0x0

    goto :goto_9

    :cond_9
    if-ne v8, v14, :cond_b

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v8

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()I

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()I

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v9

    int-to-long v9, v9

    const/4 v15, 0x0

    :goto_8
    int-to-long v3, v15

    cmp-long v24, v3, v9

    if-gez v24, :cond_a

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_a
    move/from16 v26, v8

    const/16 v24, 0x1

    const/16 v25, 0x0

    goto :goto_9

    :cond_b
    move/from16 v24, v8

    const/16 v25, 0x0

    goto :goto_7

    .line 22
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v8

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v3

    add-int/2addr v3, v14

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v4

    add-int/2addr v4, v14

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v15

    rsub-int/lit8 v9, v15, 0x2

    if-nez v15, :cond_c

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    :cond_c
    mul-int v4, v4, v9

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    mul-int/lit8 v3, v3, 0x10

    mul-int/lit8 v4, v4, 0x10

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v10

    const/16 v27, 0x2

    if-eqz v10, :cond_10

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v10

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v28

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v29

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v30

    if-nez v13, :cond_d

    const/16 v31, 0x1

    goto :goto_c

    :cond_d
    if-ne v13, v11, :cond_e

    const/16 v31, 0x1

    goto :goto_a

    :cond_e
    const/16 v31, 0x2

    :goto_a
    if-ne v13, v14, :cond_f

    const/4 v13, 0x2

    goto :goto_b

    :cond_f
    const/4 v13, 0x1

    :goto_b
    mul-int v9, v9, v13

    :goto_c
    add-int v10, v10, v28

    mul-int v10, v10, v31

    sub-int/2addr v3, v10

    add-int v29, v29, v30

    mul-int v29, v29, v9

    sub-int v4, v4, v29

    :cond_10
    move v9, v3

    move v10, v4

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_11

    const/16 v3, 0x56

    if-eq v2, v3, :cond_11

    const/16 v3, 0x64

    if-eq v2, v3, :cond_11

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_11

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_11

    const/16 v3, 0xf4

    if-ne v2, v3, :cond_12

    const/16 v2, 0xf4

    :cond_11
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_12

    move v4, v2

    const/4 v13, 0x0

    goto :goto_d

    :cond_12
    move v4, v2

    const/16 v13, 0x10

    .line 34
    :goto_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    const/16 v19, -0x1

    if-eqz v2, :cond_21

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x8

    .line 36
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    const/16 v2, 0xff

    if-ne v3, v2, :cond_13

    .line 37
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    .line 38
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    int-to-float v2, v2

    int-to-float v3, v3

    div-float v3, v2, v3

    goto :goto_e

    :cond_13
    const/16 v2, 0x11

    if-ge v3, v2, :cond_14

    .line 69
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfk;->zzb:[F

    .line 39
    aget v3, v2, v3

    goto :goto_e

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Unexpected aspect_ratio_idc value: "

    .line 40
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    :goto_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 43
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 44
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eq v14, v2, :cond_17

    const/4 v14, 0x2

    .line 46
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x8

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v11

    .line 48
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v12

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 50
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v19

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v2

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v14

    goto :goto_f

    :cond_18
    move/from16 v19, v14

    :cond_19
    const/4 v2, -0x1

    const/4 v11, -0x1

    .line 51
    :goto_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 54
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v12

    if-eqz v12, :cond_1b

    const/16 v12, 0x41

    .line 55
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 56
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzn(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 58
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzn(Lcom/google/android/gms/internal/ads/zzfl;)V

    :cond_1d
    if-nez v12, :cond_1e

    if-eqz v14, :cond_1f

    .line 60
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 61
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v12

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move/from16 v20, v2

    move/from16 v22, v11

    move/from16 v23, v12

    goto :goto_10

    :cond_20
    move/from16 v20, v2

    move/from16 v22, v11

    move/from16 v23, v13

    :goto_10
    move/from16 v21, v19

    move v11, v3

    goto :goto_11

    :cond_21
    move/from16 v23, v13

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    :goto_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    move-object v3, v0

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v16

    move/from16 v16, v1

    move/from16 v17, v24

    move/from16 v18, v25

    move/from16 v19, v26

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v0
.end method

.method public static zzg(Ljava/util/List;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    array-length v4, v2

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    new-array v6, v5, [Z

    .line 4
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 5
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    const/4 v8, 0x0

    .line 6
    :goto_1
    array-length v9, v2

    if-ge v8, v9, :cond_1

    .line 7
    invoke-static {v2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzfk;->zza([BII[Z)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    :cond_0
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v6

    const/4 v7, 0x0

    .line 10
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 11
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfl;

    .line 12
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v8, v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzl(Lcom/google/android/gms/internal/ads/zzfl;)Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v9

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzey;->zza:I

    const/16 v11, 0x21

    if-ne v10, v11, :cond_3

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x4

    .line 14
    invoke-virtual {v8, p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result p0

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    const/4 v0, 0x1

    .line 17
    invoke-static {v8, v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzm(Lcom/google/android/gms/internal/ads/zzfl;ZILcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzez;->zza:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzez;->zzb:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzez;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzez;->zzd:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzez;->zze:[I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzez;->zzf:I

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcy;->zzd(IZII[II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v3
.end method

.method public static zzh([Z)V
    .locals 2

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static zzi(B)Z
    .locals 3

    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x9

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/16 v2, 0xe

    if-ne p0, v2, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private static zzj(IIII)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    add-int/2addr p2, p3

    mul-int v0, v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static zzk(IIII)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    add-int/2addr p2, p3

    mul-int v0, v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzfl;)Lcom/google/android/gms/internal/ads/zzey;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzey;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzey;-><init>(III)V

    return-object v2
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzfl;ZILcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzez;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x6

    new-array v4, v3, [I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    .line 1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v7

    const/4 v8, 0x5

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x20

    if-ge v9, v11, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    shl-int/2addr v11, v9

    or-int/2addr v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_2

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v11

    aput v11, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v12, v2

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 10
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzez;->zza:I

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzez;->zzb:Z

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzez;->zzc:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzez;->zzd:I

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzez;->zze:[I

    move v12, v3

    :goto_2
    move-object/from16 v16, v4

    move v13, v7

    move v14, v8

    move v15, v10

    goto :goto_3

    :cond_4
    move-object/from16 v16, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 6
    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v17

    const/4 v2, 0x0

    :goto_4
    if-ge v6, v1, :cond_7

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x58

    .line 8
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 9
    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    if-lez v1, :cond_8

    sub-int/2addr v5, v1

    add-int/2addr v5, v5

    .line 10
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzez;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzez;-><init>(IZII[II)V

    return-object v0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzfl;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zze()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    return-void
.end method
