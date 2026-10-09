.class public Lcom/tencent/liteav/audio/a;
.super Ljava/lang/Object;
.source "TXCAudioPlayer.java"


# static fields
.field public static final a:I

.field public static b:F

.field public static c:Z

.field public static d:F

.field public static e:F


# instance fields
.field private f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40a00000    # 5.0f

    .line 13
    sget v0, Lcom/tencent/liteav/audio/d;->z:I

    sput v0, Lcom/tencent/liteav/audio/a;->a:I

    .line 15
    sput v1, Lcom/tencent/liteav/audio/a;->b:F

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/liteav/audio/a;->c:Z

    .line 17
    sput v1, Lcom/tencent/liteav/audio/a;->d:F

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/tencent/liteav/audio/a;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    .line 23
    new-instance v0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetTraeConfig(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/basic/f/a;)I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->playData(Lcom/tencent/liteav/basic/f/a;)I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->getCacheDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setCacheTime(F)V

    .line 48
    return-void
.end method

.method public a(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setAECType(ILandroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/audio/e;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setListener(Lcom/tencent/liteav/audio/e;)V

    .line 32
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setAutojust(Z)V

    .line 51
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->startPlay()I

    move-result v0

    return v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setAutoAdjustMaxCache(F)V

    .line 54
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setHWAcceleration(Z)V

    .line 68
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->stopPlay()I

    move-result v0

    return v0
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setAutoAdjustMinCache(F)V

    .line 57
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->enableRealTimePlay(Z)V

    return-void
.end method

.method public d()Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->getReportInfo()Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/audio/a;->f:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setMute(Z)V

    .line 108
    return-void
.end method
