.class Lcom/tencent/liteav/k$1;
.super Ljava/lang/Object;
.source "TXCVodPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/k;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/k;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v0, 0x7d4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v3, -0x8fd

    const/16 v4, 0x7d8

    .line 213
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 215
    sparse-switch p1, :sswitch_data_0

    .line 282
    const-string v0, "TXVodPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miss match event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 217
    :sswitch_0
    iget-object v1, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v1}, Lcom/tencent/liteav/k;->a(Lcom/tencent/liteav/k;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v1}, Lcom/tencent/liteav/k;->b(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/j;->c()V

    move v1, v0

    .line 285
    :goto_1
    const-string v0, "EVT_MSG"

    const-string v2, "description"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    iget-object v0, v0, Lcom/tencent/liteav/k;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    iget-object v0, v0, Lcom/tencent/liteav/k;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/c/a;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, v1, v5}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 225
    :sswitch_1
    iget-object v1, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v1}, Lcom/tencent/liteav/k;->b(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/j;->c()V

    move v1, v0

    .line 226
    goto :goto_1

    .line 228
    :sswitch_2
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v0}, Lcom/tencent/liteav/k;->c(Lcom/tencent/liteav/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v0, v1}, Lcom/tencent/liteav/k;->a(Lcom/tencent/liteav/k;Z)Z

    .line 232
    const/16 v3, 0x7d3

    .line 234
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 235
    const-string v0, "EVT_ID"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v0, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v8

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v0}, Lcom/tencent/liteav/k;->d(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/e;->getPlayerType()I

    move-result v0

    if-nez v0, :cond_3

    .line 238
    const-string v7, "description"

    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v0}, Lcom/tencent/liteav/k;->e(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u542f\u52a8\u786c\u89e3"

    :goto_2
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 239
    const-string v7, "EVT_PARAM1"

    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v0}, Lcom/tencent/liteav/k;->e(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    :goto_4
    invoke-virtual {p0, v4, v6}, Lcom/tencent/liteav/k$1;->a(ILandroid/os/Bundle;)V

    move v1, v3

    .line 247
    goto/16 :goto_1

    .line 238
    :cond_1
    const-string/jumbo v0, "\u542f\u52a8\u8f6f\u89e3"

    goto :goto_2

    :cond_2
    move v0, v2

    .line 239
    goto :goto_3

    .line 241
    :cond_3
    const-string v0, "description"

    const-string/jumbo v1, "\u542f\u52a8\u786c\u89e3"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 242
    const-string v0, "EVT_PARAM1"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 249
    :sswitch_3
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v0}, Lcom/tencent/liteav/k;->b(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->b()V

    .line 250
    const/16 v0, 0x7d6

    move v1, v0

    .line 251
    goto/16 :goto_1

    .line 253
    :sswitch_4
    const/16 v0, 0x7d7

    .line 254
    iget-object v1, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v1}, Lcom/tencent/liteav/k;->b(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/j;->d()V

    move v1, v0

    .line 255
    goto/16 :goto_1

    .line 257
    :sswitch_5
    const/16 v0, 0x7d6

    move v1, v0

    .line 258
    goto/16 :goto_1

    .line 260
    :sswitch_6
    const/16 v0, 0x7d9

    move v1, v0

    .line 261
    goto/16 :goto_1

    :sswitch_7
    move v1, v3

    .line 264
    goto/16 :goto_1

    :sswitch_8
    move v1, v3

    .line 267
    goto/16 :goto_1

    .line 269
    :sswitch_9
    const/16 v0, 0x7d5

    .line 270
    iget-object v1, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v1}, Lcom/tencent/liteav/k;->b(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/j;

    move-result-object v1

    const-string v2, "EVT_PLAY_DURATION"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/j;->a(I)V

    move v1, v0

    .line 271
    goto/16 :goto_1

    .line 273
    :sswitch_a
    const/16 v0, 0x837

    move v1, v0

    .line 274
    goto/16 :goto_1

    :sswitch_b
    move v1, v4

    .line 277
    goto/16 :goto_1

    .line 279
    :sswitch_c
    const/16 v0, -0x8ff

    move v1, v0

    .line 280
    goto/16 :goto_1

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        -0xbbb -> :sswitch_c
        -0xbba -> :sswitch_8
        -0xbb9 -> :sswitch_7
        0x7d8 -> :sswitch_b
        0xbb8 -> :sswitch_0
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_5
        0xbbb -> :sswitch_4
        0xbbc -> :sswitch_3
        0xbbd -> :sswitch_6
        0xbbe -> :sswitch_a
        0xbbf -> :sswitch_9
        0xbc0 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 296
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 299
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->a()[I

    move-result-object v0

    .line 301
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    .line 302
    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v2, "CPU_USAGE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 306
    const-string v0, "VIDEO_FPS"

    const-string v2, "fps"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v0, "NET_SPEED"

    const-string/jumbo v2, "tcpSpeed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v0, "CACHE_SIZE"

    const-string v2, "cachedBytes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string v0, "VIDEO_WIDTH"

    iget-object v2, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v2}, Lcom/tencent/liteav/k;->d(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/txcvodplayer/e;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "VIDEO_HEIGHT"

    iget-object v2, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v2}, Lcom/tencent/liteav/k;->d(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/txcvodplayer/e;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v0, "SERVER_IP"

    iget-object v2, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    invoke-static {v2}, Lcom/tencent/liteav/k;->d(Lcom/tencent/liteav/k;)Lcom/tencent/liteav/txcvodplayer/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/txcvodplayer/e;->getServerIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    iget-object v0, v0, Lcom/tencent/liteav/k;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/tencent/liteav/k$1;->a:Lcom/tencent/liteav/k;

    iget-object v0, v0, Lcom/tencent/liteav/k;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/c/a;

    .line 315
    if-eqz v0, :cond_0

    .line 316
    const/16 v2, 0x3a99

    invoke-interface {v0, v2, v1}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 319
    :cond_0
    return-void
.end method
