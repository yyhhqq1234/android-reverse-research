.class public abstract Lcom/google/android/gms/internal/ads/zzcgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzckx;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzcgx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized zzG(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpe;IZILcom/google/android/gms/internal/ads/zzcid;)Lcom/google/android/gms/internal/ads/zzcgx;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzbpe;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class p2, Lcom/google/android/gms/internal/ads/zzcgx;

    monitor-enter p2

    .line 1
    :try_start_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcgx;->zza:Lcom/google/android/gms/internal/ads/zzcgx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p2

    return-object p3

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Landroid/content/Context;)V

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbed;->zze:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbdv;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbbv;->zzd(Landroid/content/Context;)V

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfdf;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfdf;

    move-result-object p3

    const v2, 0xe916690

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p3, v2, v3, p4}, Lcom/google/android/gms/internal/ads/zzfdf;->zzc(IZI)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p4

    .line 7
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfdf;->zzf(Lcom/google/android/gms/internal/ads/zzbpe;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcis;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzcis;-><init>(Lcom/google/android/gms/internal/ads/zzcjm;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcgy;-><init>()V

    .line 8
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/ads/zzcgy;->zzf(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ads/zzcgy;

    .line 9
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcgy;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzd(J)Lcom/google/android/gms/internal/ads/zzcgy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcha;

    invoke-direct {v0, v2, p3}, Lcom/google/android/gms/internal/ads/zzcha;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzcgz;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzb(Lcom/google/android/gms/internal/ads/zzcha;)Lcom/google/android/gms/internal/ads/zzcis;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcjn;

    invoke-direct {p3, p5}, Lcom/google/android/gms/internal/ads/zzcjn;-><init>(Lcom/google/android/gms/internal/ads/zzcid;)V

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcis;->zzc(Lcom/google/android/gms/internal/ads/zzcjn;)Lcom/google/android/gms/internal/ads/zzcis;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcis;->zza()Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzm;

    move-result-object p3

    invoke-virtual {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzbzm;->zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzbar;->zzi(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzm(Landroid/content/Context;)Z

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/content/Context;)Z

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzb()Lcom/google/android/gms/internal/ads/zzaze;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzd(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzw()Lcom/google/android/gms/ads/internal/util/zzci;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzci;->zzb(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgx;->zza()Lcom/google/android/gms/ads/internal/util/zzcb;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzcb;->zzc()V

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbyj;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbcl;->zzgb:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object p3

    .line 24
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbcl;->zzaI:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object p3

    .line 26
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeax;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbbj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbp;

    .line 27
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbp;-><init>(Landroid/content/Context;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(Lcom/google/android/gms/internal/ads/zzbbp;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeac;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdzy;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgx;->zzB()Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeac;-><init>(Lcom/google/android/gms/internal/ads/zzdzy;Lcom/google/android/gms/internal/ads/zzgcs;)V

    invoke-direct {p3, p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzeac;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbzm;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzeax;->zzb(Z)V

    :cond_2
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcgx;->zza:Lcom/google/android/gms/internal/ads/zzcgx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpe;I)Lcom/google/android/gms/internal/ads/zzcgx;
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzbpe;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const v2, 0xe916690

    const/4 v3, 0x0

    .line 1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcid;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcid;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgx;->zzG(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpe;IZILcom/google/android/gms/internal/ads/zzcid;)Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract zzA()Lcom/google/android/gms/internal/ads/zzfjj;
.end method

.method public abstract zzB()Lcom/google/android/gms/internal/ads/zzgcs;
.end method

.method public abstract zzC()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzD()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzE()Lcom/google/android/gms/internal/ads/zzbzb;
.end method

.method public final zzF()Lcom/google/android/gms/internal/ads/zzbzb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgx;->zzE()Lcom/google/android/gms/internal/ads/zzbzb;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza()Lcom/google/android/gms/ads/internal/util/zzcb;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/ads/zzcjy;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/ads/zzcnz;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/ads/zzcpp;
.end method

.method public abstract zzf()Lcom/google/android/gms/internal/ads/zzcyl;
.end method

.method public abstract zzg()Lcom/google/android/gms/internal/ads/zzdft;
.end method

.method public abstract zzh()Lcom/google/android/gms/internal/ads/zzdgp;
.end method

.method public abstract zzi()Lcom/google/android/gms/internal/ads/zzdoe;
.end method

.method public abstract zzj()Lcom/google/android/gms/internal/ads/zzdrw;
.end method

.method public abstract zzk()Lcom/google/android/gms/internal/ads/zzdtg;
.end method

.method public abstract zzl()Lcom/google/android/gms/internal/ads/zzduv;
.end method

.method public abstract zzm()Lcom/google/android/gms/internal/ads/zzdvs;
.end method

.method public abstract zzn()Lcom/google/android/gms/internal/ads/zzebv;
.end method

.method public abstract zzo()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;
.end method

.method public abstract zzp()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
.end method

.method public abstract zzq()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzbvk;I)Lcom/google/android/gms/internal/ads/zzeuu;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevx;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzevx;-><init>(Lcom/google/android/gms/internal/ads/zzbvk;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcgx;->zzs(Lcom/google/android/gms/internal/ads/zzevx;)Lcom/google/android/gms/internal/ads/zzeuu;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzs(Lcom/google/android/gms/internal/ads/zzevx;)Lcom/google/android/gms/internal/ads/zzeuu;
.end method

.method public abstract zzt()Lcom/google/android/gms/internal/ads/zzewo;
.end method

.method public abstract zzu()Lcom/google/android/gms/internal/ads/zzeyc;
.end method

.method public abstract zzv()Lcom/google/android/gms/internal/ads/zzezt;
.end method

.method public abstract zzw()Lcom/google/android/gms/internal/ads/zzfbh;
.end method

.method public abstract zzx()Lcom/google/android/gms/internal/ads/zzfcy;
.end method

.method public abstract zzy()Lcom/google/android/gms/internal/ads/zzfdi;
.end method

.method public abstract zzz()Lcom/google/android/gms/internal/ads/zzfhk;
.end method
