.class public abstract Lcom/google/android/gms/internal/ads/zzsn;
.super Lcom/google/android/gms/internal/ads/zzhr;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:I

.field private zzB:Z

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:J

.field private zzI:J

.field private zzJ:I

.field private zzK:I

.field private zzL:Ljava/nio/ByteBuffer;

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:I

.field private zzT:I

.field private zzU:I

.field private zzV:Z

.field private zzW:Z

.field private zzX:Z

.field private zzY:J

.field private zzZ:J

.field protected zza:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzaa:Z

.field private zzab:Z

.field private zzac:Z

.field private zzad:Lcom/google/android/gms/internal/ads/zzsl;

.field private zzae:J

.field private zzaf:Z

.field private zzag:Lcom/google/android/gms/internal/ads/zzrg;

.field private zzah:Lcom/google/android/gms/internal/ads/zzrg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzsb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzsp;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzru;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzqt;

.field private zzm:Lcom/google/android/gms/internal/ads/zzab;

.field private zzn:Lcom/google/android/gms/internal/ads/zzab;

.field private zzo:Lcom/google/android/gms/internal/ads/zzli;

.field private zzp:Landroid/media/MediaCrypto;

.field private zzq:F

.field private zzr:F

.field private zzs:Lcom/google/android/gms/internal/ads/zzsd;

.field private zzt:Lcom/google/android/gms/internal/ads/zzab;

.field private zzu:Landroid/media/MediaFormat;

.field private zzv:Z

.field private zzw:F

.field private zzx:Ljava/util/ArrayDeque;

.field private zzy:Lcom/google/android/gms/internal/ads/zzsj;

