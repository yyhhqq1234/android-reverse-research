.class Lcom/tencent/liteav/videoencoder/b$6;
.super Ljava/lang/Object;
.source "TXCVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    const/16 v1, 0x453

    const-string/jumbo v2, "\u8f6f\u7f16\u5207\u786c\u7f16"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;ILjava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setListener(Lcom/tencent/liteav/videoencoder/d;)V

    .line 358
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoencoder/c;->stop()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    new-instance v1, Lcom/tencent/liteav/videoencoder/a;

    invoke-direct {v1}, Lcom/tencent/liteav/videoencoder/a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/videoencoder/c;)Lcom/tencent/liteav/videoencoder/c;

    .line 361
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v1}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    .line 362
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->e(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v1}, Lcom/tencent/liteav/videoencoder/b;->e(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setListener(Lcom/tencent/liteav/videoencoder/d;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->f(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v1}, Lcom/tencent/liteav/videoencoder/b;->f(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setBitrate(I)V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$6;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoencoder/b;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setID(Ljava/lang/String;)V

    .line 369
    return-void
.end method
