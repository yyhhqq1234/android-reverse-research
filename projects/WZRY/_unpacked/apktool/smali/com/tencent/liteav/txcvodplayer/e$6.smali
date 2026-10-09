.class Lcom/tencent/liteav/txcvodplayer/e$6;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/e;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/tencent/ijk/media/player/IMediaPlayer;IIII)V
    .locals 5

    .prologue
    const/4 v1, 0x4

    .line 441
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    .line 442
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eq v0, p2, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_1
    const/4 v0, 0x1

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 445
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 446
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 447
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->d(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 449
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->d(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 450
    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getMediaInfo()Lcom/tencent/ijk/media/player/MediaInfo;

    move-result-object v1

    .line 451
    iget-object v2, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mMeta:Lcom/tencent/ijk/media/player/IjkMediaMeta;

    iget-object v2, v2, Lcom/tencent/ijk/media/player/IjkMediaMeta;->mM3U8:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/e;->d(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v2

    iget-object v1, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mMeta:Lcom/tencent/ijk/media/player/IjkMediaMeta;

    iget-object v1, v1, Lcom/tencent/ijk/media/player/IjkMediaMeta;->mM3U8:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(Ljava/lang/String;)V

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/a;->a(II)V

    .line 459
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/e;->e(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->f(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/a;->b(II)V

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/e;->requestLayout()V

    .line 464
    :cond_4
    if-eqz v0, :cond_5

    .line 465
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 466
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 467
    const/16 v1, 0xbbd

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 468
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 469
    const-string v2, "description"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5206\u8fa8\u7387\u6539\u53d8:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v4}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v4}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v2, "EVT_PARAM1"

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v2, "EVT_PARAM2"

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 473
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 474
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$6;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    :cond_5
    return-void

    .line 442
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
