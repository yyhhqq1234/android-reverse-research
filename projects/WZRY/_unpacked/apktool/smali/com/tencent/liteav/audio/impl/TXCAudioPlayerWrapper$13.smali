.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setHWAcceleration(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iput-boolean p2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->a:Z

    if-eq v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->a:Z

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$702(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z

    .line 170
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeDestoryPlayProcessor(J)V

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 174
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v4}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$900(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    .line 177
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    new-instance v1, Lcom/tencent/liteav/audio/impl/Decoder/a;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/Decoder/a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/Decoder/b;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/basic/f/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/basic/f/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->playData(Lcom/tencent/liteav/basic/f/a;)I

    .line 191
    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Decoder/b;->unInit()V

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/Decoder/b;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v4}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$900(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    goto :goto_0
.end method
