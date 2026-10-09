.class Lcom/tencent/liteav/videodecoder/b$b;
.super Landroid/os/Handler;
.source "TXCVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videodecoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/tencent/liteav/videodecoder/a;

.field b:Lcom/tencent/liteav/videodecoder/d;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Landroid/view/Surface;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    invoke-interface {v0}, Lcom/tencent/liteav/videodecoder/a;->stop()V

    .line 261
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/a;->setListener(Lcom/tencent/liteav/videodecoder/d;)V

    .line 262
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/a;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 263
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 266
    const-string v0, "TXCVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:decode: stop decode hwdec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/b$b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "TXCVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:decode: start decode ignore hwdec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/b$b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->d:Z

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Lcom/tencent/liteav/videodecoder/c;

    invoke-direct {v0}, Lcom/tencent/liteav/videodecoder/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b$b;->b:Lcom/tencent/liteav/videodecoder/d;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/a;->setListener(Lcom/tencent/liteav/videodecoder/d;)V

    .line 280
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b$b;->c:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/a;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 281
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b$b;->e:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/a;->config(Landroid/view/Surface;)I

    .line 282
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/b$b;->f:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/b$b;->g:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, p1}, Lcom/tencent/liteav/videodecoder/a;->start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    .line 283
    const-string v0, "TXCVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:decode: start decode hwdec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/b$b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;

    invoke-direct {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    goto :goto_1
.end method

.method private a([BJJ)V
    .locals 6

    .prologue
    .line 253
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->a:Lcom/tencent/liteav/videodecoder/a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/liteav/videodecoder/a;->decode([BJJ)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZLandroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videodecoder/d;Lcom/tencent/liteav/basic/c/a;)V
    .locals 1

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/b$b;->d:Z

    .line 222
    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/b$b;->e:Landroid/view/Surface;

    .line 223
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/b$b;->f:Ljava/nio/ByteBuffer;

    .line 224
    iput-object p4, p0, Lcom/tencent/liteav/videodecoder/b$b;->g:Ljava/nio/ByteBuffer;

    .line 225
    iput-object p5, p0, Lcom/tencent/liteav/videodecoder/b$b;->b:Lcom/tencent/liteav/videodecoder/d;

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/b$b;->c:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/b$b;->a(Z)V

    goto :goto_0

    .line 237
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    const-string v1, "nal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 239
    const-string v2, "pts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 240
    const-string v4, "dts"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/videodecoder/b$b;->a([BJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/b$b;->a()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
