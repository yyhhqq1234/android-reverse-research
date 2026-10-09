.class Lcom/subao/common/a/c$f$b;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c$f;

.field private b:J


# direct methods
.method constructor <init>(Lcom/subao/common/a/c$f;)V
    .locals 4

    .prologue
    .line 2701
    iput-object p1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2711
    invoke-static {}, Lcom/subao/common/a/c$f;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x112a880

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/subao/common/a/c$f$b;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2715
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 2716
    if-eqz v0, :cond_0

    .line 2717
    const-string v1, "SubaoData"

    const-string v2, "[DataAutoRefresher] run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_0
    invoke-static {}, Lcom/subao/common/a/c$f;->a()J

    move-result-wide v2

    .line 2720
    iget-wide v4, p0, Lcom/subao/common/a/c$f$b;->b:J

    sub-long v4, v2, v4

    .line 2721
    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 2723
    if-eqz v0, :cond_1

    .line 2724
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataAutoRefresher] Elapsed from last execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_1
    iget-object v0, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v0}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f;)J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-interface {v0, p0, v2, v3}, Lcom/subao/common/a/c$f$a;->a(Ljava/lang/Runnable;J)Z

    .line 2754
    :goto_0
    return-void

    .line 2729
    :cond_2
    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/subao/common/a/c$f$a;->a()Lcom/subao/common/j/j$a;

    move-result-object v1

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/j/j$a;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2731
    if-eqz v0, :cond_3

    .line 2732
    const-string v0, "SubaoData"

    const-string v1, "[DataAutoRefresher] Network is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :cond_3
    iget-object v0, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v0}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f;)J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Lcom/subao/common/a/c$f$a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2737
    :cond_4
    invoke-static {}, Lcom/subao/common/e/ab;->g()J

    move-result-wide v4

    .line 2738
    sub-long v4, v2, v4

    .line 2739
    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 2741
    if-eqz v0, :cond_5

    .line 2742
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataAutoRefresher] Elapsed from last download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :cond_5
    iget-object v0, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v0}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f;)J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-interface {v0, p0, v2, v3}, Lcom/subao/common/a/c$f$a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2748
    :cond_6
    if-eqz v0, :cond_7

    .line 2749
    const-string v0, "SubaoData"

    const-string v1, "[DataAutoRefresher] do it !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_7
    iput-wide v2, p0, Lcom/subao/common/a/c$f$b;->b:J

    .line 2752
    iget-object v0, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v0}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/subao/common/a/c$f$a;->run()V

    .line 2753
    iget-object v0, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v0}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/a/c$f$b;->a:Lcom/subao/common/a/c$f;

    invoke-static {v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f;)J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Lcom/subao/common/a/c$f$a;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