.field private zzz:Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsn;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzsb;Lcom/google/android/gms/internal/ads/zzsp;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Lcom/google/android/gms/internal/ads/zzsb;

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsp;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzsn;->zze:F

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p3, 0x2

    .line 6
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzru;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzru;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzq:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    new-instance p3, Ljava/util/ArrayDeque;

    .line 9
    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzsl;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzru;->zzc:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method protected static zzaP(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzK:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzaQ()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzaf:Z

    :cond_0
    return-void
.end method

.method private final zzaS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    return-void
.end method

.method private final zzaT()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaS()V

    :goto_0
    return v1
.end method

.method private final zzaU()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaV(JJ)Z
    .locals 4

    const/4 v0, 0x0

    cmp-long v1, p3, p1

    if-gez v1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzadi;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private final zzaW(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzk()Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhr;->zzcU(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result p1

    const/4 v0, -0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzcT()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzT()[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzZ(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzae()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzq(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    :cond_3
    :goto_0
    return v2
.end method

.method private final zzad()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqt;->zzb()V

    return-void
.end method

.method private final zzae()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    return-void
.end method

.method private final zzah()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaH()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaH()V

    .line 3
    throw v0
.end method

.method private final zzai()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaq()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaS()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    return-void
.end method

.method private final zzao()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic zzax(Lcom/google/android/gms/internal/ads/zzsn;)Lcom/google/android/gms/internal/ads/zzli;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzo:Lcom/google/android/gms/internal/ads/zzli;

    return-object p0
.end method


# virtual methods
.method protected zzC()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzad()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    .line 3
    throw v1
.end method

.method protected zzF([Lcom/google/android/gms/internal/ads/zzab;JJLcom/google/android/gms/internal/ads/zzug;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsl;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v6, v1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(JJJ)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_3

    cmp-long v7, v5, v1

    if-ltz v7, :cond_3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsl;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(JJJ)V

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 6
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzap()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    move-object v2, v9

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(JJJ)V

    .line 4
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzq:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    return-void
.end method

.method public zzV(JJ)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_11

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaq()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object v3, v0

    move-object v1, v15

    :goto_1
    const/4 v2, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v1, v15

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_0
    :try_start_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_11

    const/4 v11, 0x2

    if-nez v1, :cond_2

    .line 2
    :try_start_3
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzaW(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_11

    if-eqz v1, :cond_18

    :try_start_5
    const-string v1, "bypassRender"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_4
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    xor-int/2addr v1, v13

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v2
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v2, :cond_4

    :try_start_6
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzru;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzm()I

    move-result v10

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzru;->zze:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzn()J

    move-result-wide v12

    .line 6
    invoke-direct {v15, v2, v3, v12, v13}, Lcom/google/android/gms/internal/ads/zzsn;->zzaV(JJ)Z

    move-result v13

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result v18

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 43
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 7
    :try_start_7
    move-object v1, v11

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-object/from16 v17, v11

    move-wide/from16 v11, v19

    move/from16 v14, v18

    move-object/from16 v15, v17

    .line 8
    :try_start_8
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v1, :cond_3

    move-object/from16 v15, p0

    :try_start_9
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzn()J

    move-result-wide v1

    .line 9
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzaD(J)V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    goto :goto_5

    :cond_3
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_b

    :cond_4
    :goto_5
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-eqz v1, :cond_5

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_5
    const/4 v14, 0x1

    .line 142
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    if-eqz v1, :cond_6

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzru;->zzp(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    :goto_6
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    if-eqz v1, :cond_8

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v1

    if-nez v1, :cond_7

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzad()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-eqz v1, :cond_17

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_8
    :goto_8
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    xor-int/2addr v1, v14

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzk()Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v1

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    :cond_9
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 18
    invoke-virtual {v15, v1, v2, v13}, Lcom/google/android/gms/internal/ads/zzhr;->zzcU(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result v2

    const/4 v12, -0x5

    if-eq v2, v12, :cond_14

    const/4 v3, -0x4

    if-eq v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    goto/16 :goto_a

    .line 38
    :cond_a
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result v3

    if-eqz v3, :cond_b

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    goto/16 :goto_a

    :cond_b
    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzh()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iput-wide v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    :cond_d
    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v3, "audio/opus"

    if-eqz v2, :cond_f

    :try_start_a
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_b
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzab;

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 24
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadi;->zza([B)I

    move-result v2

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :try_start_c
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    .line 26
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    :cond_e
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v4, 0x0

    .line 28
    invoke-virtual {v15, v2, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zzan(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    :cond_f
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()V

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 30
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zze()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzhh;->zza:Lcom/google/android/gms/internal/ads/zzab;

    .line 31
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzaj(Lcom/google/android/gms/internal/ads/zzhh;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v2

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    invoke-static {v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzadi;->zzf(JJ)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_0

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    :try_start_d
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 33
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzhh;Ljava/util/List;)V

    :cond_11
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_9

    .line 36
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzru;->zzn()J

    move-result-wide v5

    .line 34
    invoke-direct {v15, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzsn;->zzaV(JJ)Z

    move-result v2

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    .line 35
    invoke-direct {v15, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzsn;->zzaV(JJ)Z

    move-result v3

    if-ne v2, v3, :cond_13

    .line 33
    :goto_9
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzru;->zzp(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_13
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    goto :goto_a

    .line 37
    :cond_14
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;

    .line 18
    :cond_15
    :goto_a
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()V

    :cond_16
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-nez v1, :cond_7

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    if-eqz v1, :cond_17

    goto/16 :goto_7

    .line 42
    :cond_17
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_0

    move-object v1, v15

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v12, -0x5

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 37
    :try_start_e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v1, :cond_47

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    const-string v1, "drainAndFeed"

    .line 45
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_c
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_11

    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    :try_start_f
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaU()Z

    move-result v1
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_11

    if-nez v1, :cond_27

    :try_start_10
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v1, :cond_19

    :try_start_11
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzsd;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_d

    .line 73
    :catch_3
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    if-eqz v1, :cond_28

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    goto/16 :goto_11

    .line 65
    :cond_19
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 47
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzsd;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    :goto_d
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v1, :cond_1f

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1b

    .line 48
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzX:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    :try_start_13
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsd;->zzc()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    if-eqz v2, :cond_1a

    const-string v2, "width"

    .line 50
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1a

    const-string v2, "height"

    .line 51
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1a

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    goto :goto_c

    :cond_1a
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    goto :goto_c

    :cond_1b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-nez v1, :cond_1c

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    if-ne v1, v11, :cond_1d

    .line 76
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    :cond_1d
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1e

    goto/16 :goto_11

    :cond_1e
    const-wide/16 v1, 0x64

    add-long/2addr v4, v1

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcx;->zza()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-gez v3, :cond_28

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto/16 :goto_11

    :cond_1f
    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    if-eqz v4, :cond_20

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    .line 52
    invoke-interface {v6, v1, v13}, Lcom/google/android/gms/internal/ads/zzsd;->zzo(IZ)V

    goto/16 :goto_c

    :cond_20
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_21

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_21

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto/16 :goto_11

    :cond_21
    iput v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    .line 54
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzsd;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_22

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 56
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_22
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v7

    cmp-long v1, v4, v7

    if-gez v1, :cond_23

    const/4 v1, 0x1

    goto :goto_e

    :cond_23
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_24

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 58
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v3, v4, v1

    if-gtz v3, :cond_24

    const/4 v1, 0x1

    goto :goto_f

    :cond_24
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 59
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 60
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    if-nez v1, :cond_25

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaf:Z

    if-eqz v2, :cond_25

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    if-eqz v2, :cond_25

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 61
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    :cond_25
    if-eqz v1, :cond_26

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_10

    .line 65
    :cond_26
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    if-eqz v1, :cond_27

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v1, :cond_27

    .line 61
    :goto_10
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    :try_start_14
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzan(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzaf:Z
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_0

    :cond_27
    :try_start_15
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_11

    if-eqz v1, :cond_29

    :try_start_16
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v1, :cond_29

    :try_start_17
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 66
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v10, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_4

    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x1

    .line 67
    :try_start_18
    move-object v1, v3

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move/from16 v21, v10

    move/from16 v10, v16

    move-wide/from16 v11, v19

    move/from16 v13, v21

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 68
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_22

    .line 82
    :catch_5
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_6

    move-object/from16 v15, p0

    :try_start_1a
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    if-eqz v1, :cond_28

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V
    :try_end_1a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_0

    :cond_28
    :goto_11
    move-object v1, v15

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1d

    .line 80
    :cond_29
    :try_start_1b
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 63
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 79
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x1

    .line 64
    :try_start_1c
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;
    :try_end_1c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_11

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v17, v10

    move/from16 v10, v16

    move-object/from16 v15, v17

    .line 65
    :try_start_1d
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1
    :try_end_1d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d .. :try_end_1d} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_e

    :goto_12
    if-eqz v1, :cond_2d

    move-object/from16 v1, p0

    .line 68
    :try_start_1e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 69
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaD(J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 70
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2a

    const/4 v14, 0x1

    goto :goto_13

    :cond_2a
    const/4 v14, 0x0

    :goto_13
    if-nez v14, :cond_2b

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    if-eqz v2, :cond_2b

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcx;->zza()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    .line 72
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaQ()V

    if-eqz v14, :cond_2c

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V
    :try_end_1e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1e .. :try_end_1e} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_7

    goto :goto_14

    :cond_2c
    move-object v15, v1

    const/4 v11, 0x2

    const/4 v12, -0x5

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v3, v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v3, v0

    goto/16 :goto_2

    :cond_2d
    move-object/from16 v1, p0

    .line 76
    :cond_2e
    :goto_14
    :try_start_1f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v4, :cond_45

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_45

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-eqz v2, :cond_2f

    goto/16 :goto_18

    .line 86
    :cond_2f
    move-object v2, v4

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsd;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I
    :try_end_1f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_c

    if-gez v2, :cond_30

    .line 87
    :try_start_20
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzsd;->zza()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    if-ltz v2, :cond_45

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 88
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzsd;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V
    :try_end_20
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_20 .. :try_end_20} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_7

    :cond_30
    :try_start_21
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I
    :try_end_21
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_c

    const/4 v11, 0x1

    if-ne v2, v11, :cond_32

    :try_start_22
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    if-nez v2, :cond_31

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 125
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    :cond_31
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I
    :try_end_22
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_22 .. :try_end_22} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_9

    const/4 v2, 0x0

    goto/16 :goto_19

    :catch_9
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_32
    :try_start_23
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z
    :try_end_23
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_23 .. :try_end_23} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_b

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    :try_start_24
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;
    :try_end_24
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_f

    .line 127
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    :try_start_25
    move-object v6, v5

    check-cast v6, Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzsn;->zzb:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const/4 v6, 0x0

    const/16 v7, 0x26

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 91
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    goto :goto_14

    :cond_33
    const/4 v2, 0x0

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v5, v11, :cond_35

    const/4 v14, 0x0

    :goto_15
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_25
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_25 .. :try_end_25} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_f

    .line 138
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    :try_start_26
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_34

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    .line 94
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_26 .. :try_end_26} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_f

    .line 128
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    :try_start_27
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    :cond_34
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    :cond_35
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;
    :try_end_27
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_27 .. :try_end_27} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_27} :catch_f

    .line 137
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    :try_start_28
    move-object v6, v5

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzk()Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v6
    :try_end_28
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_28 .. :try_end_28} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_28} :catch_f

    :try_start_29
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 98
    invoke-virtual {v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzcU(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result v7
    :try_end_29
    .catch Lcom/google/android/gms/internal/ads/zzhg; {:try_start_29 .. :try_end_29} :catch_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_29 .. :try_end_29} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_29} :catch_f

    const/4 v8, -0x3

    if-ne v7, v8, :cond_36

    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    goto/16 :goto_19

    :cond_36
    const/4 v12, -0x5

    if-ne v7, v12, :cond_38

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v4, v3, :cond_37

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    .line 103
    :cond_37
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzsn;->zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;

    goto/16 :goto_14

    :cond_38
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result v7

    if-eqz v7, :cond_3b

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v5, v3, :cond_39

    .line 129
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    :cond_39
    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-nez v3, :cond_3a

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto/16 :goto_19

    :cond_3a
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    if-nez v3, :cond_46

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 131
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    goto/16 :goto_19

    :cond_3b
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-nez v7, :cond_3c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhb;->zzg()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 124
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v4, v3, :cond_2e

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    goto/16 :goto_14

    .line 104
    :cond_3c
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzsn;->zzaO(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v6

    if-eqz v6, :cond_3d

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 105
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 106
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    add-int/2addr v5, v11

    iput v5, v4, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    goto/16 :goto_14

    :cond_3d
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzl()Z

    move-result v7

    if-eqz v7, :cond_3e

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    .line 107
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(I)V

    :cond_3e
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    if-eqz v5, :cond_40

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_2a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2a .. :try_end_2a} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_2a} :catch_f

    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    :try_start_2b
    move-object v10, v6

    check-cast v10, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v5, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzee;->zzd(JLjava/lang/Object;)V

    goto :goto_16

    .line 119
    :cond_3f
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 111
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_2b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2b} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2b} :catch_f

    .line 136
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    :try_start_2c
    move-object v10, v6

    check-cast v10, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v5, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzee;->zzd(JLjava/lang/Object;)V

    .line 110
    :goto_16
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    :cond_40
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    .line 112
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v10

    if-nez v10, :cond_41

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzhb;->zzh()Z

    move-result v10

    if-eqz v10, :cond_42

    :cond_41
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    :cond_42
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 113
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhb;->zze()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 114
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzaj(Lcom/google/android/gms/internal/ads/zzhh;)V

    :cond_43
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 115
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzaE(Lcom/google/android/gms/internal/ads/zzhh;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 116
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzau(Lcom/google/android/gms/internal/ads/zzhh;)I

    if-eqz v7, :cond_44

    .line 120
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsd;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v10, 0x0

    .line 121
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsd;->zzl(IILcom/google/android/gms/internal/ads/zzhe;JI)V

    goto :goto_17

    .line 117
    :cond_44
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsd;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;
    :try_end_2c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2c .. :try_end_2c} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2c} :catch_f

    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    .line 118
    :try_start_2d
    move-object v10, v6

    check-cast v10, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    const/4 v13, 0x0

    move v6, v7

    move v7, v10

    move v10, v13

    .line 119
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 122
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 123
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    add-int/2addr v5, v11

    iput v5, v4, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    goto/16 :goto_14

    :catch_a
    move-exception v0

    const/4 v12, -0x5

    move-object v4, v0

    .line 99
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zzak(Ljava/lang/Exception;)V

    .line 100
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzaW(I)Z

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    goto/16 :goto_14

    :catch_b
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1c

    :cond_45
    :goto_18
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 133
    :cond_46
    :goto_19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1a

    :catch_c
    move-exception v0

    goto :goto_1b

    :catch_d
    move-exception v0

    goto/16 :goto_21

    :catch_e
    move-exception v0

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    goto :goto_1c

    :cond_47
    move-object v1, v15

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 47
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 140
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzhr;->zzd(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    .line 141
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzaW(I)Z

    .line 42
    :goto_1a
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 142
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhs;->zza()V
    :try_end_2d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2d .. :try_end_2d} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_2d} :catch_f

    return-void

    :catch_f
    move-exception v0

    goto :goto_1c

    :catch_10
    move-exception v0

    goto :goto_22

    :catch_11
    move-exception v0

    move-object v1, v15

    :goto_1b
    const/4 v2, 0x0

    const/4 v11, 0x1

    :goto_1c
    move-object v3, v0

    .line 143
    :goto_1d
    instance-of v4, v3, Landroid/media/MediaCodec$CodecException;

    if-eqz v4, :cond_48

    goto :goto_1e

    .line 144
    :cond_48
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 145
    array-length v6, v5

    if-lez v6, :cond_4c

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 147
    :goto_1e
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzak(Ljava/lang/Exception;)V

    if-eqz v4, :cond_49

    .line 148
    move-object v4, v3

    check-cast v4, Landroid/media/MediaCodec$CodecException;

    .line 149
    invoke-virtual {v4}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v14, 0x1

    goto :goto_1f

    :cond_49
    const/4 v14, 0x0

    :goto_1f
    if-eqz v14, :cond_4a

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    :cond_4a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    .line 151
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsg;)Lcom/google/android/gms/internal/ads/zzsf;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzsf;->zzb:I

    const/16 v4, 0x44d

    if-ne v3, v4, :cond_4b

    const/16 v3, 0xfa6

    goto :goto_20

    :cond_4b
    const/16 v3, 0xfa3

    :goto_20
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    .line 152
    invoke-virtual {v1, v2, v4, v14, v3}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v2

    throw v2

    .line 146
    :cond_4c
    throw v3

    :catch_12
    move-exception v0

    move-object v1, v15

    :goto_21
    const/4 v2, 0x0

    :goto_22
    move-object v3, v0

    .line 141
    :goto_23
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    .line 153
    invoke-virtual {v3}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzei;->zzl(I)I

    move-result v5

    .line 154
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v2

    .line 155
    throw v2
.end method

.method public zzW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    return v0
.end method

.method public zzX()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzS()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaU()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzY(Lcom/google/android/gms/internal/ads/zzab;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsp;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaa(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected zzZ(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsg;)Lcom/google/android/gms/internal/ads/zzsf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsg;)V

    return-object v0
.end method

.method protected final zzaB()Lcom/google/android/gms/internal/ads/zzsg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    return-object v0
.end method

.method protected final zzaC()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v9, "MediaCodecRenderer"

    .line 1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-nez v0, :cond_42

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-nez v0, :cond_42

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v10, :cond_0

    goto/16 :goto_19

    :cond_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzaM(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzad()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    .line 7
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzru;->zzo(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzru;->zzo(I)V

    .line 7
    :goto_0
    iput-boolean v11, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    return-void

    .line 6
    :cond_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    .line 9
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzrh;->zza:Z

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->zza()Lcom/google/android/gms/internal/ads/zzqy;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_0 .. :try_end_0} :catch_a

    .line 141
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :try_start_1
    move-object v0, v13

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_1 .. :try_end_1} :catch_a

    const/4 v14, 0x0

    if-nez v0, :cond_5

    :try_start_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsp;

    .line 12
    invoke-virtual {v8, v0, v13, v12}, Lcom/google/android/gms/internal/ads/zzsn;->zzag(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;Z)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 16
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v14, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_2 .. :try_end_2} :catch_a

    goto :goto_1

    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsj;

    const v2, -0xc34e

    .line 17
    invoke-direct {v1, v13, v0, v12, v2}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 16
    :cond_5
    :goto_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 19
    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_3 .. :try_end_3} :catch_a

    .line 140
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_4
    move-object v0, v15

    check-cast v0, Ljava/util/ArrayDeque;

    :goto_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-nez v0, :cond_40

    .line 21
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzsg;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_4 .. :try_end_4} :catch_a

    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :try_start_5
    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsg;

    .line 22
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzsn;->zzaN(Lcom/google/android/gms/internal/ads/zzsg;)Z

    move-result v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_5 .. :try_end_5} :catch_a

    if-eqz v0, :cond_42

    :try_start_6
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    :try_start_7
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    .line 24
    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 114
    :cond_6
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzT()[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v5

    invoke-virtual {v8, v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzZ(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F

    move-result v1

    .line 24
    :goto_3
    iget v5, v8, Lcom/google/android/gms/internal/ads/zzsn;->zze:F

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_7

    const/high16 v1, -0x40800000    # -1.0f

    .line 26
    :cond_7
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaF(Lcom/google/android/gms/internal/ads/zzab;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v16

    .line 28
    invoke-virtual {v8, v6, v0, v14, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaf(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object v5

    sget v7, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v3, 0x1f

    if-lt v7, v3, :cond_8

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzo()Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzog;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v3

    .line 31
    sget-object v7, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v3, v7}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzsa;->zzb:Landroid/media/MediaFormat;

    const-string v11, "log-session-id"

    .line 32
    invoke-virtual {v3}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v11, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :cond_8
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Lcom/google/android/gms/internal/ads/zzsb;

    .line 35
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzsb;->zzd(Lcom/google/android/gms/internal/ads/zzsa;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzsk;

    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zzsk;-><init>(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzsm;)V

    .line 36
    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/ads/zzsd;->zzs(Lcom/google/android/gms/internal/ads/zzsc;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 37
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v18

    .line 40
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zze(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v7, 0x2

    if-nez v3, :cond_30

    :try_start_a
    const-string v3, "Format exceeds selected codec\'s capabilities [%s, %s]"

    new-array v11, v7, [Ljava/lang/Object;

    const-string v14, ","

    .line 41
    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id="

    .line 43
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zza:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mimeType="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzn:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    if-eqz v12, :cond_9

    :try_start_b
    const-string v12, ", container="

    .line 44
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzn:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :try_start_c
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzj:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    const/4 v4, -0x1

    if-eq v12, v4, :cond_a

    :try_start_d
    const-string v12, ", bitrate="

    .line 45
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :cond_a
    :try_start_e
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzk:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    if-eqz v12, :cond_b

    :try_start_f
    const-string v12, ", codecs="

    .line 46
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzk:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    :cond_b
    :try_start_10
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzab;->zzs:Lcom/google/android/gms/internal/ads/zzu;

    if-eqz v12, :cond_12

    new-instance v12, Ljava/util/LinkedHashSet;

    .line 47
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    move-object/from16 v21, v10

    const/4 v4, 0x0

    :goto_4
    :try_start_11
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzab;->zzs:Lcom/google/android/gms/internal/ads/zzu;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    move-object/from16 v22, v13

    .line 48
    :try_start_12
    iget v13, v10, Lcom/google/android/gms/internal/ads/zzu;->zzb:I

    if-ge v4, v13, :cond_11

    .line 49
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzu;->zza(I)Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzt;->zza:Ljava/util/UUID;

    .line 50
    sget-object v13, Lcom/google/android/gms/internal/ads/zzh;->zzb:Ljava/util/UUID;

    invoke-virtual {v10, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    if-eqz v13, :cond_c

    :try_start_13
    const-string v10, "cenc"

    .line 51
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :goto_5
    move-object/from16 v23, v15

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v13, v6

    move-object/from16 v23, v15

    goto/16 :goto_13

    :cond_c
    :try_start_14
    sget-object v13, Lcom/google/android/gms/internal/ads/zzh;->zzc:Ljava/util/UUID;

    .line 52
    invoke-virtual {v10, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    if-eqz v13, :cond_d

    :try_start_15
    const-string v10, "clearkey"

    .line 53
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_5

    :cond_d
    :try_start_16
    sget-object v13, Lcom/google/android/gms/internal/ads/zzh;->zze:Ljava/util/UUID;

    .line 54
    invoke-virtual {v10, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    if-eqz v13, :cond_e

    :try_start_17
    const-string v10, "playready"

    .line 55
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_5

    :cond_e
    :try_start_18
    sget-object v13, Lcom/google/android/gms/internal/ads/zzh;->zzd:Ljava/util/UUID;

    .line 56
    invoke-virtual {v10, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    if-eqz v13, :cond_f

    :try_start_19
    const-string v10, "widevine"

    .line 57
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    goto :goto_5

    :cond_f
    :try_start_1a
    sget-object v13, Lcom/google/android/gms/internal/ads/zzh;->zza:Ljava/util/UUID;

    .line 58
    invoke-virtual {v10, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    if-eqz v13, :cond_10

    :try_start_1b
    const-string v10, "universal"

    .line 59
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    goto :goto_5

    .line 60
    :cond_10
    :try_start_1c
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2

    move-object/from16 v23, v15

    :try_start_1d
    const-string v15, "unknown ("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v22

    move-object/from16 v15, v23

    goto/16 :goto_4

    :cond_11
    move-object/from16 v23, v15

    const-string v4, ", drm=["

    .line 61
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v7, v12, v14}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    .line 63
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :cond_12
    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v15

    :goto_7
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    const/4 v10, -0x1

    if-eq v4, v10, :cond_13

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-eq v4, v10, :cond_13

    const-string v4, ", res="

    .line 64
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zze()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    const-string v4, ", color="

    .line 65
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_16

    const-string v4, ", fps="

    .line 66
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_16
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    const/4 v10, -0x1

    if-eq v4, v10, :cond_17

    const-string v4, ", channels="

    .line 67
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_17
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    const/4 v10, -0x1

    if-eq v4, v10, :cond_18

    const-string v4, ", sample_rate="

    .line 68
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    if-eqz v4, :cond_19

    const-string v4, ", language="

    .line 69
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzc:Ljava/util/List;

    .line 70
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6

    const-string v10, "]"

    if-nez v4, :cond_1a

    :try_start_1e
    const-string v4, ", labels=["

    .line 71
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzc:Ljava/util/List;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzy;-><init>()V

    .line 72
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/zzfyd;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    move-result-object v4

    .line 73
    invoke-static {v7, v4, v14}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zze:I

    if-eqz v4, :cond_1d

    const-string v4, ", selectionFlags=["

    .line 75
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zze:I

    new-instance v12, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v13, v4, 0x1

    if-eqz v13, :cond_1b

    const-string v13, "default"

    .line 77
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1c

    const-string v4, "forced"

    .line 78
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1c
    invoke-static {v7, v12, v14}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    const v12, 0x8000

    if-eqz v4, :cond_2e

    const-string v4, ", roleFlags=["

    .line 81
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    new-instance v13, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v15, v4, 0x1

    if-eqz v15, :cond_1e

    const-string v15, "main"

    .line 83
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    and-int/lit8 v15, v4, 0x2

    if-eqz v15, :cond_1f

    const-string v15, "alt"

    .line 84
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    and-int/lit8 v15, v4, 0x4

    if-eqz v15, :cond_20

    const-string v15, "supplementary"

    .line 85
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v15, v4, 0x8

    if-eqz v15, :cond_21

    const-string v15, "commentary"

    .line 86
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v15, v4, 0x10

    if-eqz v15, :cond_22

    const-string v15, "dub"

    .line 87
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v15, v4, 0x20

    if-eqz v15, :cond_23

    const-string v15, "emergency"

    .line 88
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v15, v4, 0x40

    if-eqz v15, :cond_24

    const-string v15, "caption"

    .line 89
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit16 v15, v4, 0x80

    if-eqz v15, :cond_25

    const-string v15, "subtitle"

    .line 90
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit16 v15, v4, 0x100

    if-eqz v15, :cond_26

    const-string v15, "sign"

    .line 91
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v15, v4, 0x200

    if-eqz v15, :cond_27

    const-string v15, "describes-video"

    .line 92
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v15, v4, 0x400

    if-eqz v15, :cond_28

    const-string v15, "describes-music"

    .line 93
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v15, v4, 0x800

    if-eqz v15, :cond_29

    const-string v15, "enhanced-intelligibility"

    .line 94
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v15, v4, 0x1000

    if-eqz v15, :cond_2a

    const-string v15, "transcribes-dialog"

    .line 95
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v15, v4, 0x2000

    if-eqz v15, :cond_2b

    const-string v15, "easy-read"

    .line 96
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v15, v4, 0x4000

    if-eqz v15, :cond_2c

    const-string v15, "trick-play"

    .line 97
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int/2addr v4, v12

    if-eqz v4, :cond_2d

    const-string v4, "auxiliary"

    .line 98
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2d
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    and-int/2addr v4, v12

    if-eqz v4, :cond_2f

    const-string v4, ", auxiliaryTrackType="

    .line 101
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "undefined"

    .line 102
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v11, v7

    const/4 v4, 0x1

    aput-object v2, v11, v4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 103
    invoke-static {v4, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v21, v10

    :goto_8
    move-object/from16 v22, v13

    :goto_9
    move-object/from16 v23, v15

    goto/16 :goto_12

    :cond_30
    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v15

    :goto_a
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_32

    const-string v0, "OMX.Exynos.avc.dec.secure"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v3, "SM-T585"

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v3, "SM-A510"

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v3, "SM-A520"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v3, "SM-J700"

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    const/4 v0, 0x2

    goto :goto_b

    .line 129
    :cond_32
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v3, 0x18

    if-ge v0, v3, :cond_35

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_33
    const-string v0, "flounder"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "flounder_lte"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "grouper"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "tilapia"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    const/4 v0, 0x1

    goto :goto_b

    :cond_35
    const/4 v0, 0x0

    .line 109
    :goto_b
    iput v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_36

    const-string v0, "c2.android.aac.decoder"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_c

    :cond_36
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzB:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x17

    if-gt v0, v4, :cond_37

    const-string v0, "OMX.google.vorbis.decoder"

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_d

    :cond_37
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x15

    if-ne v0, v4, :cond_38

    const-string v0, "OMX.google.aac.decoder"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_e

    :cond_38
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    sget v4, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-gt v4, v1, :cond_3a

    const-string v1, "OMX.rk.video_decoder.avc"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_10

    :cond_39
    :goto_f
    const/4 v0, 0x1

    goto :goto_11

    :cond_3a
    :goto_10
    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-gt v1, v3, :cond_3b

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_3b
    const-string v0, "Amazon"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzei;->zzc:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "AFTS"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzsg;->zzf:Z

    if-eqz v0, :cond_3c

    goto :goto_f

    :cond_3c
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    :try_start_1f
    check-cast v0, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzcT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v0, v3

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    :cond_3d
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 128
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhs;->zza:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    const/4 v10, 0x1

    add-int/2addr v1, v10

    :try_start_20
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhs;->zza:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_5

    sub-long v11, v18, v16

    move-object/from16 v1, p0

    move-object v3, v5

    move-wide/from16 v4, v18

    move-object v13, v6

    move-wide v6, v11

    .line 129
    :try_start_21
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzsn;->zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsa;JJ)V

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    goto :goto_17

    :catch_5
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    :goto_12
    move-object v13, v6

    :goto_13
    const/4 v10, 0x1

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v15

    const/4 v10, 0x1

    move-object v13, v6

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    throw v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7

    :catch_7
    move-exception v0

    goto :goto_15

    :catch_8
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v15

    const/4 v10, 0x1

    :goto_14
    move-object v13, v6

    .line 139
    :goto_15
    :try_start_22
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsj;

    move-object/from16 v2, v22

    const/4 v3, 0x0

    .line 134
    invoke-direct {v1, v2, v0, v3, v13}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsg;)V

    .line 135
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzak(Ljava/lang/Exception;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    if-nez v0, :cond_3e

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    goto :goto_16

    .line 136
    :cond_3e
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsj;->zza(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsj;)Lcom/google/android/gms/internal/ads/zzsj;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    .line 137
    :goto_16
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    move-object v13, v2

    move-object/from16 v10, v21

    :goto_17
    move-object/from16 v15, v23

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_3f
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    .line 138
    throw v0

    :cond_40
    move-object/from16 v21, v10

    move-object v1, v14

    .line 25
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    return-void

    :cond_41
    move-object/from16 v21, v10

    move-object v2, v13

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsj;

    const v1, -0xc34f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_22 .. :try_end_22} :catch_9

    :catch_9
    move-exception v0

    goto :goto_18

    :catch_a
    move-exception v0

    move-object/from16 v21, v10

    :goto_18
    const/16 v1, 0xfa1

    move-object/from16 v2, v21

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v8, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v0

    .line 143
    throw v0

    :cond_42
    :goto_19
    return-void
.end method

.method protected zzaD(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zzb:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsl;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzaE(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected zzaF(Lcom/google/android/gms/internal/ads/zzab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected final zzaG()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsd;->zzm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzam(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaI()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaI()V

    .line 6
    throw v1
.end method

.method protected zzaH()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaQ()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    return-void
.end method

.method protected final zzaI()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzX:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzB:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    return-void
.end method

.method protected final zzaJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    :cond_0
    return v0
.end method

.method protected final zzaK()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzB:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzX:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    if-nez v2, :cond_5

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-lt v0, v2, :cond_4

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaS()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzib; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    return v3

    .line 5
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    return v1

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    return v3
.end method

.method protected final zzaL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    return v0
.end method

.method protected final zzaM(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzas(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaN(Lcom/google/android/gms/internal/ads/zzsg;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaO(Lcom/google/android/gms/internal/ads/zzhh;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzaa(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzsu;
        }
    .end annotation
.end method

.method protected zzab(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzab;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    const-string v4, "video/av01"

    .line 4
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    :cond_0
    move-object v8, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzke;->zzb:Lcom/google/android/gms/internal/ads/zzrg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-nez v1, :cond_2

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    return-object v4

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    .line 22
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v4, v7

    check-cast v4, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    if-ne v4, p1, :cond_13

    if-eq p1, v4, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 10
    sget v4, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 11
    invoke-virtual {p0, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzab(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzht;->zzd:I

    const/4 v6, 0x3

    if-eqz v5, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_b

    if-eq v5, v10, :cond_7

    .line 12
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz p1, :cond_10

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaT()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    .line 14
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    if-eq v5, v10, :cond_a

    if-ne v5, v0, :cond_9

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-ne v5, v9, :cond_9

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-ne v5, v9, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz p1, :cond_10

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaT()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    .line 16
    :cond_b
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v5

    if-nez v5, :cond_c

    :goto_4
    const/16 v10, 0x10

    goto :goto_6

    :cond_c
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz p1, :cond_d

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaT()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    :cond_d
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-eqz p1, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    if-eqz p1, :cond_e

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    goto :goto_6

    :cond_e
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    goto :goto_5

    .line 18
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzae()V

    :cond_10
    :goto_5
    const/4 v10, 0x0

    .line 12
    :goto_6
    iget p1, v4, Lcom/google/android/gms/internal/ads/zzht;->zzd:I

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-ne p1, v1, :cond_11

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    if-ne p1, v6, :cond_12

    :cond_11
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    move-object v5, p1

    .line 19
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V

    return-object p1

    :cond_12
    return-object v4

    .line 20
    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzae()V

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v5, p1

    .line 21
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V

    return-object p1

    .line 1
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    .line 3
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 2
    throw p1
.end method

.method protected abstract zzaf(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsa;
.end method

.method protected abstract zzag(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzsu;
        }
    .end annotation
.end method

.method protected zzaj(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzak(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsa;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzam(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzan(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzap()V
    .locals 0

    return-void
.end method

.method protected zzaq()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected abstract zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method protected zzas(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzat()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzq:F

    return v0
.end method

.method protected zzau(Lcom/google/android/gms/internal/ads/zzhh;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzav()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    return-wide v0
.end method

.method protected final zzaw()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zzc:J

    return-wide v0
.end method

.method protected final zzay()Lcom/google/android/gms/internal/ads/zzli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzo:Lcom/google/android/gms/internal/ads/zzli;

    return-object v0
.end method

.method protected final zzaz()Lcom/google/android/gms/internal/ads/zzsd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    return-object v0
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzu(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzo:Lcom/google/android/gms/internal/ads/zzli;

    :cond_0
    return-void
.end method

.method protected zzx()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsl;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaK()Z

    return-void
.end method

.method protected zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method protected zzz(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzb()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaJ()Z

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zza()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method
