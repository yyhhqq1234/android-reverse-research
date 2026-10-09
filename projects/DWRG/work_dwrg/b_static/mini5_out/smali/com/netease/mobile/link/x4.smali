.class public final Lcom/netease/mobile/link/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/d6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/z4;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/z4;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/x4;->a:Lcom/netease/mobile/link/z4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/d6;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/netease/mobile/link/x4;->a:Lcom/netease/mobile/link/z4;

    .line 1
    iget-object v0, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    iget-object v1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netease/mobile/link/a5;->a(Z)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/t;->a()Z

    move-result v2

    const-string v3, "MobileLink"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/a5;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "checkMobile: YD is available"

    .line 5
    invoke-static {v3, v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/netease/mobile/link/m4;

    new-instance v3, Lcom/netease/mobile/link/y4;

    invoke-direct {v3, v1, p1}, Lcom/netease/mobile/link/y4;-><init>(Lcom/netease/mobile/link/m0;Lcom/netease/mobile/link/y;)V

    invoke-direct {v2, v0, v3}, Lcom/netease/mobile/link/m4;-><init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "checkMobile: YD is not available"

    .line 7
    invoke-static {v3, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    iget-object v0, v1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/netease/mobile/link/p0;->d(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/x4;->a:Lcom/netease/mobile/link/z4;

    .line 10
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 11
    iget-object p1, p1, Lcom/netease/mobile/link/v4;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
