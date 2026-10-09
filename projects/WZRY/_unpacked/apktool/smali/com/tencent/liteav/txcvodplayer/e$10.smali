.class Lcom/tencent/liteav/txcvodplayer/e$10;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 629
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 631
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v3}, Lcom/tencent/liteav/txcvodplayer/e;->e(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 633
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0, v3}, Lcom/tencent/liteav/txcvodplayer/e;->f(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 634
    const/16 v0, -0x3ec

    if-ne p2, v0, :cond_1

    .line 635
    const/16 v0, -0xbbb

    if-ne p3, v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const-string/jumbo v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0, p3, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->c()V

    .line 654
    :cond_0
    :goto_0
    return v4

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->r(Lcom/tencent/liteav/txcvodplayer/e;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcvodplayer/e;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/e;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;J)J

    .line 646
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->s(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->t(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/d;

    move-result-object v1

    iget v1, v1, Lcom/tencent/liteav/txcvodplayer/d;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/e;->t(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/d;

    move-result-object v2

    iget v2, v2, Lcom/tencent/liteav/txcvodplayer/d;->b:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/16 v1, -0xbba

    const-string/jumbo v2, "\u7f51\u7edc\u65ad\u5f00\uff0c\u64ad\u653e\u9519\u8bef"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$10;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->c()V

    goto :goto_0
.end method
