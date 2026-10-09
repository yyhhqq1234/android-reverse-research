.class Lcom/tencent/liteav/basic/b/a$2;
.super Ljava/lang/Object;
.source "TXCVideoJitterBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/b/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/b/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/b/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/liteav/basic/b/a$2;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$2;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/basic/b/a;->a(Lcom/tencent/liteav/basic/b/a;)Lcom/tencent/liteav/basic/f/b;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a$2;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/basic/b/a;->b(Lcom/tencent/liteav/basic/b/a;)Lcom/tencent/liteav/basic/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a$2;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/basic/b/a;->b(Lcom/tencent/liteav/basic/b/a;)Lcom/tencent/liteav/basic/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/liteav/basic/b/b;->b(Lcom/tencent/liteav/basic/f/b;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$2;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/basic/b/a;->c(Lcom/tencent/liteav/basic/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$2;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/basic/b/a;->d(Lcom/tencent/liteav/basic/b/a;)V

    .line 73
    :cond_1
    return-void
.end method
