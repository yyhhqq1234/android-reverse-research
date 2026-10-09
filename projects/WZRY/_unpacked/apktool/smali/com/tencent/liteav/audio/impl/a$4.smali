.class Lcom/tencent/liteav/audio/impl/a$4;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->a([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:J

.field final synthetic c:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;[BJ)V
    .locals 1

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$4;->c:Lcom/tencent/liteav/audio/impl/a;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/a$4;->a:[B

    iput-wide p3, p0, Lcom/tencent/liteav/audio/impl/a$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$4;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->r(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$4;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->r(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$4;->a:[B

    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/a$4;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/f;->a([BJ)V

    .line 467
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$4;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->s(Lcom/tencent/liteav/audio/impl/a;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$4;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$4;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$4;->a:[B

    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/a$4;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/impl/Encoder/a;->doEncodec([BJ)V

    .line 473
    :cond_1
    return-void
.end method
