.class public final Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpm;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private static zzc:I


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzbe;

.field private zzB:Z

.field private zzC:J

.field private zzD:J

.field private zzE:J

.field private zzF:J

.field private zzG:I

.field private zzH:Z

.field private zzI:Z

.field private zzJ:J

.field private zzK:F

.field private zzL:Ljava/nio/ByteBuffer;

.field private zzM:I

.field private zzN:Ljava/nio/ByteBuffer;

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:I

.field private zzT:Lcom/google/android/gms/internal/ads/zzf;

.field private zzU:Lcom/google/android/gms/internal/ads/zzoo;

.field private zzV:J

.field private zzW:Z

.field private zzX:Z

.field private zzY:Landroid/os/Looper;

.field private zzZ:J

.field private zzaa:J

.field private zzab:Landroid/os/Handler;

.field private final zzac:Lcom/google/android/gms/internal/ads/zzqc;

.field private final zzad:Lcom/google/android/gms/internal/ads/zzps;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzpr;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzqw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfxn;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfxn;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzpq;

.field private final zzj:Ljava/util/ArrayDeque;

.field private zzk:Lcom/google/android/gms/internal/ads/zzqk;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzqg;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzqg;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzpz;

.field private zzo:Lcom/google/android/gms/internal/ads/zzog;

.field private zzp:Lcom/google/android/gms/internal/ads/zzpj;

.field private zzq:Lcom/google/android/gms/internal/ads/zzqb;

.field private zzr:Lcom/google/android/gms/internal/ads/zzqb;

.field private zzs:Lcom/google/android/gms/internal/ads/zzce;

.field private zzt:Landroid/media/AudioTrack;

.field private zzu:Lcom/google/android/gms/internal/ads/zzoi;

.field private zzv:Lcom/google/android/gms/internal/ads/zzon;

.field private zzw:Lcom/google/android/gms/internal/ads/zzqf;

.field private zzx:Lcom/google/android/gms/internal/ads/zze;

.field private zzy:Lcom/google/android/gms/internal/ads/zzqd;

