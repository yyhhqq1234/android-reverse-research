.class Lcom/tencent/liteav/txcvodplayer/e$12;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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
    .line 665
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "seek complete"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->i(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 671
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;Z)Z

    .line 672
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->u(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$12;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->u(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->b(I)V

    .line 675
    :cond_0
    return-void
.end method
