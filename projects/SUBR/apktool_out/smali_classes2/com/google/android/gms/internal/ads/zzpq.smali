.class final Lcom/google/android/gms/internal/ads/zzpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:Z

.field private zzE:J

.field private zzF:J

.field private zzG:Z

.field private zzH:J

.field private zzI:Lcom/google/android/gms/internal/ads/zzcx;

.field private final zza:Lcom/google/android/gms/internal/ads/zzpp;

.field private final zzb:[J

.field private zzc:Landroid/media/AudioTrack;

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzpo;

.field private zzf:I

.field private zzg:Z

.field private zzh:J

.field private zzi:F

.field private zzj:Z

.field private zzk:J

.field private zzl:J

.field private zzm:Ljava/lang/reflect/Method;

.field private zzn:J

.field private zzo:Z

.field private zzp:Z

.field private zzq:J

.field private zzr:J

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:I

.field private zzw:I

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzpp;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpp;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzm:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:[J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    return-void
.end method

.method private final zzl()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    const/4 v4, 0x2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v3, v2

    check-cast v3, Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzz:J

    return-wide v0

    .line 3
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzq(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzp(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzz:J

    add-long/2addr v4, v0

    .line 6
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzr:J

    sub-long v2, v0, v2

    const-wide/16 v7, 0x5

    cmp-long v9, v2, v7

    if-ltz v9, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v3, v2

    check-cast v3, Landroid/media/AudioTrack;

    .line 9
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v7, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzg:Z

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_5

    if-ne v3, v4, :cond_3

    cmp-long v2, v7, v9

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzs:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzu:J

    goto :goto_0

    :cond_3
    move v4, v3

    :cond_4
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzu:J

    add-long/2addr v7, v2

    move v3, v4

    .line 11
    :cond_5
    sget v2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x1d

    if-gt v2, v4, :cond_8

    cmp-long v2, v7, v9

    if-nez v2, :cond_6

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzs:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_7

    const/4 v2, 0x3

    if-ne v3, v2, :cond_7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzy:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_a

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzy:J

    goto :goto_1

    :cond_6
    move-wide v9, v7

    :cond_7
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzy:J

    move-wide v7, v9

    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzs:J

    cmp-long v4, v2, v7

    if-lez v4, :cond_9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzt:J

    :cond_9
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzs:J

    .line 9
    :cond_a
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzr:J

    :cond_b
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzs:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzH:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzt:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzm()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzl()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzn()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzk:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzw:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzv:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzF:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzj:Z

    return-void
.end method


# virtual methods
.method public final zza(Z)J
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzc()J

    move-result-wide v1

    div-long/2addr v1, v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzl:J

    sub-long v8, v1, v8

    const-wide/16 v10, 0x7530

    const/4 v15, 0x0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_2

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzm()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_0

    goto/16 :goto_3

    .line 28
    :cond_0
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:[J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    .line 4
    invoke-static {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzei;->zzr(JF)J

    move-result-wide v8

    sub-long/2addr v8, v1

    aput-wide v8, v10, v11

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzv:I

    add-int/2addr v8, v3

    const/16 v9, 0xa

    rem-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzv:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzw:I

    if-ge v8, v9, :cond_1

    add-int/2addr v8, v3

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzw:I

    :cond_1
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzl:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzk:J

    const/4 v8, 0x0

    :goto_0
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzw:I

    if-ge v8, v9, :cond_2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzk:J

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:[J

    int-to-long v13, v9

    .line 5
    aget-wide v16, v12, v8

    div-long v16, v16, v13

    add-long v10, v10, v16

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzk:J

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzg:Z

    if-nez v8, :cond_7

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzpq;->zze:Lcom/google/android/gms/internal/ads/zzpo;

    .line 36
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v8, v13

    check-cast v8, Lcom/google/android/gms/internal/ads/zzpo;

    .line 7
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzpo;->zzg(J)Z

    move-result v8

    const-wide/32 v17, 0x4c4b40

    if-nez v8, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpo;->zzb()J

    move-result-wide v11

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpo;->zza()J

    move-result-wide v9

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzm()J

    move-result-wide v19

    sub-long v21, v11, v1

    .line 10
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v21

    cmp-long v8, v21, v17

    if-lez v8, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpp;

    move-object/from16 v21, v13

    move-wide v13, v1

    const/4 v3, 0x0

    move-wide/from16 v15, v19

    .line 11
    invoke-interface/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/zzpp;->zzd(JJJJ)V

    .line 12
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzpo;->zzd()V

    goto :goto_1

    :cond_4
    move-object/from16 v21, v13

    const/4 v3, 0x0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    .line 13
    invoke-static {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v13

    sub-long v13, v13, v19

    .line 14
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v8, v13, v17

    if-lez v8, :cond_5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpp;

    move-wide v13, v1

    move-wide/from16 v15, v19

    .line 15
    invoke-interface/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/zzpp;->zzc(JJJJ)V

    .line 16
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzpo;->zzd()V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzpo;->zzc()V

    .line 7
    :goto_1
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzp:Z

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzm:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzq:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0x7a120

    cmp-long v13, v9, v11

    if-ltz v13, :cond_7

    :try_start_0
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v8, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget v8, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object v8, v3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    mul-long v8, v8, v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzh:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzn:J

    .line 19
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzn:J

    cmp-long v3, v8, v17

    if-lez v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpp;

    .line 20
    invoke-interface {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzpp;->zza(J)V

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzn:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 v3, 0x0

    .line 21
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzm:Ljava/lang/reflect/Method;

    .line 20
    :cond_6
    :goto_2
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzq:J

    .line 3
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    .line 22
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzc()J

    move-result-wide v1

    div-long/2addr v1, v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zze:Lcom/google/android/gms/internal/ads/zzpo;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpo;->zzf()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpo;->zza()J

    move-result-wide v4

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    .line 24
    invoke-static {v4, v5, v9}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v4

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpo;->zzb()J

    move-result-wide v9

    sub-long v9, v1, v9

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    .line 26
    invoke-static {v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzq(JF)J

    move-result-wide v9

    add-long/2addr v4, v9

    goto :goto_5

    .line 34
    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzw:I

    if-nez v3, :cond_9

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzm()J

    move-result-wide v9

    goto :goto_4

    .line 29
    :cond_9
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzk:J

    add-long/2addr v9, v1

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    .line 28
    invoke-static {v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzq(JF)J

    move-result-wide v9

    :goto_4
    if-nez p1, :cond_a

    .line 27
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzn:J

    sub-long/2addr v9, v11

    .line 29
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_5

    :cond_a
    move-wide v4, v9

    .line 26
    :goto_5
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzD:Z

    if-eq v3, v8, :cond_b

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzC:J

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzF:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzB:J

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzE:J

    :cond_b
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzF:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0xf4240

    cmp-long v3, v9, v11

    if-gez v3, :cond_c

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzE:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    .line 30
    invoke-static {v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzq(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    mul-long v9, v9, v6

    div-long/2addr v9, v11

    mul-long v4, v4, v9

    sub-long v9, v6, v9

    mul-long v9, v9, v13

    add-long/2addr v4, v9

    div-long/2addr v4, v6

    :cond_c
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzj:Z

    if-nez v3, :cond_d

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzB:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzj:Z

    sub-long v6, v4, v6

    .line 31
    sget v3, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v6

    .line 32
    invoke-static {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzr(JF)J

    move-result-wide v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    .line 33
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcx;->zza()J

    move-result-wide v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v6

    sub-long/2addr v9, v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpp;

    .line 34
    invoke-interface {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzpp;->zzb(J)V

    :cond_d
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzC:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzB:J

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzD:Z

    return-wide v4
.end method

.method public final zzb(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzA:J

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zze:Lcom/google/android/gms/internal/ads/zzpo;

    return-void
.end method

.method public final zzd(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpo;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zze:Lcom/google/android/gms/internal/ads/zzpo;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x1

    if-eq p3, p2, :cond_1

    const/4 p2, 0x6

    if-ne p3, p2, :cond_0

    const/4 p3, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzg:Z

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzei;->zzJ(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzp:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_2

    .line 5
    div-int/2addr p5, p4

    int-to-long p2, p5

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide p2

    goto :goto_1

    :cond_2
    move-wide p2, v0

    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzh:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzs:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzt:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzG:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzH:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzu:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzo:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzy:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzq:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzn:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzi:F

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    return-void
.end method

.method public final zzf()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zze:Lcom/google/android/gms/internal/ads/zzpo;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zze()V

    return-void
.end method

.method public final zzg(J)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpq;->zza(Z)J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzf:I

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzp(JI)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzg:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object p2, p1

    check-cast p2, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzl()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzh()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzI:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzy:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzj(J)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzc:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzg:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzo:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzl()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzo:Z

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpq;->zzg(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzo:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpp;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzd:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzh:J

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzpp;->zze(IJ)V

    :cond_3
    return v2
.end method

.method public final zzk()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzn()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzx:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zze:Lcom/google/android/gms/internal/ads/zzpo;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zze()V

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpq;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzz:J

    const/4 v0, 0x0

    return v0
.end method
