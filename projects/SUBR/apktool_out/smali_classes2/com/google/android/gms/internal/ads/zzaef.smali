.class public final Lcom/google/android/gms/internal/ads/zzaef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaed;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzakd;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzacq;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaeg;

.field private zzh:J

.field private zzi:[Lcom/google/android/gms/internal/ads/zzaei;

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(ILcom/google/android/gms/internal/ads/zzakd;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzakd;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:Lcom/google/android/gms/internal/ads/zzakd;

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzc:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaed;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaed;-><init>(Lcom/google/android/gms/internal/ads/zzaee;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzn:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzl:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzh:J

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaef;)[Lcom/google/android/gms/internal/ads/zzaei;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    return-object p0
.end method

.method private final zzg(I)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zzf(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 15
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-ltz v10, :cond_1

    const-wide/32 v10, 0x40000

    add-long/2addr v10, v8

    cmp-long v12, v2, v10

    if-lez v12, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v8

    long-to-int v3, v2

    .line 1
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v8, p2

    .line 15
    iput-wide v2, v8, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    if-eqz v2, :cond_3

    return v4

    :cond_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    const/16 v3, 0xc

    const/4 v8, 0x0

    if-eqz v2, :cond_2c

    const v9, 0x6c726468

    const v10, 0x5453494c

    const/4 v11, 0x2

    if-eq v2, v4, :cond_29

    const/4 v12, 0x3

    if-eq v2, v11, :cond_1d

    const/4 v9, 0x6

    const v11, 0x69766f6d

    const/4 v13, 0x4

    const-wide/16 v16, 0x8

    const/16 v14, 0x10

    if-eq v2, v12, :cond_15

    const/4 v6, 0x5

    const/16 v7, 0x8

    if-eq v2, v13, :cond_13

    if-eq v2, v6, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzn:J

    cmp-long v2, v12, v14

    if-ltz v2, :cond_4

    const/4 v5, -0x1

    goto/16 :goto_4

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzk:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaei;->zzg(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzk:Lcom/google/android/gms/internal/ads/zzaei;

    return v5

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    and-long/2addr v8, v12

    cmp-long v2, v8, v12

    if-nez v2, :cond_7

    .line 2
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    .line 3
    invoke-interface {v1, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzh([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 4
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v2

    if-ne v2, v10, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 6
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v2

    if-ne v2, v11, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x8

    .line 8
    :goto_3
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    goto :goto_4

    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v3

    const v4, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v4, :cond_a

    int-to-long v2, v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v6

    add-long/2addr v6, v2

    add-long v6, v6, v16

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    goto :goto_4

    .line 11
    :cond_a
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    .line 13
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaef;->zzg(I)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v2

    if-nez v2, :cond_b

    int-to-long v2, v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    goto :goto_4

    .line 14
    :cond_b
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaei;->zzd(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzk:Lcom/google/android/gms/internal/ads/zzaei;

    :goto_4
    return v5

    .line 16
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdy;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzo:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzo:I

    .line 17
    invoke-interface {v1, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v1

    if-ge v1, v14, :cond_d

    const-wide/16 v18, 0x0

    goto :goto_6

    .line 29
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v1

    .line 18
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v3

    int-to-long v6, v3

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzm:J

    cmp-long v3, v6, v10

    if-lez v3, :cond_e

    const-wide/16 v18, 0x0

    goto :goto_5

    :cond_e
    add-long v10, v10, v16

    move-wide/from16 v18, v10

    .line 20
    :goto_5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 17
    :cond_f
    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v1

    if-lt v1, v14, :cond_11

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v1

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v3

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v6

    int-to-long v6, v6

    add-long v6, v6, v18

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaef;->zzg(I)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v1

    if-eqz v1, :cond_f

    and-int/2addr v3, v14

    if-ne v3, v14, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    .line 26
    :goto_7
    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzaei;->zzb(JZ)V

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    .line 27
    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_12

    aget-object v6, v1, v3

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaei;->zzc()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzp:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzh:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Lcom/google/android/gms/internal/ads/zzaef;J)V

    .line 29
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzm:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    return v5

    .line 20
    :cond_13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    .line 30
    invoke-interface {v1, v2, v5, v7}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 31
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v3

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v2

    const v4, 0x31786469

    if-ne v3, v4, :cond_14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzo:I

    goto :goto_9

    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    :goto_9
    return v5

    :cond_15
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzm:J

    cmp-long v8, v13, v6

    if-eqz v8, :cond_17

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v6

    cmp-long v8, v6, v13

    if-nez v8, :cond_16

    goto :goto_a

    .line 42
    :cond_16
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    return v5

    .line 33
    :cond_17
    :goto_a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v6

    .line 34
    invoke-interface {v1, v6, v5, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzh([BII)V

    .line 35
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 36
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 37
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzdy;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v6

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzaed;->zza:I

    const v8, 0x46464952

    if-ne v7, v8, :cond_18

    .line 39
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    return v5

    :cond_18
    if-ne v7, v10, :cond_1c

    if-eq v6, v11, :cond_19

    goto :goto_c

    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzm:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaed;->zzb:I

    int-to-long v10, v3

    add-long/2addr v6, v10

    add-long v6, v6, v16

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzn:J

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzp:Z

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzg:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaeg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    const/16 v2, 0x10

    and-int/2addr v3, v2

    if-eq v3, v2, :cond_1a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadl;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzh:J

    const-wide/16 v10, 0x0

    .line 41
    invoke-direct {v3, v6, v7, v10, v11}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(JJ)V

    .line 42
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzp:Z

    goto :goto_b

    :cond_1a
    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    return v5

    :cond_1b
    :goto_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    return v5

    .line 39
    :cond_1c
    :goto_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaed;->zzb:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    return v5

    .line 42
    :cond_1d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzl:I

    add-int/lit8 v2, v2, -0x4

    .line 44
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v6

    .line 45
    invoke-interface {v1, v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    .line 46
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzaej;->zzc(ILcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaej;->zza()I

    move-result v2

    if-ne v2, v9, :cond_28

    .line 48
    const-class v2, Lcom/google/android/gms/internal/ads/zzaeg;

    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaeg;

    if-eqz v2, :cond_27

    .line 50
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzg:Lcom/google/android/gms/internal/ads/zzaeg;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaeg;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaeg;->zza:I

    int-to-long v6, v3

    int-to-long v2, v2

    mul-long v6, v6, v2

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzh:J

    new-instance v2, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v6, v3, :cond_26

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 53
    check-cast v7, Lcom/google/android/gms/internal/ads/zzaeb;

    .line 54
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()I

    move-result v9

    const v10, 0x6c727473

    if-ne v9, v10, :cond_25

    .line 55
    check-cast v7, Lcom/google/android/gms/internal/ads/zzaej;

    add-int/lit8 v9, v14, 0x1

    const-class v10, Lcom/google/android/gms/internal/ads/zzaeh;

    .line 56
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzaeh;

    const-class v13, Lcom/google/android/gms/internal/ads/zzaek;

    .line 57
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzaek;

    const-string v15, "AviExtractor"

    if-nez v10, :cond_1e

    const-string v7, "Missing Stream Header"

    .line 58
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move/from16 p1, v6

    move-object v11, v8

    goto/16 :goto_10

    :cond_1e
    if-nez v13, :cond_1f

    const-string v7, "Missing Stream Format"

    .line 59
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1f
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzaeh;->zzd:I

    iget v8, v10, Lcom/google/android/gms/internal/ads/zzaeh;->zzb:I

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzaeh;->zzc:I

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzaek;->zza:Lcom/google/android/gms/internal/ads/zzab;

    move/from16 p1, v6

    int-to-long v5, v8

    const-wide/32 v16, 0xf4240

    mul-long v22, v5, v16

    int-to-long v5, v12

    .line 60
    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    int-to-long v11, v15

    move-wide/from16 v20, v11

    move-wide/from16 v24, v5

    .line 61
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v11

    .line 62
    invoke-virtual {v11, v14}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzaeh;->zze:I

    if-eqz v12, :cond_20

    .line 63
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzz;->zzR(I)Lcom/google/android/gms/internal/ads/zzz;

    :cond_20
    const-class v12, Lcom/google/android/gms/internal/ads/zzael;

    .line 64
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzael;

    if-eqz v7, :cond_21

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzael;->zza:Ljava/lang/String;

    .line 65
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    :cond_21
    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 66
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbb;->zzb(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_23

    const/4 v8, 0x2

    if-ne v7, v8, :cond_22

    const/4 v15, 0x2

    goto :goto_f

    :cond_22
    const/4 v11, 0x0

    goto :goto_10

    :cond_23
    move v15, v7

    :goto_f
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    .line 67
    invoke-interface {v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v7

    .line 68
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzaeh;->zzd:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaei;

    move-object v13, v11

    move-wide/from16 v16, v5

    move/from16 v18, v10

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(IIJILcom/google/android/gms/internal/ads/zzadt;)V

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzh:J

    .line 69
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzh:J

    :goto_10
    if-eqz v11, :cond_24

    .line 70
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    move v14, v9

    goto :goto_11

    :cond_25
    move/from16 p1, v6

    :goto_11
    add-int/lit8 v6, p1, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_d

    :cond_26
    new-array v1, v5, [Lcom/google/android/gms/internal/ads/zzaei;

    .line 71
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaei;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    .line 72
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzD()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    return v5

    :cond_27
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_28
    move-object v2, v8

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaej;->zza()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected header list type "

    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 14
    :cond_29
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    const/4 v4, 0x0

    .line 73
    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 74
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 75
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzdy;)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaed;->zza:I

    if-ne v3, v10, :cond_2b

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzaed;->zzc:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaed;->zzc:I

    if-ne v2, v9, :cond_2a

    .line 78
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaed;->zzb:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzl:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    :goto_12
    const/4 v1, 0x0

    return v1

    .line 77
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hdrl expected, found: "

    .line 78
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_2b
    const/4 v2, 0x0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "LIST expected, found: "

    .line 76
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_2c
    move-object v2, v8

    .line 79
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaef;->zzi(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 80
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    goto :goto_12

    :cond_2d
    const-string v1, "AVI Header List not found"

    .line 81
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacn;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacq;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:Lcom/google/android/gms/internal/ads/zzakd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakg;-><init>(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzakd;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    const-wide/16 p3, -0x1

    .line 1
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzj:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzk:Lcom/google/android/gms/internal/ads/zzaei;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    .line 2
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzaei;->zze(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzi:[Lcom/google/android/gms/internal/ads/zzaei;

    .line 3
    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    return-void

    :cond_2
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzaco;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzh([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzi()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method
