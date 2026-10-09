.class public final Lcom/netease/mobile/link/s4;
.super Lcom/netease/mobile/link/f5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/f5<",
        "Lcom/netease/mobile/link/r4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Lcom/netease/mobile/link/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/f6$a;",
            "Ljava/lang/String;",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/r4;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/netease/mobile/link/q4;

    invoke-direct {v0, p1, p2}, Lcom/netease/mobile/link/q4;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)Lcom/netease/mobile/link/v4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/r4;",
            ">;)",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/r4;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 2
    iget-object v1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mobile/link/r4;

    iget v2, v1, Lcom/netease/mobile/link/r4;->c:I

    iput v2, v0, Lcom/netease/mobile/link/f6;->m:I

    iget-object v2, v1, Lcom/netease/mobile/link/r4;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    iget-object v2, v1, Lcom/netease/mobile/link/r4;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    iget-object v2, v1, Lcom/netease/mobile/link/r4;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/mobile/link/f6;->b:Ljava/lang/String;

    iget v2, v1, Lcom/netease/mobile/link/r4;->f:I

    iput v2, v0, Lcom/netease/mobile/link/f6;->n:I

    .line 3
    iget v1, v1, Lcom/netease/mobile/link/r4;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iput-boolean v2, v0, Lcom/netease/mobile/link/f6;->p:Z

    :cond_1
    return-object p1
.end method

.method public final b()Lcom/netease/mobile/link/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/r4;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/netease/mobile/link/f5;->b()Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0
.end method
