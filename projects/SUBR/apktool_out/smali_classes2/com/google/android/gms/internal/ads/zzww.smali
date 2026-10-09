.class public final synthetic Lcom/google/android/gms/internal/ads/zzww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzxh;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxh;Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzww;->zza:Lcom/google/android/gms/internal/ads/zzxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzww;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzww;->zzc:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbr;[I)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    sget v1, Lcom/google/android/gms/internal/ads/zzxt;->zzb:I

    .line 1
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzww;->zza:Lcom/google/android/gms/internal/ads/zzxh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzww;->zzc:[I

    aget v12, v1, p1

    .line 2
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    iget v2, v11, Lcom/google/android/gms/internal/ads/zzxh;->zzj:I

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzxh;->zzk:Z

    const v9, 0x7fffffff

    if-eq v1, v9, :cond_7

    if-ne v2, v9, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x0

    const v5, 0x7fffffff

    .line 3
    :goto_0
    iget v6, v10, Lcom/google/android/gms/internal/ads/zzbr;->zza:I

    if-ge v4, v6, :cond_6

    .line 4
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzbr;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    .line 5
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-lez v7, :cond_5

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-lez v8, :cond_5

    if-eqz v3, :cond_3

    if-gt v7, v8, :cond_1

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    const/4 v14, 0x1

    :goto_1
    if-gt v1, v2, :cond_2

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    const/4 v15, 0x1

    :goto_2
    if-eq v14, v15, :cond_3

    move v14, v1

    move v15, v2

    goto :goto_3

    :cond_3
    move v15, v1

    move v14, v2

    :goto_3
    mul-int v9, v7, v14

    mul-int v13, v8, v15

    if-lt v9, v13, :cond_4

    new-instance v8, Landroid/graphics/Point;

    .line 6
    sget v9, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    add-int/2addr v13, v7

    const/16 v17, -0x1

    add-int/lit8 v13, v13, -0x1

    div-int/2addr v13, v7

    invoke-direct {v8, v15, v13}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_4
    const/16 v17, -0x1

    .line 9
    new-instance v7, Landroid/graphics/Point;

    .line 7
    sget v13, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    div-int/2addr v9, v8

    invoke-direct {v7, v9, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object v8, v7

    .line 8
    :goto_4
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    mul-int v9, v9, v7

    .line 9
    iget v13, v8, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float v13, v13, v14

    float-to-int v13, v13

    if-lt v7, v13, :cond_5

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    iget v7, v8, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float v7, v7, v14

    float-to-int v7, v7

    if-lt v6, v7, :cond_5

    if-ge v9, v5, :cond_5

    move v5, v9

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const v9, 0x7fffffff

    goto :goto_0

    :cond_6
    move v13, v5

    goto :goto_6

    :cond_7
    :goto_5
    const v13, 0x7fffffff

    .line 10
    :goto_6
    new-instance v14, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 11
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    const/4 v15, 0x0

    .line 12
    :goto_7
    iget v1, v10, Lcom/google/android/gms/internal/ads/zzbr;->zza:I

    if-ge v15, v1, :cond_a

    .line 13
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzbr;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->zza()I

    move-result v1

    const v9, 0x7fffffff

    if-eq v13, v9, :cond_9

    const/4 v8, -0x1

    if-eq v1, v8, :cond_8

    if-gt v1, v13, :cond_8

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    :cond_9
    const/4 v8, -0x1

    :goto_8
    const/16 v16, 0x1

    :goto_9
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzww;->zzb:Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzxr;

    .line 14
    aget v17, p3, v15

    move-object v1, v6

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move-object v5, v11

    move-object v0, v6

    move/from16 v6, v17

    const/16 v17, -0x1

    move v8, v12

    const v18, 0x7fffffff

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(ILcom/google/android/gms/internal/ads/zzbr;ILcom/google/android/gms/internal/ads/zzxh;ILjava/lang/String;IZ)V

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    .line 15
    :cond_a
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    return-object v0
.end method
