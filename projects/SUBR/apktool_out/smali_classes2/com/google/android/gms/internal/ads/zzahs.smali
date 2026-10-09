.class public final Lcom/google/android/gms/internal/ads/zzahs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzadf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzadb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzadd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzf:Lcom/google/android/gms/internal/ads/zzacq;

.field private zzg:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzh:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzay;

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzahu;

.field private zzq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadb;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadd;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzadd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaci;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaci;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zze:Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzadt;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzn:J

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzaco;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzm(Lcom/google/android/gms/internal/ads/zzaco;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 2
    new-instance v14, Lcom/google/android/gms/internal/ads/zzdy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    .line 3
    invoke-interface {v1, v2, v4, v9}, Lcom/google/android/gms/internal/ads/zzaco;->zzh([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadf;->zza:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadf;->zze:I

    if-eq v2, v8, :cond_3

    const/16 v11, 0x24

    goto :goto_1

    .line 7
    :cond_1
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadf;->zze:I

    if-eq v2, v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v2

    add-int/lit8 v9, v11, 0x4

    const v12, 0x496e666f

    const v13, 0x56425249

    const v15, 0x58696e67

    if-lt v2, v9, :cond_4

    .line 4
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    if-eq v2, v15, :cond_6

    if-ne v2, v12, :cond_4

    const v2, 0x496e666f

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v2

    const/16 v9, 0x28

    if-lt v2, v9, :cond_5

    .line 6
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    if-ne v2, v13, :cond_5

    const v2, 0x56425249

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    if-eq v2, v12, :cond_9

    if-eq v2, v13, :cond_8

    if-eq v2, v15, :cond_9

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    :cond_7
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 33
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 8
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzahv;->zzb(JJLcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzahv;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    .line 9
    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    goto/16 :goto_6

    :cond_9
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 10
    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/zzahw;->zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzahw;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzadb;->zza()Z

    move-result v11

    if-nez v11, :cond_a

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzahw;->zzd:I

    if-eq v11, v3, :cond_a

    iget v12, v9, Lcom/google/android/gms/internal/ads/zzahw;->zze:I

    if-eq v12, v3, :cond_a

    iput v11, v10, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    iput v12, v10, Lcom/google/android/gms/internal/ads/zzadb;->zzb:I

    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v12

    const-wide/16 v16, -0x1

    cmp-long v14, v12, v16

    if-eqz v14, :cond_b

    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzahw;->zzc:J

    cmp-long v14, v12, v16

    if-eqz v14, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v18

    add-long/2addr v12, v10

    cmp-long v14, v18, v12

    if-eqz v14, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v7

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v3, "Data size mismatch between stream ("

    .line 11
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") and Xing frame ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Mp3Extractor"

    .line 12
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    .line 13
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    if-ne v2, v15, :cond_c

    .line 14
    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzahx;->zzb(Lcom/google/android/gms/internal/ads/zzahw;J)Lcom/google/android/gms/internal/ads/zzahx;

    move-result-object v2

    goto :goto_6

    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v2

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzahw;->zza()J

    move-result-wide v24

    cmp-long v7, v24, v5

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_d
    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzahw;->zzc:J

    cmp-long v12, v7, v16

    if-eqz v12, :cond_e

    add-long v2, v10, v7

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    :goto_4
    int-to-long v12, v12

    sub-long/2addr v7, v12

    move-wide/from16 v27, v2

    goto :goto_5

    :cond_e
    cmp-long v7, v2, v16

    if-eqz v7, :cond_7

    sub-long v7, v2, v10

    .line 19
    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    goto :goto_4

    :goto_5
    const-wide/32 v22, 0x7a1200

    .line 15
    sget-object v26, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-wide/from16 v20, v7

    .line 16
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgaq;->zzb(J)I

    move-result v31

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/zzahw;->zzb:J

    sget-object v12, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 18
    invoke-static {v7, v8, v2, v3, v12}, Lcom/google/android/gms/internal/ads/zzgal;->zzb(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgaq;->zzb(J)I

    move-result v32

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    int-to-long v7, v2

    add-long v29, v10, v7

    const/16 v33, 0x0

    move-object/from16 v26, v3

    .line 19
    invoke-direct/range {v26 .. v33}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(JJIIZ)V

    move-object v2, v3

    .line 20
    :goto_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:Lcom/google/android/gms/internal/ads/zzay;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v7

    if-eqz v3, :cond_12

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzay;->zza()I

    move-result v9

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_12

    .line 22
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzay;->zzb(I)Lcom/google/android/gms/internal/ads/zzax;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/ads/zzagm;

    if-eqz v12, :cond_11

    .line 23
    check-cast v11, Lcom/google/android/gms/internal/ads/zzagm;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzay;->zza()I

    move-result v9

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_10

    .line 25
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzay;->zzb(I)Lcom/google/android/gms/internal/ads/zzax;

    move-result-object v12

    instance-of v13, v12, Lcom/google/android/gms/internal/ads/zzagq;

    if-eqz v13, :cond_f

    .line 26
    check-cast v12, Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzagq;->zzf:Ljava/lang/String;

    const-string v14, "TLEN"

    .line 27
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 28
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzagq;->zzb:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v9

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    move-wide v9, v5

    .line 23
    :goto_9
    invoke-static {v7, v8, v11, v9, v10}, Lcom/google/android/gms/internal/ads/zzahr;->zzb(JLcom/google/android/gms/internal/ads/zzagm;J)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v3

    goto :goto_a

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_a
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Z

    if-eqz v7, :cond_13

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaht;

    .line 29
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaht;-><init>()V

    goto :goto_c

    :cond_13
    if-eqz v3, :cond_14

    move-object v2, v3

    goto :goto_b

    :cond_14
    if-nez v2, :cond_15

    const/4 v2, 0x0

    :cond_15
    :goto_b
    if-eqz v2, :cond_16

    .line 57
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zzh()Z

    goto :goto_c

    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    const/4 v3, 0x4

    .line 30
    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzh([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 31
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzadf;->zza(I)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahp;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v10

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzadf;->zzf:I

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    const/4 v14, 0x0

    move-object v7, v2

    .line 33
    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(JJIIZ)V

    .line 29
    :goto_c
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    .line 34
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzz;

    .line 35
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzadf;->zzb:Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const/16 v3, 0x1000

    .line 37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzR(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadf;->zze:I

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzz(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadf;->zzd:I

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzab(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadb;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadb;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadb;->zzb:I

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzH(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:Lcom/google/android/gms/internal/ads/zzay;

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzT(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    .line 43
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzahu;->zzc()I

    move-result v3

    const v7, -0x7fffffff

    if-eq v3, v7, :cond_17

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    .line 44
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzahu;->zzc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzy(I)Lcom/google/android/gms/internal/ads/zzz;

    :cond_17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzadt;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    goto :goto_d

    .line 7
    :cond_18
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-eqz v9, :cond_19

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-gez v9, :cond_19

    sub-long/2addr v2, v7

    long-to-int v3, v2

    .line 46
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 45
    :cond_19
    :goto_d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:I

    if-nez v2, :cond_1f

    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    .line 48
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzl(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_10

    :cond_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 49
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:I

    int-to-long v7, v3

    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzahs;->zzk(IJ)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 51
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadg;->zzb(I)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_1b

    goto :goto_e

    .line 52
    :cond_1b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 53
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzadf;->zza(I)Z

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_1c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    .line 54
    invoke-interface {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzahu;->zze(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:J

    :cond_1c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzn:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzahq;

    if-nez v6, :cond_1d

    move v2, v3

    goto :goto_f

    .line 58
    :cond_1d
    check-cast v5, Lcom/google/android/gms/internal/ads/zzahq;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzadf;->zzg:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 59
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzh(J)J

    const/4 v1, 0x0

    .line 60
    throw v1

    :cond_1e
    :goto_e
    const/4 v3, 0x1

    .line 52
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:I

    goto :goto_11

    :cond_1f
    :goto_f
    const/4 v3, 0x1

    .line 54
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzadt;

    .line 55
    invoke-interface {v5, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadt;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    :goto_10
    const/4 v3, -0x1

    goto :goto_12

    :cond_20
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:I

    if-lez v2, :cond_21

    :goto_11
    const/4 v3, 0x0

    :goto_12
    return v3

    :cond_21
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzadt;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzh(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzadf;->zzc:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 57
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadf;->zzg:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:I

    return v4
.end method

.method private final zzh(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    mul-long p1, p1, v5

    div-long/2addr p1, v3

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private final zzj()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzahp;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzn:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zzd()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzahp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzn:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahp;->zzf(J)Lcom/google/android/gms/internal/ads/zzahp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzacq;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    :cond_0
    return-void
.end method

.method private static zzk(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzaco;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zze()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzm([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzaco;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzadd;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zza(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzage;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:Lcom/google/android/gms/internal/ads/zzay;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadb;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzb(Lcom/google/android/gms/internal/ads/zzay;)Z

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zze()J

    move-result-wide v0

    long-to-int v1, v0

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzl(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-lez v2, :cond_3

    goto :goto_4

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zzj()V

    .line 15
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 19
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 6
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v5

    if-eqz v0, :cond_5

    int-to-long v7, v0

    invoke-static {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzahs;->zzk(IJ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8
    :cond_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzadg;->zzb(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    :cond_6
    if-eq v6, p2, :cond_7

    const/high16 v0, 0x20000

    goto :goto_2

    :cond_7
    const v0, 0x8000

    :goto_2
    add-int/lit8 v2, v3, 0x1

    if-ne v3, v0, :cond_9

    if-eqz p2, :cond_8

    return v4

    .line 16
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zzj()V

    .line 17
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    add-int v0, v1, v2

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzg(I)V

    goto :goto_3

    .line 11
    :cond_a
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    :goto_3
    move v3, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 12
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzadf;->zza(I)Z

    move v0, v5

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    if-ne v2, v5, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v1, v3

    .line 18
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    goto :goto_5

    .line 19
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    .line 18
    :goto_5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:I

    return v6

    :cond_e
    :goto_6
    add-int/lit8 v7, v7, -0x4

    .line 13
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzaco;->zzg(I)V

    goto :goto_1
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzg(Lcom/google/android/gms/internal/ads/zzaco;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzahq;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzahs;->zzh(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zza()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahq;

    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return p1
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

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzadt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacq;->zzD()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzahq;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahq;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzaco;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahs;->zzm(Lcom/google/android/gms/internal/ads/zzaco;Z)Z

    move-result p1

    return p1
.end method
