.class Lcom/tencent/liteav/audio/impl/b/a$1;
.super Ljava/lang/Thread;
.source "TXCAudioRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/b/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/b/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    .line 88
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->b(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v1

    if-ne v1, v2, :cond_9

    move v3, v0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->c(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->d(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v1

    invoke-static {v1, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;I)I

    .line 102
    iget-object v9, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    .line 103
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/b/a;->d(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v2

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/b/a;->e(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 102
    invoke-static {v9, v0}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    const/16 v4, 0x320

    .line 121
    const/16 v0, 0x64

    move v1, v0

    move v2, v7

    .line 122
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->f(Lcom/tencent/liteav/audio/impl/b/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->g(Lcom/tencent/liteav/audio/impl/b/a;)Lcom/tencent/liteav/audio/impl/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->g(Lcom/tencent/liteav/audio/impl/b/a;)Lcom/tencent/liteav/audio/impl/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/b/b;->OnAudioNeedRender()V

    .line 127
    :cond_2
    monitor-enter p0

    .line 129
    :try_start_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->h(Lcom/tencent/liteav/audio/impl/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v10, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/b/a$a;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    .line 133
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->h(Lcom/tencent/liteav/audio/impl/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    .line 134
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    if-eqz v3, :cond_1

    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->i(Lcom/tencent/liteav/audio/impl/b/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    :cond_3
    if-eqz v1, :cond_7

    if-ge v2, v4, :cond_7

    .line 139
    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v6, v0, [S

    .line 141
    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    move v0, v7

    .line 143
    :goto_4
    array-length v9, v6

    if-ge v0, v9, :cond_4

    aget-short v9, v6, v0

    div-int/2addr v9, v1

    int-to-short v9, v9

    aput-short v9, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :goto_5
    return-void

    .line 111
    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 130
    :catch_2
    move-exception v0

    .line 131
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v3, v8

    goto :goto_3

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 145
    :cond_4
    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 147
    iget-object v0, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    array-length v0, v0

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v6}, Lcom/tencent/liteav/audio/impl/b/a;->d(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit16 v6, v6, 0x3e8

    div-int/2addr v0, v6

    add-int/2addr v2, v0

    .line 149
    sub-int v0, v4, v2

    mul-int/2addr v0, v1

    div-int v1, v0, v4

    move v0, v1

    .line 152
    :goto_6
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v6, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    iget-object v9, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    array-length v9, v9

    invoke-virtual {v1, v6, v7, v9}, Landroid/media/AudioTrack;->write([BII)I

    .line 153
    const-wide/16 v10, 0x3e8

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->b(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v1

    int-to-long v12, v1

    div-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    iget-object v1, v3, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    array-length v1, v1

    mul-int/2addr v1, v5

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/b/a;->e(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-long v12, v1

    mul-long/2addr v10, v12

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->d(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v1

    int-to-long v12, v1

    div-long/2addr v10, v12

    .line 154
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b/a;->j(Lcom/tencent/liteav/audio/impl/b/a;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_5

    .line 155
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    const-wide/16 v10, 0x3e8

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/b/a;->b(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v3

    int-to-long v12, v3

    div-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/b/a;->e(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v3

    int-to-long v12, v3

    mul-long/2addr v10, v12

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/b/a;->d(Lcom/tencent/liteav/audio/impl/b/a;)I

    move-result v3

    int-to-long v12, v3

    div-long/2addr v10, v12

    invoke-static {v1, v10, v11}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;J)J

    :cond_5
    move v1, v0

    .line 167
    goto/16 :goto_2

    .line 179
    :cond_6
    monitor-enter p0

    .line 180
    :try_start_5
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->h(Lcom/tencent/liteav/audio/impl/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 182
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/b/a;->b(Lcom/tencent/liteav/audio/impl/b/a;I)I

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/b/a;->c(Lcom/tencent/liteav/audio/impl/b/a;I)I

    .line 184
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    :try_start_6
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 188
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 190
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 191
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 192
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a$1;->a:Lcom/tencent/liteav/audio/impl/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/b/a;->a(Lcom/tencent/liteav/audio/impl/b/a;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_5

    .line 193
    :catch_3
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 184
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_7
    move v0, v1

    goto/16 :goto_6

    :cond_8
    move v4, v0

    goto/16 :goto_1

    :cond_9
    move v3, v4

    goto/16 :goto_0
.end method
