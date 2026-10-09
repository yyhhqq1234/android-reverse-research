.class public final Lcom/google/android/gms/internal/ads/zzvp;
.super Lcom/google/android/gms/internal/ads/zztf;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzrf;

.field private final zzc:I

.field private zzd:Z

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzgy;

.field private zzi:Lcom/google/android/gms/internal/ads/zzar;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzvm;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzyo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzfx;Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzrf;Lcom/google/android/gms/internal/ads/zzyo;IZLcom/google/android/gms/internal/ads/zzfvf;Lcom/google/android/gms/internal/ads/zzvo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzi:Lcom/google/android/gms/internal/ads/zzar;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvp;->zza:Lcom/google/android/gms/internal/ads/zzfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzj:Lcom/google/android/gms/internal/ads/zzvm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzb:Lcom/google/android/gms/internal/ads/zzrf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzk:Lcom/google/android/gms/internal/ads/zzyo;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzc:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzd:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zze:J

    return-void
.end method

.method private final zzw()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzwc;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzvp;->zze:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzvp;->zzf:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvp;->zzg:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvp;->zzJ()Lcom/google/android/gms/internal/ads/zzar;

    move-result-object v14

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzar;->zzc:Lcom/google/android/gms/internal/ads/zzal;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v2, v6

    move-wide v4, v6

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    .line 3
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzal;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvp;->zzd:Z

    if-eqz v1, :cond_1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzvl;

    move-object/from16 v1, v24

    .line 4
    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzvl;-><init>(Lcom/google/android/gms/internal/ads/zzvp;Lcom/google/android/gms/internal/ads/zzbq;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    .line 5
    :goto_1
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zztf;->zzo(Lcom/google/android/gms/internal/ads/zzbq;)V

    return-void
.end method


# virtual methods
.method public final zzG(Lcom/google/android/gms/internal/ads/zzue;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvk;->zzN()V

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzug;Lcom/google/android/gms/internal/ads/zzyk;J)Lcom/google/android/gms/internal/ads/zzue;
    .locals 18

    move-object/from16 v15, p0

    .line 1
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzvp;->zza:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfx;->zza()Lcom/google/android/gms/internal/ads/zzfy;

    move-result-object v2

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzvp;->zzh:Lcom/google/android/gms/internal/ads/zzgy;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzf(Lcom/google/android/gms/internal/ads/zzgy;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvp;->zzJ()Lcom/google/android/gms/internal/ads/zzar;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzar;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzam;->zza:Landroid/net/Uri;

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzvp;->zzj:Lcom/google/android/gms/internal/ads/zzvm;

    .line 4
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvk;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztf;->zzb()Lcom/google/android/gms/internal/ads/zzog;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzti;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvm;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Lcom/google/android/gms/internal/ads/zzacs;)V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvp;->zzb:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zztf;->zzc(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzra;

    move-result-object v5

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzvp;->zzk:Lcom/google/android/gms/internal/ads/zzyo;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zztf;->zze(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v7

    const/4 v10, 0x0

    iget v11, v15, Lcom/google/android/gms/internal/ads/zzvp;->zzc:I

    const/4 v12, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v13

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v15, v17

    .line 7
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvk;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfy;Lcom/google/android/gms/internal/ads/zzuz;Lcom/google/android/gms/internal/ads/zzrf;Lcom/google/android/gms/internal/ads/zzra;Lcom/google/android/gms/internal/ads/zzyo;Lcom/google/android/gms/internal/ads/zzuq;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzyk;Ljava/lang/String;IZJLcom/google/android/gms/internal/ads/zzzg;)V

    return-object v16
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzar;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzi:Lcom/google/android/gms/internal/ads/zzar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zze:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzd:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvp;->zze:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzf:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzg:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zze:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzf:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzg:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvp;->zzw()V

    return-void
.end method

.method protected final zzn(Lcom/google/android/gms/internal/ads/zzgy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzh:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztf;->zzb()Lcom/google/android/gms/internal/ads/zzog;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvp;->zzw()V

    return-void
.end method

.method protected final zzq()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzar;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzi:Lcom/google/android/gms/internal/ads/zzar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
