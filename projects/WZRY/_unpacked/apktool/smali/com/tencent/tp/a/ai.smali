.class public Lcom/tencent/tp/a/ai;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/a/ai$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/tencent/tp/a/ak;


# direct methods
.method public constructor <init>(IIZLcom/tencent/tp/a/ai$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tp/a/aj;

    invoke-direct {v0, p1, p4}, Lcom/tencent/tp/a/aj;-><init>(ILcom/tencent/tp/a/ai$a;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/tencent/tp/a/ai;->a:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/tp/a/ak;

    invoke-direct {v1, v0}, Lcom/tencent/tp/a/ak;-><init>(Lcom/tencent/tp/a/aj;)V

    iput-object v1, p0, Lcom/tencent/tp/a/ai;->b:Lcom/tencent/tp/a/ak;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/ai;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/tp/a/ai;->b:Lcom/tencent/tp/a/ak;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tp/a/ai;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/tp/a/ai;->b:Lcom/tencent/tp/a/ak;

    int-to-long v2, p2

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/ai;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/ai;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/a/ai;->a:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
