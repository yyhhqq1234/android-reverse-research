.class Lcom/tencent/liteav/txcvodplayer/e$a;
.super Landroid/os/Handler;
.source "TXCVodVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/txcvodplayer/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/e;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1091
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e$a;->b:I

    .line 1095
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$a;->a:Ljava/lang/ref/WeakReference;

    .line 1096
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/e;

    .line 1101
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->x(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/f;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1106
    :pswitch_0
    const/4 v8, 0x0

    .line 1107
    const-wide/16 v6, 0x0

    .line 1108
    const-wide/16 v4, 0x0

    .line 1109
    const-wide/16 v2, 0x0

    .line 1111
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->getUnwrappedMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_0

    .line 1115
    instance-of v9, v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    if-eqz v9, :cond_2

    .line 1116
    check-cast v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    .line 1118
    invoke-virtual {v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getVideoOutputFramesPerSecond()F

    move-result v8

    .line 1120
    invoke-virtual {v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v4

    add-long v6, v2, v4

    .line 1121
    invoke-virtual {v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getBitRate()J

    move-result-wide v4

    .line 1122
    invoke-virtual {v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v2

    move v1, v8

    .line 1142
    :goto_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1143
    const-string v9, "fps"

    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1144
    const-string v1, "cachedBytes"

    invoke-virtual {v8, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1145
    const-string v1, "bitRate"

    invoke-virtual {v8, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1146
    const-string/jumbo v1, "tcpSpeed"

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1147
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->x(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/f;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/tencent/liteav/txcvodplayer/f;->a(Landroid/os/Bundle;)V

    .line 1149
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e$a;->removeMessages(I)V

    .line 1150
    const/16 v0, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/liteav/txcvodplayer/e$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1123
    :cond_2
    instance-of v9, v1, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    if-eqz v9, :cond_7

    .line 1124
    check-cast v1, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    .line 1126
    invoke-virtual {v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v2

    .line 1127
    if-eqz v2, :cond_3

    .line 1128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->y(Lcom/tencent/liteav/txcvodplayer/e;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 1129
    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->z(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v8

    sub-int/2addr v3, v8

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/tencent/liteav/txcvodplayer/e;->b(Lcom/tencent/liteav/txcvodplayer/e;J)J

    .line 1131
    iget v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->l(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 1132
    const-wide/16 v8, 0xbb8

    cmp-long v2, v4, v8

    if-gez v2, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_3

    const/16 v2, 0x78

    if-ge v3, v2, :cond_3

    if-lez v3, :cond_3

    .line 1133
    const-wide v8, 0x408f400000000000L    # 1000.0

    long-to-double v4, v4

    div-double v4, v8, v4

    int-to-double v2, v3

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->m(Lcom/tencent/liteav/txcvodplayer/e;I)I

    .line 1136
    :cond_3
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->A(Lcom/tencent/liteav/txcvodplayer/e;)I

    move-result v2

    int-to-float v8, v2

    .line 1137
    invoke-virtual {v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getObservedBitrate()I

    move-result v1

    int-to-long v4, v1

    .line 1138
    const-wide/16 v2, 0x8

    div-long v2, v4, v2

    move v1, v8

    goto/16 :goto_1

    .line 1155
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1156
    packed-switch v1, :pswitch_data_1

    .line 1164
    :goto_2
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->x(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/f;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1158
    :pswitch_2
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->n(Lcom/tencent/liteav/txcvodplayer/e;I)I

    goto :goto_2

    .line 1169
    :pswitch_3
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->B(Lcom/tencent/liteav/txcvodplayer/e;)V

    .line 1170
    const/16 v1, 0xbbe

    const-string/jumbo v2, "\u70b9\u64ad\u7f51\u7edc\u91cd\u8fde"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1175
    :pswitch_4
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1176
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    .line 1177
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->C(Lcom/tencent/liteav/txcvodplayer/e;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 1178
    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;J)J

    .line 1180
    :cond_4
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->C(Lcom/tencent/liteav/txcvodplayer/e;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 1181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1183
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->getBufferDuration()I

    move-result v4

    int-to-long v4, v4

    .line 1184
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v6

    int-to-long v6, v6

    .line 1186
    const-string v8, "EVT_PLAY_PROGRESS"

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    long-to-int v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string v8, "EVT_PLAY_DURATION"

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    long-to-int v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    const-string v8, "EVT_PLAYABLE_DURATION"

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    long-to-int v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1189
    const-string v8, "EVT_PLAY_PROGRESS_MS"

    long-to-int v9, v2

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1190
    const-string v8, "EVT_PLAY_DURATION_MS"

    long-to-int v6, v6

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    const-string v6, "EVT_PLAYABLE_DURATION_MS"

    long-to-int v4, v4

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1192
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->x(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/f;

    move-result-object v4

    const/16 v5, 0xbbf

    invoke-interface {v4, v5, v1}, Lcom/tencent/liteav/txcvodplayer/f;->a(ILandroid/os/Bundle;)V

    .line 1194
    :cond_5
    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/txcvodplayer/e;->c(Lcom/tencent/liteav/txcvodplayer/e;J)J

    .line 1197
    :cond_6
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/e;->v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e$a;->removeMessages(I)V

    .line 1199
    const/16 v0, 0x67

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/liteav/txcvodplayer/e$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    move v1, v8

    goto/16 :goto_1

    .line 1104
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1156
    :pswitch_data_1
    .packed-switch 0xbb8
        :pswitch_2
    .end packed-switch
.end method
