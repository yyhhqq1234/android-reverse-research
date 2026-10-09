.class public final Lcom/google/android/gms/internal/ads/zzaal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaak;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaap;

.field private zzc:Z

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:F

.field private zzk:Lcom/google/android/gms/internal/ads/zzcx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaak;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzaak;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:F

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    return-void
.end method

.method private final zzq(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(JJJJZLcom/google/android/gms/internal/ads/zzaaj;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p10

    .line 1
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zzg(Lcom/google/android/gms/internal/ads/zzaaj;)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zze:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaal;->zze:J

    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:J

    cmp-long v10, v6, v1

    if-eqz v10, :cond_1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzaap;->zzd(J)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:J

    :cond_1
    sub-long/2addr v1, v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:F

    float-to-double v6, v6

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    long-to-double v1, v1

    div-double/2addr v1, v6

    double-to-long v1, v1

    if-eqz v10, :cond_2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    .line 3
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v6

    sub-long v6, v6, p5

    sub-long/2addr v1, v6

    .line 4
    :cond_2
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzaaj;->zze(Lcom/google/android/gms/internal/ads/zzaaj;J)V

    .line 5
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zza(Lcom/google/android/gms/internal/ads/zzaaj;)J

    move-result-wide v1

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    const-wide/16 v10, -0x7530

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    cmp-long v16, v6, v8

    if-eqz v16, :cond_3

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Z

    if-nez v6, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    if-eqz v6, :cond_6

    if-eq v6, v15, :cond_7

    if-eq v6, v13, :cond_5

    if-ne v6, v12, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v6

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:J

    sub-long/2addr v6, v12

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    if-eqz v12, :cond_8

    cmp-long v12, v1, v10

    if-gez v12, :cond_8

    const-wide/32 v1, 0x186a0

    cmp-long v12, v6, v1

    if-lez v12, :cond_8

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    cmp-long v1, v3, p7

    if-ltz v1, :cond_8

    goto :goto_0

    .line 6
    :cond_6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    if-eqz v1, :cond_8

    :cond_7
    :goto_0
    return v14

    .line 5
    :cond_8
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_10

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zze:J

    cmp-long v1, v3, v6

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzc()J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 9
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zza(Lcom/google/android/gms/internal/ads/zzaaj;)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    add-long/2addr v12, v6

    .line 10
    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzaap;->zza(J)J

    move-result-wide v12

    invoke-static {v5, v12, v13}, Lcom/google/android/gms/internal/ads/zzaaj;->zzf(Lcom/google/android/gms/internal/ads/zzaaj;J)V

    .line 11
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zzb(Lcom/google/android/gms/internal/ads/zzaaj;)J

    move-result-wide v12

    sub-long/2addr v12, v6

    div-long v12, v12, v16

    invoke-static {v5, v12, v13}, Lcom/google/android/gms/internal/ads/zzaaj;->zze(Lcom/google/android/gms/internal/ads/zzaaj;J)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Z

    if-nez v1, :cond_a

    const/4 v14, 0x1

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzaak;

    .line 12
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zza(Lcom/google/android/gms/internal/ads/zzaaj;)J

    move-result-wide v6

    const-wide/32 v8, -0x7a120

    cmp-long v12, v6, v8

    if-gez v12, :cond_c

    if-nez p9, :cond_c

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzp;

    .line 13
    invoke-virtual {v1, v3, v4, v14}, Lcom/google/android/gms/internal/ads/zzzp;->zzaT(JZ)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x4

    return v1

    .line 14
    :cond_c
    :goto_2
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zza(Lcom/google/android/gms/internal/ads/zzaaj;)J

    move-result-wide v3

    cmp-long v1, v3, v10

    if-gez v1, :cond_e

    if-nez p9, :cond_e

    if-eqz v14, :cond_d

    const/4 v1, 0x3

    return v1

    :cond_d
    const/4 v1, 0x2

    return v1

    .line 15
    :cond_e
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/internal/ads/zzaaj;->zza(Lcom/google/android/gms/internal/ads/zzaaj;)J

    move-result-wide v3

    const-wide/32 v5, 0xc350

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    return v2

    :cond_f
    return v15

    :cond_10
    :goto_3
    return v2
.end method

.method public final zzb()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzq(I)V

    return-void
.end method

.method public final zze(Z)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    return-void
.end method

.method public final zzf()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzq(I)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzg()V

    return-void
.end method

.method public final zzh()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzh()V

    return-void
.end method

.method public final zzi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzf()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:J

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaal;->zzq(I)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    return-void
.end method

.method public final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzj(I)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzcx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    return-void
.end method

.method public final zzl(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzc(F)V

    return-void
.end method

.method public final zzm(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzi(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzq(I)V

    return-void
.end method

.method public final zzn(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zze(F)V

    return-void
.end method

.method public final zzo(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    const/4 p1, 0x0

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return p1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:J

    :cond_2
    return v0
.end method

.method public final zzp()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:J

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
