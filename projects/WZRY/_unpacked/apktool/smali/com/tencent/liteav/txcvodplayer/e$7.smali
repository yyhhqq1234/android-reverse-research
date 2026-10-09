.class Lcom/tencent/liteav/txcvodplayer/e$7;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;


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
    .line 480
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 482
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->e(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 484
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/16 v1, 0xbb8

    const-string/jumbo v2, "\u51c6\u5907\u5b8c\u6210"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 491
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 493
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->h(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    .line 494
    if-eqz v0, :cond_1

    .line 495
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/e;->b(I)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/a;->a(II)V

    .line 501
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->e(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/e;->f(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/a;->b(II)V

    .line 502
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->i(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->j(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 507
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b()V

    .line 518
    :cond_3
    :goto_0
    return-void

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 515
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$7;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->b()V

    goto :goto_0
.end method
