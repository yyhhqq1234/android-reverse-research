.class final Lcom/google/android/gms/internal/ads/zzvk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzue;
.implements Lcom/google/android/gms/internal/ads/zzacq;
.implements Lcom/google/android/gms/internal/ads/zzyq;
.implements Lcom/google/android/gms/internal/ads/zzyu;
.implements Lcom/google/android/gms/internal/ads/zzvv;


# static fields
.field private static final zzb:Ljava/util/Map;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzab;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzadm;

.field private zzB:J

.field private zzC:Z

.field private zzD:I

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:I

.field private zzI:Z

.field private zzJ:J

.field private zzK:J

.field private zzL:Z

.field private zzM:I

.field private zzN:Z

.field private zzO:Z

.field private final zzP:Lcom/google/android/gms/internal/ads/zzyk;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzrf;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzuq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzra;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzvg;

.field private final zzj:J

.field private final zzk:J

.field private final zzl:Lcom/google/android/gms/internal/ads/zzyy;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzuz;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzo:Ljava/lang/Runnable;

.field private final zzp:Ljava/lang/Runnable;

.field private final zzq:Landroid/os/Handler;

.field private zzr:Lcom/google/android/gms/internal/ads/zzud;

.field private zzs:Lcom/google/android/gms/internal/ads/zzafr;

