.class final Lcom/google/android/gms/internal/ads/zzvf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyt;
.implements Lcom/google/android/gms/internal/ads/zztv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzvk;

.field private final zzb:J

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zze:Lcom/google/android/gms/internal/ads/zzuz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzacq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzadj;

.field private volatile zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzgd;

.field private zzm:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvk;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfy;Lcom/google/android/gms/internal/ads/zzuz;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzda;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzc:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Lcom/google/android/gms/internal/ads/zzfy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzj:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztx;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzb:J

    const-wide/16 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvf;->zzi(J)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzl:Lcom/google/android/gms/internal/ads/zzgd;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzvf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzb:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzvf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzk:J

    return-wide v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzl:Lcom/google/android/gms/internal/ads/zzgd;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzvf;JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzk:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzn:Z

    return-void
.end method

.method private final zzi(J)Lcom/google/android/gms/internal/ads/zzgd;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzc:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgb;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgb;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgb;->zzc(J)Lcom/google/android/gms/internal/ads/zzgb;

    const/4 p1, 0x6

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgb;->zza(I)Lcom/google/android/gms/internal/ads/zzgb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvk;->zzz()Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgb;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgb;->zze()Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdy;)V
    .locals 11

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzk:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvk;->zzr(Lcom/google/android/gms/internal/ads/zzvk;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzk:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzm:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzadt;

    .line 3
    invoke-interface {v4, p1, v8}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzn:Z

    return-void
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzi:Z

    return-void
.end method

.method public final zzh()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    .line 1
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzi:Z

    if-nez v2, :cond_16

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    invoke-direct {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzvf;->zzi(J)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzl:Lcom/google/android/gms/internal/ads/zzgd;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    .line 2
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzgx;->zzb(Lcom/google/android/gms/internal/ads/zzgd;)J

    move-result-wide v6

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v8, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzga;->zza(Lcom/google/android/gms/internal/ads/zzfy;)V

    return-void

    :cond_2
    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    add-long/2addr v6, v13

    :try_start_1
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzvk;->zzC(Lcom/google/android/gms/internal/ads/zzvk;)V

    :cond_3
    move-wide v15, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgx;->zze()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    .line 5
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_5

    .line 6
    :try_start_2
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_4

    move/from16 v18, v11

    const/4 v2, 0x1

    goto :goto_1

    .line 21
    :cond_4
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitrate: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    const/4 v11, -0x1

    :catch_1
    :try_start_5
    const-string v2, "Invalid bitrate header: "

    .line 38
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v11

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    const/16 v18, -0x1

    :goto_1
    const-string v3, "icy-genre"

    .line 10
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    .line 11
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v19, v8

    :goto_2
    const-string v3, "icy-name"

    .line 12
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 13
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v20, v8

    :goto_3
    const-string v3, "icy-url"

    .line 14
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_8

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v21, v8

    :goto_4
    const-string v3, "icy-pub"

    .line 16
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 17
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v22, v2

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/16 v22, 0x0

    :goto_5
    const-string v3, "icy-metaint"

    .line 18
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_b

    .line 19
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-lez v7, :cond_a

    move/from16 v23, v7

    const/4 v2, 0x1

    goto :goto_7

    .line 36
    :cond_a
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catch_2
    const/4 v7, -0x1

    .line 9
    :catch_3
    :try_start_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v7

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v23, -0x1

    :goto_7
    if-eqz v2, :cond_c

    .line 20
    new-instance v8, Lcom/google/android/gms/internal/ads/zzafr;

    move-object/from16 v17, v8

    .line 23
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzafr;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 4
    :cond_c
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzvk;->zzB(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzafr;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzvk;->zzx(Lcom/google/android/gms/internal/ads/zzvk;)Lcom/google/android/gms/internal/ads/zzafr;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzvk;->zzx(Lcom/google/android/gms/internal/ads/zzvk;)Lcom/google/android/gms/internal/ads/zzafr;

    move-result-object v6

    .line 24
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzafr;->zzf:I

    if-eq v6, v10, :cond_d

    new-instance v6, Lcom/google/android/gms/internal/ads/zztw;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzvk;->zzx(Lcom/google/android/gms/internal/ads/zzvk;)Lcom/google/android/gms/internal/ads/zzafr;

    move-result-object v3

    .line 25
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafr;->zzf:I

    invoke-direct {v6, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Lcom/google/android/gms/internal/ads/zzfy;ILcom/google/android/gms/internal/ads/zztv;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvk;->zzv()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzm:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvk;->zzt()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    .line 27
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    move-object v8, v6

    goto :goto_8

    :cond_d
    move-object v8, v2

    :goto_8
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzc:Landroid/net/Uri;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zze()Ljava/util/Map;

    move-result-object v10

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzf:Lcom/google/android/gms/internal/ads/zzacq;

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v2

    .line 29
    invoke-interface/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzuz;->zzd(Lcom/google/android/gms/internal/ads/zzl;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzacq;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvk;->zzx(Lcom/google/android/gms/internal/ads/zzvk;)Lcom/google/android/gms/internal/ads/zzafr;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzuz;->zzc()V

    :cond_e
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzj:Z

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzk:J

    .line 31
    invoke-interface {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzuz;->zzf(JJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzj:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_f
    const/4 v2, 0x0

    :goto_9
    move-wide v13, v4

    const/4 v4, 0x0

    :cond_10
    :goto_a
    if-nez v4, :cond_12

    :try_start_a
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzi:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v5, :cond_11

    :try_start_b
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzda;->zza()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    .line 33
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzuz;->zza(Lcom/google/android/gms/internal/ads/zzadj;)I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzvk;->zzn(Lcom/google/android/gms/internal/ads/zzvk;)J

    move-result-wide v7

    add-long/2addr v7, v13

    cmp-long v9, v5, v7

    if-lez v9, :cond_10

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzda;->zzc()Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzvk;->zzs(Lcom/google/android/gms/internal/ads/zzvk;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzvk;->zzy(Lcom/google/android/gms/internal/ads/zzvk;)Ljava/lang/Runnable;

    move-result-object v7

    .line 35
    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v5

    goto :goto_a

    .line 37
    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_11
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_b

    :catchall_1
    move-exception v0

    move v5, v4

    const/4 v2, 0x1

    goto :goto_e

    :cond_12
    const/4 v3, 0x1

    :goto_b
    if-ne v4, v3, :cond_13

    const/4 v5, 0x0

    goto :goto_c

    .line 36
    :cond_13
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_14

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    :cond_14
    move v5, v4

    .line 35
    :goto_c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzga;->zza(Lcom/google/android/gms/internal/ads/zzfy;)V

    if-eqz v5, :cond_0

    goto :goto_f

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    :goto_d
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_e
    if-eq v5, v2, :cond_15

    .line 37
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zze:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_15

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzh:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzuz;->zzb()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    .line 8
    :cond_15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvf;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzga;->zza(Lcom/google/android/gms/internal/ads/zzfy;)V

    .line 38
    throw v0

    :cond_16
    :goto_f
    return-void
.end method
