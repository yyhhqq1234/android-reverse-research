.class public final Lcom/netease/mobile/link/e6;
.super Lcom/netease/mobile/link/f5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/f5<",
        "Lcom/netease/mobile/link/d6;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/c6;",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/d6;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)Lcom/netease/mobile/link/v4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/d6;",
            ">;)",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/d6;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 2
    iget-object v1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mobile/link/d6;

    iget-object v1, v1, Lcom/netease/mobile/link/d6;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    iget-object v1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mobile/link/d6;

    iget-object v1, v1, Lcom/netease/mobile/link/d6;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/netease/mobile/link/f6;->p:Z

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 8
    iget-object v1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mobile/link/d6;

    iget-object v1, v1, Lcom/netease/mobile/link/d6;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/f6;->o:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/a5;->a(Z)V

    :cond_0
    return-object p1
.end method

.method public final b()Lcom/netease/mobile/link/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/d6;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/netease/mobile/link/f5;->b()Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0
.end method
