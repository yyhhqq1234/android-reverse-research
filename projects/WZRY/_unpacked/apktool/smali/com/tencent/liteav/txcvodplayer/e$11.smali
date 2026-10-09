.class Lcom/tencent/liteav/txcvodplayer/e$11;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


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
    .line 659
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$11;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/tencent/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$11;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, p2}, Lcom/tencent/liteav/txcvodplayer/e;->h(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 662
    return-void
.end method