.field private zzt:[Lcom/google/android/gms/internal/ads/zzvx;

.field private zzu:[Lcom/google/android/gms/internal/ads/zzvi;

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzvj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvk;->zzb:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v1, "icy"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvk;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfy;Lcom/google/android/gms/internal/ads/zzuz;Lcom/google/android/gms/internal/ads/zzrf;Lcom/google/android/gms/internal/ads/zzra;Lcom/google/android/gms/internal/ads/zzyo;Lcom/google/android/gms/internal/ads/zzuq;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzyk;Ljava/lang/String;IZJLcom/google/android/gms/internal/ads/zzzg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzd:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zze:Lcom/google/android/gms/internal/ads/zzfy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzf:Lcom/google/android/gms/internal/ads/zzrf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzh:Lcom/google/android/gms/internal/ads/zzra;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzg:Lcom/google/android/gms/internal/ads/zzuq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzi:Lcom/google/android/gms/internal/ads/zzvg;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzP:Lcom/google/android/gms/internal/ads/zzyk;

    int-to-long p1, p11

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzj:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzm:Lcom/google/android/gms/internal/ads/zzuz;

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzk:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzda;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;-><init>(Lcom/google/android/gms/internal/ads/zzcx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzn:Lcom/google/android/gms/internal/ads/zzda;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(Lcom/google/android/gms/internal/ads/zzvk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzo:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzvc;-><init>(Lcom/google/android/gms/internal/ads/zzvk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzp:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzei;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzu:[Lcom/google/android/gms/internal/ads/zzvi;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzvx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzD:I

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/ads/zzvk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzU()V

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzafr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzs:Lcom/google/android/gms/internal/ads/zzafr;

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzvk;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzva;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzva;-><init>(Lcom/google/android/gms/internal/ads/zzvk;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzQ()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzvx;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzR(Z)J
    .locals 6

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzvj;->zzc:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    aget-object v3, v3, v0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvx;->zzh()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private final zzS(Lcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzadt;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzu:[Lcom/google/android/gms/internal/ads/zzvi;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzvi;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 3
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzv:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvi;->zza:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaci;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaci;-><init>()V

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzP:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzf:Lcom/google/android/gms/internal/ads/zzrf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzh:Lcom/google/android/gms/internal/ads/zzra;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrf;

    .line 6
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzra;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzyk;Lcom/google/android/gms/internal/ads/zzrf;Lcom/google/android/gms/internal/ads/zzra;)V

    .line 7
    invoke-virtual {v4, p0}, Lcom/google/android/gms/internal/ads/zzvx;->zzv(Lcom/google/android/gms/internal/ads/zzvv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzu:[Lcom/google/android/gms/internal/ads/zzvi;

    add-int/lit8 v2, v0, 0x1

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzvi;

    .line 9
    aput-object p1, v1, v0

    .line 10
    sget p1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzvi;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzu:[Lcom/google/android/gms/internal/ads/zzvi;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 11
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzvx;

    .line 12
    aput-object v4, p1, v0

    .line 13
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzvx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    return-object v4
.end method

.method private final zzT()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final zzU()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzO:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzv:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzvx;->zzi()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzn:Lcom/google/android/gms/internal/ads/zzda;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 4
    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzbr;

    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-ge v4, v0, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzvx;->zzi()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbb;->zzg(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbb;->zzi(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x1

    .line 8
    :goto_3
    aput-boolean v11, v3, v4

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzx:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzx:Z

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbb;->zzh(Ljava/lang/String;)Z

    move-result v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzk:J

    cmp-long v13, v11, v5

    if-eqz v13, :cond_4

    if-ne v0, v7, :cond_4

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzy:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzs:Lcom/google/android/gms/internal/ads/zzafr;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzu:[Lcom/google/android/gms/internal/ads/zzvi;

    .line 10
    aget-object v11, v11, v4

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzvi;->zzb:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzab;->zzl:Lcom/google/android/gms/internal/ads/zzay;

    if-nez v11, :cond_6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzay;

    new-array v12, v7, [Lcom/google/android/gms/internal/ads/zzax;

    aput-object v9, v12, v2

    .line 11
    invoke-direct {v11, v5, v6, v12}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V

    goto :goto_5

    :cond_6
    new-array v5, v7, [Lcom/google/android/gms/internal/ads/zzax;

    aput-object v9, v5, v2

    .line 12
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzay;->zzc([Lcom/google/android/gms/internal/ads/zzax;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v11

    .line 11
    :goto_5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzz;->zzT(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzab;->zzh:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzab;->zzi:I

    if-ne v5, v6, :cond_8

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzafr;->zza:I

    if-eq v5, v6, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzy(I)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v8

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzf:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzrf;->zza(Lcom/google/android/gms/internal/ads/zzab;)I

    move-result v5

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzc(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbr;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzab;

    aput-object v5, v7, v2

    invoke-direct {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzbr;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzab;)V

    aput-object v6, v1, v4

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzab;->zzu:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 12
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvj;

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>([Lcom/google/android/gms/internal/ads/zzbr;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzvj;-><init>(Lcom/google/android/gms/internal/ads/zzwj;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzy:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    cmp-long v2, v0, v5

    if-nez v2, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzve;-><init>(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzadm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzi:Lcom/google/android/gms/internal/ads/zzvg;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    .line 19
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzh()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzC:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzvg;->zza(JZZ)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzud;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzud;->zzi(Lcom/google/android/gms/internal/ads/zzue;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final zzV(I)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzd:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvj;->zza:Lcom/google/android/gms/internal/ads/zzwj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(I)Lcom/google/android/gms/internal/ads/zzbr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbr;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzg:Lcom/google/android/gms/internal/ads/zzuq;

    .line 5
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbb;->zzb(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(IILcom/google/android/gms/internal/ads/zzab;ILjava/lang/Object;JJ)V

    .line 8
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzuq;->zzd(Lcom/google/android/gms/internal/ads/zzuc;)V

    const/4 v0, 0x1

    .line 9
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final zzW(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzb:[Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzL:Z

    if-eqz v1, :cond_2

    .line 3
    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzvx;->zzy(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzL:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzM:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzud;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzud;->zzg(Lcom/google/android/gms/internal/ads/zzwa;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final zzX()V
    .locals 18

    move-object/from16 v7, p0

    .line 1
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzd:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzvk;->zze:Lcom/google/android/gms/internal/ads/zzfy;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzvf;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzm:Lcom/google/android/gms/internal/ads/zzuz;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzn:Lcom/google/android/gms/internal/ads/zzda;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzvf;-><init>(Lcom/google/android/gms/internal/ads/zzvk;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfy;Lcom/google/android/gms/internal/ads/zzuz;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzda;)V

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzY()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzadm;

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzadm;->zzg(J)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzadk;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzadn;->zzc:J

    .line 4
    invoke-static {v8, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzvf;->zzf(Lcom/google/android/gms/internal/ads/zzvf;JJ)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    .line 6
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzvx;->zzu(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    .line 7
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzQ()I

    move-result v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzM:I

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzD:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzyo;->zza(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/internal/ads/zzyt;Lcom/google/android/gms/internal/ads/zzyq;I)J

    move-result-wide v13

    .line 9
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzvf;->zzd(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v12

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzg:Lcom/google/android/gms/internal/ads/zzuq;

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zztx;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v10

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zztx;-><init>(JLcom/google/android/gms/internal/ads/zzgd;J)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzvf;->zzc(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v2

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    new-instance v6, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v14

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v16

    move-object v8, v6

    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(IILcom/google/android/gms/internal/ads/zzab;ILjava/lang/Object;JJ)V

    .line 12
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzuq;->zzh(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzuc;)V

    return-void
.end method

.method private final zzY()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzvk;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzj:J

    return-wide v0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzvk;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    return-wide v0
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/ads/zzvk;Z)J
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvk;->zzR(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzvk;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzt()Lcom/google/android/gms/internal/ads/zzab;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvk;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    return-object v0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzvk;)Lcom/google/android/gms/internal/ads/zzafr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzs:Lcom/google/android/gms/internal/ads/zzafr;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzvk;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzp:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzz()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvk;->zzb:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final zzD()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzE()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzud;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzud;->zzg(Lcom/google/android/gms/internal/ads/zzwa;)V

    :cond_0
    return-void
.end method

.method final synthetic zzF()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzI:Z

    return-void
.end method

.method final synthetic zzG(Lcom/google/android/gms/internal/ads/zzadm;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzs:Lcom/google/android/gms/internal/ads/zzafr;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadl;

    const-wide/16 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(JJ)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadm;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzI:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadm;->zza()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzC:Z

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    :goto_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzD:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzi:Lcom/google/android/gms/internal/ads/zzvg;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzh()Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzC:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzvg;->zza(JZZ)V

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzU()V

    return-void
.end method

.method final zzH()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzD:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyo;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyy;->zzi(I)V

    return-void
.end method

.method final zzI(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvx;->zzn()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzH()V

    return-void
.end method

.method public final bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzyt;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zze(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgx;

    move-result-object v2

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/zztx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzd(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzh()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzi()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzg()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zztx;-><init>(JLcom/google/android/gms/internal/ads/zzgd;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzc(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v1

    move-object v5, v13

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(IILcom/google/android/gms/internal/ads/zzab;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzg:Lcom/google/android/gms/internal/ads/zzuq;

    .line 7
    invoke-virtual {v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzuq;->zze(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzuc;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzud;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzud;->zzg(Lcom/google/android/gms/internal/ads/zzwa;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzyt;JJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvf;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzadm;->zzh()Z

    move-result v2

    .line 3
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzvk;->zzR(Z)J

    move-result-wide v3

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v3, v7

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x2710

    add-long/2addr v3, v7

    :goto_0
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzi:Lcom/google/android/gms/internal/ads/zzvg;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzC:Z

    .line 4
    invoke-interface {v5, v3, v4, v2, v7}, Lcom/google/android/gms/internal/ads/zzvg;->zza(JZZ)V

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zze(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgx;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/zztx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v8

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzd(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzh()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzi()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzg()J

    move-result-wide v17

    move-object v7, v3

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/internal/ads/zztx;-><init>(JLcom/google/android/gms/internal/ads/zzgd;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzg:Lcom/google/android/gms/internal/ads/zzuq;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvf;->zzc(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v4

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v17

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(IILcom/google/android/gms/internal/ads/zzab;ILjava/lang/Object;JJ)V

    .line 10
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzuq;->zzf(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzuc;)V

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzud;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzud;->zzg(Lcom/google/android/gms/internal/ads/zzwa;)V

    return-void
.end method

.method public final zzL()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvx;->zzp()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzm:Lcom/google/android/gms/internal/ads/zzuz;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuz;->zze()V

    return-void
.end method

.method public final zzM(Lcom/google/android/gms/internal/ads/zzab;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzo:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzN()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvx;->zzo()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzyy;->zzj(Lcom/google/android/gms/internal/ads/zzyu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzO:Z

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzadm;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzadm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzq:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzP(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzZ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzvx;->zzy(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(JLcom/google/android/gms/internal/ads/zzlp;)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzh()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    .line 3
    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzadm;->zzg(J)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzadk;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzadk;->zzb:Lcom/google/android/gms/internal/ads/zzadn;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzlp;->zzc:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzlp;->zzd:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    move-wide v8, v5

    :cond_2
    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzadn;->zzb:J

    .line 4
    sget v7, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    sub-long v12, v1, v8

    xor-long v7, v1, v8

    xor-long v14, v1, v12

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzlp;->zzd:J

    add-long v16, v1, v5

    xor-long v18, v1, v16

    xor-long v5, v5, v16

    and-long/2addr v7, v14

    const-wide/16 v14, 0x0

    cmp-long v3, v7, v14

    if-gez v3, :cond_3

    const-wide/high16 v12, -0x8000000000000000L

    :cond_3
    and-long v5, v18, v5

    cmp-long v3, v5, v14

    if-gez v3, :cond_4

    const-wide v16, 0x7fffffffffffffffL

    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x0

    cmp-long v6, v12, v10

    if-gtz v6, :cond_5

    cmp-long v6, v10, v16

    if-gtz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzadn;->zzb:J

    cmp-long v4, v12, v7

    if-gtz v4, :cond_6

    cmp-long v4, v7, v16

    if-gtz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    sub-long v3, v10, v1

    sub-long v1, v7, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gtz v5, :cond_7

    goto :goto_2

    :cond_7
    return-wide v7

    :cond_8
    if-eqz v6, :cond_9

    :goto_2
    move-wide v1, v10

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    move-wide v1, v7

    :goto_3
    return-wide v1

    :cond_a
    return-wide v12
.end method

.method public final zzb()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzY()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzx:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    array-length v0, v0

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 3
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzvj;->zzb:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzvj;->zzc:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    aget-object v9, v9, v6

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzvx;->zzx()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    aget-object v9, v9, v6

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzvx;->zzh()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzvk;->zzR(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzc()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzQ()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzM:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zze(J)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzb:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzh()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzY()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    return-wide p1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzD:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzyy;->zzl()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 4
    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    aget-object v6, v6, v5

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzvx;->zzb()I

    move-result v7

    if-nez v7, :cond_3

    cmp-long v7, v2, p1

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzy:Z

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzvx;->zza()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzvx;->zzz(I)Z

    move-result v6

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v6, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzA(JZ)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_5

    .line 9
    aget-boolean v6, v0, v5

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzx:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzL:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzK:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->zzl()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 10
    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvx;->zzk()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->zzg()V

    goto :goto_6

    .line 13
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 14
    array-length v2, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 15
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-wide p1
.end method

.method public final zzf([Lcom/google/android/gms/internal/ads/zzxv;[Z[Lcom/google/android/gms/internal/ads/zzvy;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvj;->zza:Lcom/google/android/gms/internal/ads/zzwj;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzc:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    .line 6
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/zzvh;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzvh;->zzc(Lcom/google/android/gms/internal/ads/zzvh;)I

    move-result v5

    .line 7
    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    .line 8
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 9
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzE:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    .line 30
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzy:Z

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 10
    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    .line 11
    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzxv;->zzd()I

    move-result v6

    if-ne v6, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 12
    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 13
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzxv;->zza(I)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzxv;->zzg()Lcom/google/android/gms/internal/ads/zzbr;

    move-result-object v6

    .line 14
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzwj;->zza(Lcom/google/android/gms/internal/ads/zzbr;)I

    move-result v6

    .line 15
    aget-boolean v7, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    .line 16
    aput-boolean v4, v0, v6

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    .line 17
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzxv;->zzf()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzab;->zzu:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    new-instance v5, Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Lcom/google/android/gms/internal/ads/zzvk;I)V

    .line 18
    aput-object v5, p3, v2

    .line 19
    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 20
    aget-object p2, p2, v6

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzvx;->zzb()I

    move-result v5

    if-eqz v5, :cond_7

    .line 22
    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzvx;->zzA(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzL:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzG:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzl()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 23
    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzvx;->zzk()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzg()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 26
    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 27
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 28
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzvk;->zze(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 29
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 30
    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 25
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzE:Z

    return-wide p5
.end method

.method final zzg(ILcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzZ()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvk;->zzV(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    .line 3
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzvx;->zze(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvk;->zzW(I)V

    :cond_1
    return p2
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzwj;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvj;->zza:Lcom/google/android/gms/internal/ads/zzwj;

    return-object v0
.end method

.method final zzi(IJ)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzZ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvk;->zzV(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    .line 3
    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzvx;->zzc(JZ)I

    move-result p2

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzvx;->zzw(I)V

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvk;->zzW(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final zzj(JZ)V
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzy:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzT()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzY()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzz:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzvj;->zzc:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 4
    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzvx;->zzj(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final zzk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzH()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 2
    throw v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzud;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzr:Lcom/google/android/gms/internal/ads/zzud;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzn:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzda;->zze()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzX()V

    return-void
.end method

.method public final zzm(J)V
    .locals 0

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzkj;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzN:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzL:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzH:I

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzn:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zze()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzl()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzX()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zzp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zzn:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzyt;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzyr;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvf;->zze(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgx;

    move-result-object v3

    .line 3
    new-instance v14, Lcom/google/android/gms/internal/ads/zztx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvf;->zzd(Lcom/google/android/gms/internal/ads/zzvf;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzh()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzi()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzg()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v3, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zztx;-><init>(JLcom/google/android/gms/internal/ads/zzgd;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvf;->zzc(Lcom/google/android/gms/internal/ads/zzvf;)J

    .line 5
    sget v4, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzbc;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    .line 6
    instance-of v4, v1, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzgo;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzyw;

    if-nez v4, :cond_2

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzfz;

    if-eqz v7, :cond_0

    .line 7
    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfz;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzfz;->zza:I

    const/16 v8, 0x7d8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v7, 0x1388

    .line 9
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v5

    :goto_2
    const/4 v4, 0x1

    cmp-long v9, v7, v5

    if-nez v9, :cond_3

    .line 7
    sget-object v5, Lcom/google/android/gms/internal/ads/zzyy;->zzb:Lcom/google/android/gms/internal/ads/zzyr;

    goto :goto_7

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzQ()I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzM:I

    const/4 v11, 0x0

    if-le v9, v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzI:Z

    if-nez v12, :cond_8

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzA:Lcom/google/android/gms/internal/ads/zzadm;

    if-eqz v12, :cond_5

    .line 11
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzadm;->zza()J

    move-result-wide v12

    cmp-long v14, v12, v5

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzw:Z

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvk;->zzZ()Z

    move-result v6

    if-nez v6, :cond_6

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzL:Z

    sget-object v5, Lcom/google/android/gms/internal/ads/zzyy;->zza:Lcom/google/android/gms/internal/ads/zzyr;

    goto :goto_7

    :cond_6
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzF:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzJ:J

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzM:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzt:[Lcom/google/android/gms/internal/ads/zzvx;

    .line 12
    array-length v12, v9

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_7

    aget-object v14, v9, v13

    .line 13
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {v2, v5, v6, v5, v6}, Lcom/google/android/gms/internal/ads/zzvf;->zzf(Lcom/google/android/gms/internal/ads/zzvf;JJ)V

    goto :goto_6

    .line 11
    :cond_8
    :goto_5
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzM:I

    :goto_6
    invoke-static {v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzyy;->zzb(ZJ)Lcom/google/android/gms/internal/ads/zzyr;

    move-result-object v5

    .line 7
    :goto_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzyr;->zzc()Z

    move-result v6

    xor-int/2addr v4, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzg:Lcom/google/android/gms/internal/ads/zzuq;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvf;->zzc(Lcom/google/android/gms/internal/ads/zzvf;)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzvk;->zzB:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v17

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzei;->zzv(J)J

    move-result-wide v19

    new-instance v7, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(IILcom/google/android/gms/internal/ads/zzab;ILjava/lang/Object;JJ)V

    .line 16
    invoke-virtual {v6, v3, v7, v1, v4}, Lcom/google/android/gms/internal/ads/zzuq;->zzg(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzuc;Ljava/io/IOException;Z)V

    if-eqz v4, :cond_9

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvf;->zzb(Lcom/google/android/gms/internal/ads/zzvf;)J

    :cond_9
    return-object v5
.end method

.method final zzv()Lcom/google/android/gms/internal/ads/zzadt;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvi;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvi;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvk;->zzS(Lcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v0

    return-object v0
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzadt;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzvi;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzvi;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzvk;->zzS(Lcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    return-object p1
.end method
