.class public final Lcom/google/android/gms/internal/ads/zzaah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcc;


# static fields
.field private static final zza:Ljava/util/concurrent/Executor;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaab;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaal;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaaq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbl;

.field private final zzg:Ljava/util/List;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzabh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcx;

.field private final zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private zzk:Lcom/google/android/gms/internal/ads/zzaai;

.field private zzl:Lcom/google/android/gms/internal/ads/zzdh;

.field private zzm:Landroid/util/Pair;

.field private zzn:I

.field private zzo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaah;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzw;Lcom/google/android/gms/internal/ads/zzaag;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzw;->zza(Lcom/google/android/gms/internal/ads/zzzw;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzb:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/internal/ads/zzaah;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzc:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzc(Lcom/google/android/gms/internal/ads/zzzw;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzi:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzf(Lcom/google/android/gms/internal/ads/zzzw;)Lcom/google/android/gms/internal/ads/zzaal;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzd:Lcom/google/android/gms/internal/ads/zzaal;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzaal;->zzk(Lcom/google/android/gms/internal/ads/zzcx;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaaq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzzx;-><init>(Lcom/google/android/gms/internal/ads/zzaah;Lcom/google/android/gms/internal/ads/zzaag;)V

    .line 3
    invoke-direct {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaal;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zze:Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzb(Lcom/google/android/gms/internal/ads/zzzw;)Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbl;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzf:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzg(Lcom/google/android/gms/internal/ads/zzzw;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzg:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzzh;

    .line 5
    invoke-direct {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(Lcom/google/android/gms/internal/ads/zzaal;Lcom/google/android/gms/internal/ads/zzaaq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzh:Lcom/google/android/gms/internal/ads/zzabh;

    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzo:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzz;

    .line 7
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaah;)Landroid/util/Pair;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaah;->zzw(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaah;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzcb;
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzo:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzab;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaah;->zzw(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzc()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v0

    :cond_1
    move-object v3, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzi:Lcom/google/android/gms/internal/ads/zzcx;

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/os/Looper;

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzcx;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzl:Lcom/google/android/gms/internal/ads/zzdh;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzf:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzb:Landroid/content/Context;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzn;->zza:Lcom/google/android/gms/internal/ads/zzn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzl:Lcom/google/android/gms/internal/ads/zzdh;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzzv;-><init>(Lcom/google/android/gms/internal/ads/zzdh;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v5, p0

    .line 8
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzbl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcc;Ljava/util/concurrent/Executor;Ljava/util/List;J)Lcom/google/android/gms/internal/ads/zzbm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    .line 10
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdz;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzb()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zza()I

    .line 12
    :cond_2
    throw v10
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbz; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabg;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;)V

    throw v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzcx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzi:Lcom/google/android/gms/internal/ads/zzcx;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzaai;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzk:Lcom/google/android/gms/internal/ads/zzaai;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzaal;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzd:Lcom/google/android/gms/internal/ads/zzaal;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzaah;)Lcom/google/android/gms/internal/ads/zzabh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzh:Lcom/google/android/gms/internal/ads/zzabh;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzaah;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzg:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzaah;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static bridge synthetic zzk()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaah;->zza:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzaah;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzh:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabh;->zzd(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzl:Lcom/google/android/gms/internal/ads/zzdh;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzzt;-><init>(Lcom/google/android/gms/internal/ads/zzaah;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdh;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzaah;JJJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zze:Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzaaq;->zzc(JJ)V

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzaah;JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzh:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabh;->zzm(JJ)V

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzaah;F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzh:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabh;->zzq(F)V

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzaah;Lcom/google/android/gms/internal/ads/zzaai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzk:Lcom/google/android/gms/internal/ads/zzaai;

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzaah;J)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzn:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zze:Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaq;->zze(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/internal/ads/zzaah;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzh:Lcom/google/android/gms/internal/ads/zzabh;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabh;->zzx(Z)Z

    move-result p0

    return p0
.end method

.method private static zzw(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    return-object p0
.end method


# virtual methods
.method public final zzh()Lcom/google/android/gms/internal/ads/zzabh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzc:Lcom/google/android/gms/internal/ads/zzaab;

    return-object v0
.end method

.method public final zzq()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdz;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzb()I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdz;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zza()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    return-void
.end method

.method final synthetic zzr()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzn:I

    return-void
.end method

.method public final zzs()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzo:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzl:Lcom/google/android/gms/internal/ads/zzdh;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdh;->zze(Ljava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzo:I

    return-void
.end method

.method public final zzt(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzdz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdz;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzm:Landroid/util/Pair;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdz;->zzb()I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdz;->zza()I

    return-void
.end method
