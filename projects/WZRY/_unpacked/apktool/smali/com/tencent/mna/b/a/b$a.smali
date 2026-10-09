.class abstract Lcom/tencent/mna/b/a/b$a;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tencent/mna/b/a/c/c;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/tencent/mna/b/a/c/c;J)V
    .locals 0

    .prologue
    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    iput-object p1, p0, Lcom/tencent/mna/b/a/b$a;->a:Lcom/tencent/mna/b/a/c/c;

    .line 1604
    iput-wide p2, p0, Lcom/tencent/mna/b/a/b$a;->b:J

    .line 1605
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1610
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "mna-continuous-worker"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1612
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lcom/tencent/mna/b/a/b$a;->b:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1613
    iget-object v2, p0, Lcom/tencent/mna/b/a/b$a;->a:Lcom/tencent/mna/b/a/c/c;

    if-eqz v2, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/tencent/mna/b/a/b$a;->a:Lcom/tencent/mna/b/a/c/c;

    invoke-virtual {p0}, Lcom/tencent/mna/b/a/b$a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/b/a/c/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinuousWorker throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 1620
    :cond_1
    return-void
.end method
