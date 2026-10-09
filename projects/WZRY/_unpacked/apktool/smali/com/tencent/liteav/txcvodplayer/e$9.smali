.class Lcom/tencent/liteav/txcvodplayer/e$9;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;


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
    .line 543
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z
    .locals 6

    .prologue
    const/16 v5, 0xbb9

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 545
    sparse-switch p2, :sswitch_data_0

    .line 622
    :cond_0
    :goto_0
    return v3

    .line 547
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_RENDERING_START:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/16 v1, 0xbc0

    const-string/jumbo v2, "\u70b9\u64ad\u663e\u793a\u9996\u5e27\u753b\u9762"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->o(Lcom/tencent/liteav/txcvodplayer/e;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->setRate(F)V

    .line 553
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    iget v0, v0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    if-ne v0, v3, :cond_2

    .line 554
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->p(Lcom/tencent/liteav/txcvodplayer/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const-string/jumbo v1, "\u7f13\u51b2\u7ed3\u675f\uff0c\u5f00\u59cb\u64ad\u653e"

    invoke-static {v0, v5, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/liteav/txcvodplayer/e$9$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/e$9$1;-><init>(Lcom/tencent/liteav/txcvodplayer/e$9;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 568
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;Z)Z

    goto :goto_0

    .line 573
    :sswitch_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_START:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->k(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 575
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore loading when paused"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const/16 v1, 0xbbb

    const-string/jumbo v2, "\u7f13\u51b2\u5f00\u59cb"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 582
    :sswitch_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_BUFFERING_END: eof "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    if-eqz p3, :cond_4

    .line 584
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->l(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->l(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->l(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    const-string/jumbo v1, "\u7f13\u51b2\u7ed3\u675f\uff0c\u5f00\u59cb\u64ad\u653e"

    invoke-static {v0, v5, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :sswitch_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :sswitch_5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BAD_INTERLEAVING:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :sswitch_6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_NOT_SEEKABLE:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :sswitch_7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_METADATA_UPDATE:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :sswitch_8
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :sswitch_9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    :sswitch_a
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->q(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 613
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/e;->q(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    goto/16 :goto_0

    .line 615
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    goto/16 :goto_0

    .line 619
    :sswitch_b
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$9;->a:Lcom/tencent/liteav/txcvodplayer/e;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_AUDIO_RENDERING_START:"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x2bf -> :sswitch_4
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
        0x2711 -> :sswitch_a
        0x2712 -> :sswitch_b
    .end sparse-switch
.end method
