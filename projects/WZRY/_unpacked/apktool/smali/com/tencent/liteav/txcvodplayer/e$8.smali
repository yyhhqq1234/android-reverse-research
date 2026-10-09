.class Lcom/tencent/liteav/txcvodplayer/e$8;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;


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
    .line 522
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 524
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->l(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget v0, v0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/e;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hls not end, try to continue"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->n(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget v0, v0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v3}, Lcom/tencent/liteav/txcvodplayer/e;->e(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 536
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v3}, Lcom/tencent/liteav/txcvodplayer/e;->f(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 538
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$8;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/16 v1, 0xbbc

    const-string/jumbo v2, "\u64ad\u653e\u5b8c\u6210"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    goto :goto_0
.end method
