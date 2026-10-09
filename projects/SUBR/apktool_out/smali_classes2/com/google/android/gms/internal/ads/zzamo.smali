.class public final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamj;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzaoa;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzamm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzanb;

.field private zzg:Lcom/google/android/gms/internal/ads/zzamn;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Lcom/google/android/gms/internal/ads/zzaoa;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Lcom/google/android/gms/internal/ads/zzaoa;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamm;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Lcom/google/android/gms/internal/ads/zzamm;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0xb2

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    goto :goto_0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdy;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Lcom/google/android/gms/internal/ads/zzadt;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zza([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Lcom/google/android/gms/internal/ads/zzamm;

    .line 72
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamm;->zza([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    .line 73
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamn;->zza([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 5
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:Z

    if-nez v9, :cond_e

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Lcom/google/android/gms/internal/ads/zzamm;

    .line 6
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzamm;->zza([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Lcom/google/android/gms/internal/ads/zzamm;

    .line 7
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzamm;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Lcom/google/android/gms/internal/ads/zzadt;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Lcom/google/android/gms/internal/ads/zzamm;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzamm;->zzb:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Ljava/lang/String;

    .line 75
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzamm;->zzc:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzamm;->zza:I

    .line 9
    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzdx;

    .line 10
    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzdx;-><init>([BI)V

    .line 11
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzdx;->zzo(I)V

    const/4 v10, 0x4

    .line 12
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzo(I)V

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    const/16 v13, 0x8

    .line 14
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_5

    .line 16
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 17
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 18
    :cond_5
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    const/16 v6, 0xf

    if-ne v10, v6, :cond_7

    const/16 v6, 0x8

    .line 19
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v10

    .line 20
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v6

    if-nez v6, :cond_6

    .line 21
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    int-to-float v10, v10

    int-to-float v6, v6

    div-float v16, v10, v6

    goto :goto_2

    :cond_7
    const/4 v6, 0x7

    if-ge v10, v6, :cond_8

    .line 46
    sget-object v6, Lcom/google/android/gms/internal/ads/zzamo;->zza:[F

    .line 22
    aget v16, v6, v10

    :goto_2
    move/from16 v6, v16

    goto :goto_4

    .line 23
    :cond_8
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 24
    :goto_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_9

    .line 25
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    const/4 v10, 0x1

    .line 26
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 27
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xf

    .line 28
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 29
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 30
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 31
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 32
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 33
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    const/4 v11, 0x3

    .line 34
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    const/16 v11, 0xb

    .line 35
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 36
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 37
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 38
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    :cond_9
    const/4 v10, 0x2

    .line 39
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "Unhandled video object layer shape"

    .line 40
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_a
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    const/16 v10, 0x10

    .line 42
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v10

    .line 43
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 44
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v10, :cond_b

    const-string v10, "Invalid vop_increment_time_resolution"

    .line 45
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_5
    if-lez v10, :cond_c

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 46
    :cond_c
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 47
    :cond_d
    :goto_6
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    const/16 v10, 0xd

    .line 48
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v11

    .line 49
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 50
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v10

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 52
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzz;

    .line 53
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 54
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const-string v14, "video/mp4v-es"

    .line 55
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 56
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzz;->zzaf(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 57
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzz;->zzK(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 58
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzW(F)Lcom/google/android/gms/internal/ads/zzz;

    .line 59
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 60
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    .line 61
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:Z

    :cond_e
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    .line 62
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzamn;->zza([BII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    if-eqz v6, :cond_12

    if-lez v8, :cond_f

    .line 63
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    const/4 v10, 0x0

    goto :goto_7

    :cond_f
    neg-int v10, v8

    :goto_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 64
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 65
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzb([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    .line 66
    sget v8, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    move-object v9, v6

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Lcom/google/android/gms/internal/ads/zzaoa;

    .line 67
    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaoa;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v1, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzaoa;->zza(JLcom/google/android/gms/internal/ads/zzdy;)V

    :cond_10
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    add-int/lit8 v6, v4, 0x2

    .line 68
    aget-byte v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 69
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    :cond_11
    const/16 v5, 0xb2

    :cond_12
    sub-int v1, v2, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:Z

    .line 70
    invoke-virtual {v4, v8, v9, v1, v6}, Lcom/google/android/gms/internal/ads/zzamn;->zzb(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    .line 71
    invoke-virtual {v1, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzamn;->zzc(IJ)V

    move-object/from16 v6, p1

    move v1, v7

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzanx;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Lcom/google/android/gms/internal/ads/zzadt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Lcom/google/android/gms/internal/ads/zzaoa;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzanx;)V

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:Z

    .line 2
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamn;->zzb(JIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamn;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Lcom/google/android/gms/internal/ads/zzamm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamm;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzamn;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzd()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    return-void
.end method
