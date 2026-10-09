.class public Lcom/tencent/liteav/txcvodplayer/d;
.super Ljava/lang/Object;
.source "TXCVodPlayerConfig.java"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:Z

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x40400000    # 3.0f

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->a:F

    .line 13
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->b:F

    .line 14
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->c:F

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->d:Z

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->g:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->a:F

    .line 32
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->f:I

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->h:Ljava/util/Map;

    .line 98
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/d;->g:I

    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->b:F

    .line 44
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->g:I

    .line 86
    return-void
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/d;->c:F

    .line 54
    return-void
.end method
