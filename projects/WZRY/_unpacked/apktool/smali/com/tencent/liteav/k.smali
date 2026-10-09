.class public Lcom/tencent/liteav/k;
.super Lcom/tencent/liteav/o;
.source "TXCVodPlayer.java"


# instance fields
.field private e:Lcom/tencent/liteav/txcvodplayer/e;

.field private f:Lcom/tencent/liteav/txcvodplayer/d;

.field private g:Lcom/tencent/liteav/j;

.field private h:Z

.field private i:Z

.field private j:F

.field private k:Landroid/view/Surface;

.field private l:Lcom/tencent/liteav/txcvodplayer/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/liteav/o;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/k;->i:Z

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/liteav/k;->j:F

    .line 210
    new-instance v0, Lcom/tencent/liteav/k$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/k$1;-><init>(Lcom/tencent/liteav/k;)V

    iput-object v0, p0, Lcom/tencent/liteav/k;->l:Lcom/tencent/liteav/txcvodplayer/f;

    .line 45
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/txcvodplayer/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    .line 46
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/k;->l:Lcom/tencent/liteav/txcvodplayer/f;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setListener(Lcom/tencent/liteav/txcvodplayer/f;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/k;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/tencent/liteav/k;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/liteav/k;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/tencent/liteav/k;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/j;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/liteav/k;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/tencent/liteav/k;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/e;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/d;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setVisibility(I)V

    .line 71
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/g;

    iget-object v1, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 73
    iget-object v1, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/g;)V

    .line 79
    :cond_0
    :goto_0
    new-instance v0, Lcom/tencent/liteav/j;

    iget-object v1, p0, Lcom/tencent/liteav/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->a()V

    .line 83
    iput-boolean v2, p0, Lcom/tencent/liteav/k;->h:Z

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/e;->setVideoPath(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget-boolean v1, p0, Lcom/tencent/liteav/k;->i:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setAutoPlay(Z)V

    .line 86
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget v1, p0, Lcom/tencent/liteav/k;->j:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setRate(F)V

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(I)V

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/k;->b:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->aD:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 96
    return v2

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/k;->k:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/k;->k:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b()V

    goto :goto_1
.end method

.method public a(Z)I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->c()V

    .line 101
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->b()V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->d()V

    .line 118
    return-void
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->e()V

    .line 131
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(I)V

    .line 132
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    if-ne p1, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderMode(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderMode(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/liteav/k;->k:Landroid/view/Surface;

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/k;->k:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderSurface(Landroid/view/Surface;)V

    .line 113
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/g;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/g;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/d;

    invoke-direct {v0}, Lcom/tencent/liteav/txcvodplayer/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->a(F)V

    .line 56
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->b(F)V

    .line 57
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->c(F)V

    .line 58
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget-boolean v1, v1, Lcom/tencent/liteav/g;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->a(Z)V

    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget-object v1, v1, Lcom/tencent/liteav/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->a(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->m:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->b(I)V

    .line 62
    iget-object v0, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v1, p0, Lcom/tencent/liteav/k;->a:Lcom/tencent/liteav/g;

    iget-object v1, v1, Lcom/tencent/liteav/g;->n:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/d;->a(Ljava/util/Map;)V

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/k;->f:Lcom/tencent/liteav/txcvodplayer/d;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setConfig(Lcom/tencent/liteav/txcvodplayer/d;)V

    .line 66
    return-void
.end method

.method public a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eq v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setVisibility(I)V

    .line 165
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/g;

    iget-object v1, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object v1, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 167
    iget-object v1, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    .line 169
    :cond_1
    return-void
.end method

.method public a_(I)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/liteav/k;->g:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->e()V

    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(I)V

    .line 127
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b()V

    .line 122
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 204
    iput p1, p0, Lcom/tencent/liteav/k;->j:F

    .line 205
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/e;->setRate(F)V

    .line 208
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    rsub-int v1, p1, 0x168

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setVideoRotationDegree(I)V

    .line 150
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/e;->setMute(Z)V

    .line 136
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/tencent/liteav/k;->i:Z

    .line 200
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/liteav/k;->e:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->e()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/k;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