.field private zzz:Lcom/google/android/gms/internal/ads/zzqd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqa;Lcom/google/android/gms/internal/ads/zzql;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zza(Lcom/google/android/gms/internal/ads/zzqa;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zzoi;

    .line 3
    sget v2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzoi;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzoo;)Lcom/google/android/gms/internal/ads/zzoi;

    move-result-object p2

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzb(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzoi;

    move-result-object p2

    .line 4
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zze(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzqc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzac:Lcom/google/android/gms/internal/ads/zzqc;

    .line 5
    sget p2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzf(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzps;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzad:Lcom/google/android/gms/internal/ads/zzps;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(Lcom/google/android/gms/internal/ads/zzqm;Lcom/google/android/gms/internal/ads/zzql;)V

    .line 7
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Lcom/google/android/gms/internal/ads/zzpp;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzpr;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzpr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzpr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqw;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:Lcom/google/android/gms/internal/ads/zzqw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcl;

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>()V

    .line 11
    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfxn;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzg:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzqv;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:Lcom/google/android/gms/internal/ads/zzfxn;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzK:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzS:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzf;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzf;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzT:Lcom/google/android/gms/internal/ads/zzf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqd;

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbe;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzbe;JJLcom/google/android/gms/internal/ads/zzql;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbe;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    new-instance p2, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzqg;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Lcom/google/android/gms/internal/ads/zzqg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzqg;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzn:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzqm;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzV:J

    return-wide v0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzqm;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzL()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzqm;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzqm;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzqm;)Lcom/google/android/gms/internal/ads/zzpj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    return-object p0
.end method

.method public static synthetic zzG(Lcom/google/android/gms/internal/ads/zzqm;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzaa:J

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzqs;->zzah(Lcom/google/android/gms/internal/ads/zzqs;Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzaa:J

    :cond_0
    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzqm;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzQ:Z

    return-void
.end method

.method static synthetic zzI(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpj;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpg;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzpv;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zzpj;Lcom/google/android/gms/internal/ads/zzpg;)V

    .line 4
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpv;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zzpj;Lcom/google/android/gms/internal/ads/zzpg;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    if-nez p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    throw p0

    :catchall_2
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method static bridge synthetic zzK()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzL()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzC:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    :goto_0
    return-wide v1
.end method

.method private final zzM()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzE:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:I

    int-to-long v3, v0

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    add-long/2addr v1, v3

    const-wide/16 v5, -0x1

    add-long/2addr v1, v5

    .line 3
    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    :goto_0
    return-wide v1
.end method

.method private final zzN(Lcom/google/android/gms/internal/ads/zzqb;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpi;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqb;->zza()Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzS:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqb;->zza:Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzac(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zze;ILcom/google/android/gms/internal/ads/zzab;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zza(Ljava/lang/Exception;)V

    .line 3
    :goto_0
    throw p1
.end method

.method private final zzO(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzac:Lcom/google/android/gms/internal/ads/zzqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqc;->zzc(Lcom/google/android/gms/internal/ads/zzbe;)Lcom/google/android/gms/internal/ads/zzbe;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbe;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    :goto_0
    move-object v3, v1

    .line 2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzab()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzac:Lcom/google/android/gms/internal/ads/zzqc;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqc;->zzd(Z)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqd;

    const-wide/16 v4, 0x0

    .line 6
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v6

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    .line 8
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzbe;JJLcom/google/android/gms/internal/ads/zzql;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzX()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzae(Lcom/google/android/gms/internal/ads/zzqs;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpe;->zzw(Z)V

    :cond_2
    return-void
.end method

.method private final zzP(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpl;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzc()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzV:J

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-gez p2, :cond_7

    .line 5
    sget p1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x18

    if-lt p1, v4, :cond_1

    const/4 p1, -0x6

    if-eq p2, p1, :cond_2

    :cond_1
    const/16 p1, -0x20

    if-ne p2, p1, :cond_4

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzQ()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zza:Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;-><init>(ILcom/google/android/gms/internal/ads/zzab;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zza(Ljava/lang/Exception;)V

    :cond_5
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzpl;->zzb:Z

    if-nez p2, :cond_6

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:Lcom/google/android/gms/internal/ads/zzqg;

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzb(Ljava/lang/Exception;)V

    return-void

    .line 11
    :cond_6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zzoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    .line 12
    throw p1

    .line 8
    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:Lcom/google/android/gms/internal/ads/zzqg;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzqg;->zza()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_8

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzX:Z

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzR:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz v2, :cond_9

    if-ge p2, p1, :cond_9

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqq;

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 16
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-nez v2, :cond_a

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzE:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzE:J

    :cond_a
    if-ne p2, p1, :cond_d

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    .line 17
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzM:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    :cond_d
    :goto_2
    return-void
.end method

.method private final zzQ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzW:Z

    :cond_0
    return-void
.end method

.method private final zzR()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzY:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzon;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpw;

    .line 2
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Lcom/google/android/gms/internal/ads/zzqm;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzU:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzon;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpw;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzoo;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzc()Lcom/google/android/gms/internal/ads/zzoi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    :cond_0
    return-void
.end method

.method private final zzS()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzP:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpq;->zzb(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzQ:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    return-void
.end method

.method private final zzT(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpl;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqm;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzh()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzg()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzV(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqm;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzce;->zze(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzV(Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqm;->zzP(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzbe;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzqd;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzbe;JJLcom/google/android/gms/internal/ads/zzql;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzy:Lcom/google/android/gms/internal/ads/zzqd;

    return-void

    :cond_0
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    return-void
.end method

.method private final zzV(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 3
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-nez v1, :cond_15

    const-wide/16 v1, 0x14

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzs(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 5
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    .line 6
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzp(JI)J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long v1, v3, v5

    if-gez v1, :cond_15

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 8
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzqb;->zzg:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzqb;->zzd:I

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    long-to-int v4, v3

    .line 11
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ge v4, v2, :cond_14

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_a

    if-eq v7, v3, :cond_9

    if-eq v7, v10, :cond_7

    if-eq v7, v15, :cond_6

    if-eq v7, v14, :cond_5

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    goto :goto_2

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 16
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    goto/16 :goto_5

    .line 20
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    :goto_2
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    or-int/2addr v12, v15

    goto :goto_6

    .line 24
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    :goto_3
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    goto :goto_6

    .line 27
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    neg-float v12, v12

    const/high16 v13, -0x31000000

    goto :goto_4

    :cond_8
    const/high16 v13, 0x4f000000

    :goto_4
    mul-float v12, v12, v13

    float-to-int v12, v12

    goto :goto_6

    .line 29
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    .line 30
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    :goto_5
    or-int/2addr v12, v13

    :goto_6
    int-to-long v12, v12

    int-to-long v14, v4

    mul-long v12, v12, v14

    .line 31
    div-long/2addr v12, v5

    long-to-int v13, v12

    if-eq v7, v11, :cond_13

    if-eq v7, v3, :cond_12

    if-eq v7, v10, :cond_10

    const/16 v3, 0x15

    if-eq v7, v3, :cond_f

    const/16 v3, 0x16

    if-eq v7, v3, :cond_e

    const/high16 v3, 0x10000000

    if-eq v7, v3, :cond_d

    const/high16 v3, 0x50000000

    if-eq v7, v3, :cond_c

    const/high16 v3, 0x60000000

    if-ne v7, v3, :cond_b

    shr-int/lit8 v3, v13, 0x8

    shr-int/lit8 v10, v13, 0x10

    shr-int/lit8 v11, v13, 0x18

    int-to-byte v12, v13

    int-to-byte v11, v11

    .line 32
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 33
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 34
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 56
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    shr-int/lit8 v3, v13, 0x8

    shr-int/lit8 v10, v13, 0x10

    shr-int/lit8 v11, v13, 0x18

    int-to-byte v11, v11

    .line 36
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 37
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 38
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_d
    shr-int/lit8 v3, v13, 0x10

    shr-int/lit8 v10, v13, 0x18

    int-to-byte v10, v10

    .line 39
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 40
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_e
    shr-int/lit8 v3, v13, 0x8

    shr-int/lit8 v10, v13, 0x10

    shr-int/lit8 v11, v13, 0x18

    int-to-byte v12, v13

    .line 41
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 42
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 43
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 44
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    shr-int/lit8 v3, v13, 0x8

    shr-int/lit8 v10, v13, 0x10

    shr-int/lit8 v11, v13, 0x18

    int-to-byte v3, v3

    .line 45
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 46
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 47
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    if-gez v13, :cond_11

    int-to-float v3, v13

    neg-float v3, v3

    const/high16 v10, -0x31000000

    div-float/2addr v3, v10

    .line 48
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-float v3, v13

    const/high16 v10, 0x4f000000

    div-float/2addr v3, v10

    .line 49
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v3, v13, 0x18

    int-to-byte v3, v3

    .line 50
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    shr-int/lit8 v3, v13, 0x10

    shr-int/lit8 v10, v13, 0x18

    int-to-byte v3, v3

    .line 51
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 52
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v10, v9, v1

    if-ne v3, v10, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    goto/16 :goto_1

    :cond_14
    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v1, v8

    goto :goto_8

    :cond_15
    move-object/from16 v1, p1

    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    :cond_16
    return-void
.end method

.method private final zzW()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzK:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzi:Lcom/google/android/gms/internal/ads/zzce;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzc()V

    return-void
.end method

.method private final zzY()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpl;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzh()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqm;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzd()V

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqm;->zzT(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :cond_4
    return v3
.end method

.method private final zzZ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzaa(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzab()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zza:Lcom/google/android/gms/internal/ads/zzab;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final zzac(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zze;ILcom/google/android/gms/internal/ads/zzab;)Landroid/media/AudioTrack;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpi;
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:I

    .line 4
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzx(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 6
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 7
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zze:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzd:Z

    .line 12
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpg;->zze:I

    .line 3
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzx(III)Landroid/media/AudioFormat;

    move-result-object v5

    const/4 v7, 0x1

    move-object v3, v0

    move v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p1, v0

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v2, :cond_2

    return-object p1

    .line 16
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:I

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzd:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v10, 0x0

    move-object v3, p0

    move-object v8, p3

    .line 17
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(IIIILcom/google/android/gms/internal/ads/zzab;ZLjava/lang/Exception;)V

    throw p0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    move-object v7, p1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzd:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(IIIILcom/google/android/gms/internal/ads/zzab;ZLjava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zza(Lcom/google/android/gms/internal/ads/zzab;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzoi;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzY:Landroid/os/Looper;

    if-eq v1, v0, :cond_2

    const-string p1, "null"

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current looper ("

    .line 4
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not the playback looper ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzoi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzai(Lcom/google/android/gms/internal/ads/zzqs;)V

    :cond_3
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzab;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzR()V

    const-string v0, "audio/raw"

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzJ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid PCM encoding: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    if-eq p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    .line 6
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzoi;->zzb(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzb(Z)J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzI:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpq;->zza(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    .line 3
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v2

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqd;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzc:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    .line 7
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzc:J

    sub-long v2, v0, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzac:Lcom/google/android/gms/internal/ads/zzqc;

    .line 9
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqc;->zza(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    .line 10
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzb:J

    add-long/2addr v2, v0

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqd;

    .line 12
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzc:J

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqd;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbe;->zzb:F

    .line 14
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzei;->zzq(JF)J

    move-result-wide v0

    .line 15
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzb:J

    sub-long/2addr v2, v0

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzac:Lcom/google/android/gms/internal/ads/zzqc;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqc;->zzb()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    .line 17
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzZ:J

    cmp-long p1, v0, v4

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    sub-long v4, v0, v4

    .line 18
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzZ:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzaa:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzaa:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzab:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzab:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzab:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzab:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzpu;-><init>(Lcom/google/android/gms/internal/ads/zzqm;)V

    const-wide/16 v4, 0x64

    .line 21
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v2

    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzor;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzW:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzad:Lcom/google/android/gms/internal/ads/zzps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzps;->zza(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zze;)Lcom/google/android/gms/internal/ads/zzor;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzab;I[I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzph;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzR()V

    const-string v0, "audio/raw"

    .line 2
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 3
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzJ(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    .line 4
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzk(I)I

    move-result v0

    mul-int v0, v0, v5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 6
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    .line 7
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzg:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfxk;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxk;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzac:Lcom/google/android/gms/internal/ads/zzqc;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqc;->zze()[Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfxk;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzce;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzce;-><init>(Lcom/google/android/gms/internal/ads/zzfxn;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    .line 11
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzce;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzf:Lcom/google/android/gms/internal/ads/zzqw;

    .line 12
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzab;->zzG:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzab;->zzH:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzqw;->zzq(II)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzpr;

    move-object/from16 v7, p3

    .line 13
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzpr;->zzo([I)V

    .line 14
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcf;

    .line 15
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzcf;-><init>(III)V

    .line 16
    :try_start_0
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzce;->zza(Lcom/google/android/gms/internal/ads/zzcf;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcg; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget v7, v5, Lcom/google/android/gms/internal/ads/zzcf;->zzd:I

    .line 19
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzcf;->zzb:I

    .line 20
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzcf;->zzc:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)I

    move-result v9

    .line 21
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzei;->zzk(I)I

    move-result v10

    mul-int v10, v10, v5

    move-object v11, v6

    move v6, v10

    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzph;

    .line 17
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;)V

    throw v0

    .line 39
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzce;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzce;-><init>(Lcom/google/android/gms/internal/ads/zzfxn;)V

    .line 23
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    .line 24
    sget-object v6, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzor;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzu:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    .line 25
    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzoi;->zzb(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 27
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 28
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    move-object v11, v0

    move v8, v5

    move v9, v6

    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    :goto_0
    const-string v10, ") for: "

    if-eqz v7, :cond_c

    if-eqz v9, :cond_b

    .line 31
    iget v10, v3, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    .line 32
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v10, v4, :cond_2

    const v10, 0xbb800

    .line 33
    :cond_2
    invoke-static {v8, v9, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    if-eq v12, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 34
    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    if-eq v6, v4, :cond_4

    move v13, v6

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    :goto_2
    const v15, 0x3d090

    if-eqz v5, :cond_9

    const-wide/32 v16, 0xf4240

    if-eq v5, v14, :cond_8

    const/4 v14, 0x5

    const/16 v2, 0x8

    if-ne v7, v14, :cond_5

    const v15, 0x7a120

    goto :goto_3

    :cond_5
    if-ne v7, v2, :cond_6

    const v15, 0xf4240

    const/16 v7, 0x8

    :cond_6
    :goto_3
    if-eq v10, v4, :cond_7

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 40
    invoke-static {v10, v2, v14}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(IILjava/math/RoundingMode;)I

    move-result v2

    goto :goto_4

    .line 41
    :cond_7
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqo;->zzb(I)I

    move-result v2

    :goto_4
    int-to-long v14, v15

    move/from16 p3, v5

    int-to-long v4, v2

    mul-long v14, v14, v4

    .line 40
    div-long v14, v14, v16

    .line 42
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzgaq;->zzb(J)I

    move-result v2

    goto :goto_5

    :cond_8
    move/from16 p3, v5

    .line 38
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqo;->zzb(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v14, 0x2faf080

    mul-long v4, v4, v14

    div-long v4, v4, v16

    .line 39
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgaq;->zzb(J)I

    move-result v2

    goto :goto_5

    :cond_9
    move/from16 p3, v5

    mul-int/lit8 v2, v12, 0x4

    .line 35
    invoke-static {v15, v8, v13}, Lcom/google/android/gms/internal/ads/zzqo;->zza(III)I

    move-result v4

    const v5, 0xb71b0

    .line 36
    invoke-static {v5, v8, v13}, Lcom/google/android/gms/internal/ads/zzqo;->zza(III)I

    move-result v5

    .line 37
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_5
    move v10, v7

    int-to-double v4, v2

    double-to-int v2, v4

    .line 43
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v13

    const/4 v4, -0x1

    add-int/2addr v2, v4

    .line 44
    div-int/2addr v2, v13

    mul-int v12, v2, v13

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzW:Z

    new-instance v15, Lcom/google/android/gms/internal/ads/zzqb;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move v4, v0

    move/from16 v5, p3

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(Lcom/google/android/gms/internal/ads/zzab;IIIIIIILcom/google/android/gms/internal/ads/zzce;ZZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzq:Lcom/google/android/gms/internal/ads/zzqb;

    return-void

    :cond_a
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    return-void

    :cond_b
    move/from16 p3, v5

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzph;

    .line 30
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid output channel config (mode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v8, p3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;)V

    throw v0

    :cond_c
    move v8, v5

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzph;

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid output encoding (mode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;)V

    throw v0

    .line 25
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzph;

    .line 26
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;)V

    throw v0
.end method

.method public final zzf()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzC:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzE:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzX:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqd;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzbe;JJLcom/google/android/gms/internal/ads/zzql;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:Lcom/google/android/gms/internal/ads/zzqd;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzJ:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzy:Lcom/google/android/gms/internal/ads/zzqd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzM:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzN:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzQ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:Lcom/google/android/gms/internal/ads/zzqw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzp()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzk:Lcom/google/android/gms/internal/ads/zzqk;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzqk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzqk;->zzb(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqb;->zza()Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzq:Lcom/google/android/gms/internal/ads/zzqb;

    if-eqz v4, :cond_2

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzq:Lcom/google/android/gms/internal/ads/zzqb;

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpq;->zzc()V

    .line 10
    sget v4, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:Lcom/google/android/gms/internal/ads/zzqf;

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzqf;->zzb()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:Lcom/google/android/gms/internal/ads/zzqf;

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    new-instance v6, Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v8, :cond_4

    const-string v8, "ExoPlayer:AudioTrackReleaseThread"

    new-instance v9, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_4
    sget v8, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/google/android/gms/internal/ads/zzqm;->zzc:I

    sget-object v8, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzpt;

    invoke-direct {v9, v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpj;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpg;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    .line 14
    invoke-interface {v8, v9, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 15
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:Lcom/google/android/gms/internal/ads/zzqg;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Lcom/google/android/gms/internal/ads/zzqg;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzZ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzaa:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzab:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 18
    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzH:Z

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzR:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzR:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpl;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzO:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzO:Z

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzi()V

    :cond_0
    return-void
.end method

.method public final zzl()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzg:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/internal/ads/zzch;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzch;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzch;

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzch;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:Lcom/google/android/gms/internal/ads/zzce;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzf()V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzR:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzW:Z

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zze;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:Lcom/google/android/gms/internal/ads/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzon;->zzg(Lcom/google/android/gms/internal/ads/zze;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzf()V

    return-void
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzS:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzS:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzf()V

    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzT:Lcom/google/android/gms/internal/ads/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzT:Lcom/google/android/gms/internal/ads/zzf;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzf;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzT:Lcom/google/android/gms/internal/ads/zzf;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzcx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpq;->zze(Lcom/google/android/gms/internal/ads/zzcx;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzpj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    return-void
.end method

.method public final zzr(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzbe;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbe;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzb:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzc:F

    .line 4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbe;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzU(Lcom/google/android/gms/internal/ads/zzbe;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzo:Lcom/google/android/gms/internal/ads/zzog;

    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoo;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzoo;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzU:Lcom/google/android/gms/internal/ads/zzoo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzon;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzU:Lcom/google/android/gms/internal/ads/zzoo;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzoo;)V

    :cond_2
    return-void
.end method

.method public final zzv(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzU(Lcom/google/android/gms/internal/ads/zzbe;)V

    return-void
.end method

.method public final zzw(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzK:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzK:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzW()V

    :cond_0
    return-void
.end method

.method public final zzx(Ljava/nio/ByteBuffer;JI)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpi;,
            Lcom/google/android/gms/internal/ads/zzpl;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzq:Lcom/google/android/gms/internal/ads/zzqb;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzY()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzq:Lcom/google/android/gms/internal/ads/zzqb;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 3
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqb;->zzg:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqb;->zzd:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:I

    if-ne v10, v11, :cond_3

    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/zzqb;->zzj:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzj:Z

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzqb;->zzk:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzk:Z

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzq:Lcom/google/android/gms/internal/ads/zzqb;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzk:Z

    goto :goto_2

    .line 4
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzS()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzy()Z

    move-result v0

    if-eqz v0, :cond_4

    return v7

    .line 6
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzf()V

    .line 8
    :cond_5
    :goto_2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqm;->zzO(J)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 70
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Lcom/google/android/gms/internal/ads/zzqg;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzc()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_8

    return v7

    :cond_8
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_2
    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzqb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzN(Lcom/google/android/gms/internal/ads/zzqb;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 34
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 12
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzh:I

    const v13, 0xf4240

    if-le v12, v13, :cond_2d

    new-instance v12, Lcom/google/android/gms/internal/ads/zzqb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzqb;->zza:Lcom/google/android/gms/internal/ads/zzab;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:I

    const v22, 0xf4240

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzi:Lcom/google/android/gms/internal/ads/zzce;

    move/from16 v16, v14

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzj:Z

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzk:Z

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzl:Z

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v16

    move-object v14, v12

    move/from16 v16, v13

    move/from16 v17, v0

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v23, v9

    invoke-direct/range {v14 .. v26}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(Lcom/google/android/gms/internal/ads/zzab;IIIIIIILcom/google/android/gms/internal/ads/zzce;ZZZ)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_3 .. :try_end_3} :catch_2

    .line 13
    :try_start_4
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzqm;->zzN(Lcom/google/android/gms/internal/ads/zzqb;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_4 .. :try_end_4} :catch_1

    .line 10
    :goto_3
    :try_start_5
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzk:Lcom/google/android/gms/internal/ads/zzqk;

    if-nez v6, :cond_9

    new-instance v6, Lcom/google/android/gms/internal/ads/zzqk;

    .line 18
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/zzqm;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzk:Lcom/google/android/gms/internal/ads/zzqk;

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzk:Lcom/google/android/gms/internal/ads/zzqk;

    .line 19
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzqk;->zza(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 20
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzk:Z

    .line 21
    :cond_a
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v6, 0x1f

    if-lt v0, v6, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzo:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v0, :cond_b

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzog;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    .line 23
    sget-object v7, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v0, v7}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 24
    invoke-virtual {v6, v0}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 25
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzS:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 26
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    :goto_4
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzh:I

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzpq;->zzd(Landroid/media/AudioTrack;ZIII)V

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzT:Lcom/google/android/gms/internal/ads/zzf;

    .line 28
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzf;->zza:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzU:Lcom/google/android/gms/internal/ads/zzoo;

    if-eqz v0, :cond_d

    sget v6, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_d

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 29
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzoo;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_d

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzU:Lcom/google/android/gms/internal/ads/zzoo;

    .line 30
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoo;->zza:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzon;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_d
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_e

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzv:Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_e

    new-instance v6, Lcom/google/android/gms/internal/ads/zzqf;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 31
    invoke-direct {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzon;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzw:Lcom/google/android/gms/internal/ads/zzqf;

    :cond_e
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzI:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz v0, :cond_f

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqb;->zza()Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzae(Lcom/google/android/gms/internal/ads/zzqs;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpe;->zzc(Lcom/google/android/gms/internal/ads/zzpg;)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_5 .. :try_end_5} :catch_2

    .line 8
    :cond_f
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Lcom/google/android/gms/internal/ads/zzqg;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzI:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_10

    .line 37
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzJ:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzH:Z

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzI:Z

    .line 38
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqm;->zzO(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzR:Z

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzi()V

    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzpq;->zzj(J)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v8, 0x0

    return v8

    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2a

    .line 41
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v8, :cond_12

    const/4 v0, 0x1

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v8, 0x1

    return v8

    :cond_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 43
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-eqz v8, :cond_22

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzG:I

    if-nez v8, :cond_22

    .line 44
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:I

    const/16 v8, 0x14

    if-eq v0, v8, :cond_20

    const/16 v8, 0x1e

    const/4 v9, -0x2

    const/16 v10, 0x400

    const/4 v11, -0x1

    if-eq v0, v8, :cond_19

    packed-switch v0, :pswitch_data_0

    const/16 v8, 0x10

    packed-switch v0, :pswitch_data_1

    .line 6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected audio encoding: "

    .line 87
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :pswitch_0
    sget v0, Lcom/google/android/gms/internal/ads/zzabq;->zza:I

    new-array v0, v8, [B

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 48
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {v9, v0, v8}, Lcom/google/android/gms/internal/ads/zzdx;-><init>([BI)V

    .line 50
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzdx;)Lcom/google/android/gms/internal/ads/zzabo;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabo;->zzc:I

    goto/16 :goto_b

    :pswitch_1
    const/16 v0, 0x200

    goto/16 :goto_b

    .line 51
    :pswitch_2
    sget v0, Lcom/google/android/gms/internal/ads/zzabn;->zza:I

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    add-int/lit8 v10, v10, -0xa

    move v12, v0

    :goto_7
    if-gt v12, v10, :cond_15

    add-int/lit8 v13, v12, 0x4

    .line 54
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzei;->zzj(Ljava/nio/ByteBuffer;I)I

    move-result v13

    and-int/2addr v13, v9

    const v14, -0x78d9046

    if-ne v13, v14, :cond_14

    sub-int/2addr v12, v0

    goto :goto_8

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_15
    const/4 v12, -0x1

    :goto_8
    if-ne v12, v11, :cond_16

    const/4 v0, 0x0

    goto :goto_b

    .line 55
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v12

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 56
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v12

    const/16 v10, 0xbb

    if-ne v0, v10, :cond_17

    const/16 v0, 0x9

    goto :goto_9

    :cond_17
    const/16 v0, 0x8

    :goto_9
    add-int/2addr v9, v0

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    const/16 v9, 0x28

    shl-int v0, v9, v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_b

    :pswitch_3
    const/16 v0, 0x800

    goto :goto_b

    :goto_a
    :pswitch_4
    const/16 v0, 0x400

    goto :goto_b

    .line 57
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzei;->zzj(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadg;->zzc(I)I

    move-result v0

    if-eq v0, v11, :cond_18

    goto :goto_b

    .line 87
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_b
    const/4 v11, 0x1

    goto/16 :goto_f

    .line 60
    :cond_19
    :pswitch_7
    sget v0, Lcom/google/android/gms/internal/ads/zzacm;->zza:I

    const/4 v8, 0x0

    .line 61
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v12, -0xde4bec0

    if-eq v0, v12, :cond_1f

    .line 62
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v12, -0x17bd3b8f

    if-ne v0, v12, :cond_1a

    goto :goto_a

    .line 63
    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v8, 0x25205864

    if-ne v0, v8, :cond_1b

    const/16 v0, 0x1000

    goto :goto_b

    .line 64
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v9, :cond_1e

    if-eq v8, v11, :cond_1d

    const/16 v9, 0x1f

    if-eq v8, v9, :cond_1c

    add-int/lit8 v8, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    .line 69
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    const/4 v9, 0x2

    goto :goto_d

    :cond_1c
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x5

    .line 66
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_c

    :cond_1d
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x4

    .line 67
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :goto_c
    and-int/lit8 v0, v0, 0x3c

    :goto_d
    shr-int/2addr v0, v9

    or-int/2addr v0, v8

    const/4 v11, 0x1

    goto :goto_e

    :cond_1e
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    .line 68
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/4 v11, 0x1

    and-int/2addr v0, v11

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xfc

    shr-int/2addr v8, v9

    or-int/2addr v0, v8

    :goto_e
    add-int/2addr v0, v11

    mul-int/lit8 v0, v0, 0x20

    goto :goto_f

    :cond_1f
    const/4 v11, 0x1

    const/16 v0, 0x400

    goto :goto_f

    :cond_20
    const/4 v11, 0x1

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_f
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzG:I

    if-eqz v0, :cond_21

    goto :goto_10

    :cond_21
    return v11

    :cond_22
    :goto_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_24

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzY()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v8, 0x0

    return v8

    .line 72
    :cond_23
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqm;->zzO(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzy:Lcom/google/android/gms/internal/ads/zzqd;

    :cond_24
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzJ:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzL()J

    move-result-wide v10

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzf:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzqw;->zzo()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zza:Lcom/google/android/gms/internal/ads/zzab;

    .line 74
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzei;->zzt(JI)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzH:Z

    if-nez v0, :cond_26

    sub-long v10, v8, v3

    .line 75
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v0, v10, v12

    if-lez v0, :cond_26

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz v0, :cond_25

    new-instance v10, Lcom/google/android/gms/internal/ads/zzpk;

    .line 76
    invoke-direct {v10, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(JJ)V

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/zzpj;->zza(Ljava/lang/Exception;)V

    :cond_25
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzH:Z

    :cond_26
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzH:Z

    if-eqz v0, :cond_28

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzY()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_27

    return v10

    :cond_27
    sub-long v8, v3, v8

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzJ:J

    add-long/2addr v11, v8

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzJ:J

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzH:Z

    .line 78
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqm;->zzO(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzp:Lcom/google/android/gms/internal/ads/zzpj;

    if-eqz v0, :cond_28

    cmp-long v10, v8, v6

    if-eqz v10, :cond_28

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzao()V

    :cond_28
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzr:Lcom/google/android/gms/internal/ads/zzqb;

    .line 80
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:I

    if-nez v0, :cond_29

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzC:J

    .line 81
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzC:J

    goto :goto_11

    .line 86
    :cond_29
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzG:I

    int-to-long v8, v0

    int-to-long v10, v5

    mul-long v8, v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    .line 81
    :goto_11
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzM:I

    .line 82
    :cond_2a
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqm;->zzT(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzL:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzM:I

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzpq;->zzi(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 85
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzf()V

    return v3

    :cond_2c
    return v2

    :catch_1
    move-exception v0

    .line 14
    :try_start_6
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzpi;->addSuppressed(Ljava/lang/Throwable;)V

    .line 15
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzQ()V

    .line 16
    throw v11
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzpi; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 59
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpi;->zzb:Z

    if-nez v2, :cond_2e

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Lcom/google/android/gms/internal/ads/zzqg;

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzb(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    .line 34
    :cond_2e
    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final zzy()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzQ:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Lcom/google/android/gms/internal/ads/zzpq;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpq;->zzg(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzz()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzZ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzO:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
