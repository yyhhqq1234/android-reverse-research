.class public Lcom/netease/mobile/link/f5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/f5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/netease/mobile/link/n;

.field public b:Lcom/netease/mobile/link/t4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mobile/link/t4<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/t4<",
            "TData;>;",
            "Lcom/netease/mobile/link/n<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mobile/link/f5;->a:Lcom/netease/mobile/link/n;

    iput-object p1, p0, Lcom/netease/mobile/link/f5;->b:Lcom/netease/mobile/link/t4;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mobile/link/v4;)Lcom/netease/mobile/link/v4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "TData;>;)",
            "Lcom/netease/mobile/link/v4<",
            "TData;>;"
        }
    .end annotation

    return-object p1
.end method

.method public final a()V
    .locals 6

    new-instance v0, Lcom/netease/mobile/link/f5$a;

    .line 1
    invoke-direct {v0, p0}, Lcom/netease/mobile/link/f5$a;-><init>(Lcom/netease/mobile/link/f5;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 3
    sget-object v2, Lcom/netease/mobile/link/g;->k:Lcom/netease/mobile/link/g$f;

    .line 4
    iget v3, v0, Lcom/netease/mobile/link/g;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    iget v3, v0, Lcom/netease/mobile/link/g;->f:I

    invoke-static {v3}, Lcom/netease/mobile/link/h;->a(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput v4, v0, Lcom/netease/mobile/link/g;->f:I

    iget-object v3, v0, Lcom/netease/mobile/link/g;->a:Lcom/netease/mobile/link/g$b;

    iput-object v1, v3, Lcom/netease/mobile/link/g$g;->a:[Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mobile/link/g;->b:Lcom/netease/mobile/link/g$c;

    invoke-virtual {v2, v0}, Lcom/netease/mobile/link/g$f;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/netease/mobile/link/v4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mobile/link/f5;->b:Lcom/netease/mobile/link/t4;

    .line 1
    :try_start_0
    iget v1, v0, Lcom/netease/mobile/link/t4;->a:I

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/mobile/link/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/netease/mobile/link/t4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/netease/mobile/link/t4;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v4

    .line 4
    iget-object v4, v4, Lcom/netease/mobile/link/a5;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v4}, Lcom/netease/mobile/link/t4;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Lcom/netease/mobile/link/t4;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 7
    invoke-static {v1, v2, v3, v4, v5}, Lcom/netease/mobile/link/n0;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/netease/mobile/link/n0$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/t4;->a(Lcom/netease/mobile/link/n0$b;)Lcom/netease/mobile/link/v4;

    move-result-object v0
    :try_end_0
    .catch Lcom/netease/mobile/link/n0$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/netease/mobile/link/v4;

    invoke-direct {v0}, Lcom/netease/mobile/link/v4;-><init>()V

    invoke-static {}, Lcom/netease/mobile/link/h6;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/netease/mobile/link/v4;->a(ILjava/lang/String;)Lcom/netease/mobile/link/v4;

    move-result-object v0

    :goto_0
    return-object v0
.end method
