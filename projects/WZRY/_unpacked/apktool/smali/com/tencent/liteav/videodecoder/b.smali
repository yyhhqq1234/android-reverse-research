.class public Lcom/tencent/liteav/videodecoder/b;
.super Ljava/lang/Object;
.source "TXCVideoDecoder.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videodecoder/b$b;,
        Lcom/tencent/liteav/videodecoder/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Landroid/view/Surface;

.field e:Lcom/tencent/liteav/videodecoder/d;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

.field private h:J

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/liteav/videodecoder/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/tencent/liteav/videodecoder/b$b;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    .line 60
    iput-boolean v1, p0, Lcom/tencent/liteav/videodecoder/b;->b:Z

    .line 61
    iput-boolean v1, p0, Lcom/tencent/liteav/videodecoder/b;->a:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->c:Z

    .line 63
    return-void
.end method

.method private b(Z[BJJ)V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v1, "iframe"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-string v1, "nal"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 93
    const-string v1, "pts"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    const-string v1, "dts"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 97
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/SurfaceTexture;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->d:Landroid/view/Surface;

    .line 77
    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/b;->f:Ljava/nio/ByteBuffer;

    .line 78
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/b;->g:Ljava/nio/ByteBuffer;

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/b;->d:Landroid/view/Surface;

    .line 84
    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/b;->f:Ljava/nio/ByteBuffer;

    .line 85
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/b;->g:Ljava/nio/ByteBuffer;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public a(ZZ)I
    .locals 8

    .prologue
    const/16 v7, 0x7d8

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->d:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "TXCVideoDecoder"

    const-string v1, "play:decode: start decoder error when not setup surface"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, -0x1

    .line 179
    :goto_0
    return v0

    .line 155
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/b;->b:Z

    .line 156
    iput-boolean p2, p0, Lcom/tencent/liteav/videodecoder/b;->a:Z

    .line 157
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v1, Lcom/tencent/liteav/videodecoder/b$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videodecoder/b$b;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/b;->b:Z

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/b;->d:Landroid/view/Surface;

    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/b;->f:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/tencent/liteav/videodecoder/b;->g:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/tencent/liteav/videodecoder/b;->e:Lcom/tencent/liteav/videodecoder/d;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videodecoder/b$b;->a(ZLandroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videodecoder/d;Lcom/tencent/liteav/basic/c/a;)V

    .line 162
    const-string v0, "TXCVideoDecoder"

    const-string v1, "play:decode: start decode thread"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    if-eqz v0, :cond_2

    .line 165
    const-string v0, "TXCVideoDecoder"

    const-string v1, "play:decode: start decode "

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 168
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videodecoder/b$b;->sendMessage(Landroid/os/Message;)Z

    .line 172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v0, "EVT_ID"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v0, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 175
    const-string v2, "EVT_MSG"

    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->b:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u542f\u52a8\u786c\u89e3"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 176
    const-string v2, "EVT_PARAM1"

    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->b:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->k:Ljava/lang/ref/WeakReference;

    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/b;->h:J

    invoke-static {v0, v2, v3, v7, v1}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;JILandroid/os/Bundle;)V

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 175
    :cond_3
    const-string/jumbo v0, "\u542f\u52a8\u8f6f\u89e3"

    goto :goto_1

    .line 176
    :cond_4
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/b$b;->sendEmptyMessage(I)Z

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->c:Z

    .line 189
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/tencent/liteav/videodecoder/b;->h:J

    .line 46
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/c/a;)V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->k:Ljava/lang/ref/WeakReference;

    .line 73
    return-void
.end method

.method public a(Lcom/tencent/liteav/videodecoder/d;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/b;->e:Lcom/tencent/liteav/videodecoder/d;

    .line 67
    return-void
.end method

.method public a(Z[BJJ)V
    .locals 9

    .prologue
    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->c:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 106
    const-string v0, "TXCVideoDecoder"

    const-string v1, "play:decode: push nal ignore p frame when not got i frame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->e:Lcom/tencent/liteav/videodecoder/d;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->e:Lcom/tencent/liteav/videodecoder/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/d;->c(I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->c:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 113
    const-string v0, "TXCVideoDecoder"

    const-string v1, "play:decode: push first i frame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b;->c:Z

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videodecoder/b$a;

    .line 121
    iget-boolean v2, v0, Lcom/tencent/liteav/videodecoder/b$a;->a:Z

    iget-object v3, v0, Lcom/tencent/liteav/videodecoder/b$a;->b:[B

    iget-wide v4, v0, Lcom/tencent/liteav/videodecoder/b$a;->c:J

    iget-wide v6, v0, Lcom/tencent/liteav/videodecoder/b$a;->d:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videodecoder/b;->b(Z[BJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/tencent/liteav/videodecoder/b;->b(Z[BJJ)V

    goto :goto_0

    .line 128
    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 129
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->e:Lcom/tencent/liteav/videodecoder/d;

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->e:Lcom/tencent/liteav/videodecoder/d;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/d;->c(I)V

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_6
    new-instance v0, Lcom/tencent/liteav/videodecoder/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videodecoder/b$a;-><init>(Lcom/tencent/liteav/videodecoder/b$1;)V

    .line 135
    iput-boolean p1, v0, Lcom/tencent/liteav/videodecoder/b$a;->a:Z

    .line 136
    iput-object p2, v0, Lcom/tencent/liteav/videodecoder/b$a;->b:[B

    .line 137
    iput-wide p3, v0, Lcom/tencent/liteav/videodecoder/b$a;->c:J

    .line 138
    iput-wide p5, v0, Lcom/tencent/liteav/videodecoder/b$a;->d:J

    .line 139
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a([BJI)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    iget-boolean v0, v0, Lcom/tencent/liteav/videodecoder/b$b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    iget-object v0, v0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->j:Lcom/tencent/liteav/videodecoder/b$b;

    iget-object v0, v0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    check-cast v0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;

    .line 195
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->loadNativeData([BJI)V

    .line 198
    :cond_0
    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b;->k:Ljava/lang/ref/WeakReference;

    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/b;->h:J

    invoke-static {v0, v2, v3, p1, p2}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;JILandroid/os/Bundle;)V

    .line 38
    return-void
.end method
