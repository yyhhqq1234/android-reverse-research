.class Lcom/tencent/liteav/txcvodplayer/e$9$1;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/txcvodplayer/e$9;->onInfo(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/e$9;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/e$9;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$9$1;->a:Lcom/tencent/liteav/txcvodplayer/e$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9$1;->a:Lcom/tencent/liteav/txcvodplayer/e$9;

    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->l(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 562
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$9$1;->a:Lcom/tencent/liteav/txcvodplayer/e$9;

    iget-object v1, v1, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
