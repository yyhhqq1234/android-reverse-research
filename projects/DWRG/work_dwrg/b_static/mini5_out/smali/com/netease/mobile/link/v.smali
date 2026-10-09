.class public final Lcom/netease/mobile/link/v;
.super Lcom/netease/mobile/link/f5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/f5<",
        "Lcom/netease/mobile/link/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/t;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/netease/mobile/link/s;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mobile/link/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)Lcom/netease/mobile/link/v4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/t;",
            ">;)",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/t;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mobile/link/t;

    iget-object v0, v0, Lcom/netease/mobile/link/t;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mobile/link/t;

    iget-object v1, v1, Lcom/netease/mobile/link/t;->f:Ljava/lang/String;

    .line 1
    iput-object v1, v0, Lcom/netease/mobile/link/a5;->j:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public final b()Lcom/netease/mobile/link/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/t;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/netease/mobile/link/f5;->b()Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0
.end method
