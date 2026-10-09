.class Lcom/tencent/liteav/audio/impl/a$3;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->c([BJ)V
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
    .line 434
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$3;->c:Lcom/tencent/liteav/audio/impl/a;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/a$3;->a:[B

    iput-wide p3, p0, Lcom/tencent/liteav/audio/impl/a$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$3;->c:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$3;->a:[B

    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/a$3;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/impl/a;->b([BJ)V

    .line 438
    return-void
.end method
