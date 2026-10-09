.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setAECType(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/audio/impl/b/b;

.field final synthetic c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;ILcom/tencent/liteav/audio/impl/b/b;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iput p2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->a:I

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->b:Lcom/tencent/liteav/audio/impl/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->a:I

    if-eq v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I

    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1300(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V

    .line 235
    sget v0, Lcom/tencent/liteav/audio/d;->B:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$900(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1400(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/b/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    new-instance v1, Lcom/tencent/liteav/audio/impl/b/a;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->b:Lcom/tencent/liteav/audio/impl/b/b;

    invoke-direct {v1, v2}, Lcom/tencent/liteav/audio/impl/b/a;-><init>(Lcom/tencent/liteav/audio/impl/b/b;)V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1402(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/b/a;)Lcom/tencent/liteav/audio/impl/b/a;

    .line 244
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1400(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1500(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/b/a;->a(Z)V

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$900(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    .line 247
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    new-instance v1, Lcom/tencent/liteav/audio/impl/Decoder/a;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/Decoder/a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/Decoder/b;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    goto :goto_0
.end method
