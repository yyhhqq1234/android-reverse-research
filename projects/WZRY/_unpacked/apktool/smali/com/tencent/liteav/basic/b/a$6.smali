.class Lcom/tencent/liteav/basic/b/a$6;
.super Ljava/lang/Object;
.source "TXCVideoJitterBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/b/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/basic/b/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/b/a;I)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tencent/liteav/basic/b/a$6;->b:Lcom/tencent/liteav/basic/b/a;

    iput p2, p0, Lcom/tencent/liteav/basic/b/a$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$6;->b:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/basic/b/a;->h(Lcom/tencent/liteav/basic/b/a;)J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/liteav/basic/b/a$6;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$6;->b:Lcom/tencent/liteav/basic/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a$6;->b:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v1}, Lcom/tencent/liteav/basic/b/a;->h(Lcom/tencent/liteav/basic/b/a;)J

    move-result-wide v2

    iget v1, p0, Lcom/tencent/liteav/basic/b/a$6;->a:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/basic/b/a;->b(Lcom/tencent/liteav/basic/b/a;J)J

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$6;->b:Lcom/tencent/liteav/basic/b/a;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/basic/b/a;->b(Lcom/tencent/liteav/basic/b/a;J)J

    goto :goto_0
.end method
