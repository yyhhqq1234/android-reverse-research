.class public final Lcom/netease/mobile/link/x0;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/z0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 2
    iget-boolean p1, p1, Lcom/netease/mobile/link/f6;->p:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-virtual {v0}, Lcom/netease/mobile/link/b5;->b()Z

    move-result v0

    const-string v1, "MobileLink"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/mobile/link/t;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mobile/link/a5;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HistoryPhoneLinkView verify: YD is available"

    .line 5
    invoke-static {v1, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/netease/mobile/link/m4;

    iget-object v0, p0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 7
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 8
    new-instance v1, Lcom/netease/mobile/link/x0$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/x0$a;-><init>(Lcom/netease/mobile/link/x0;)V

    invoke-direct {p1, v0, v1}, Lcom/netease/mobile/link/m4;-><init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V

    invoke-virtual {p1}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "HistoryPhoneLinkView verify: YD is not available"

    .line 9
    invoke-static {v1, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 11
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 12
    iget-object v0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v1, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v0, v1, p1}, Lcom/netease/mobile/link/p0;->e(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 13
    iget-object v0, v0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 14
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 18
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/netease/mobile/link/e6;

    new-instance v2, Lcom/netease/mobile/link/c6;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v3

    iget-object v4, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v4, v4, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v2, v3, v4}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    iget-object v3, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    .line 19
    iput-object v3, v2, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    .line 20
    iget-object v0, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    const/4 v3, 0x3

    .line 21
    iput v3, v2, Lcom/netease/mobile/link/c6;->j:I

    iput-object v0, v2, Lcom/netease/mobile/link/c6;->k:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/netease/mobile/link/y0;

    invoke-direct {v0, p1}, Lcom/netease/mobile/link/y0;-><init>(Lcom/netease/mobile/link/z0;)V

    invoke-direct {v1, v2, v0}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    :goto_0
    return-void
.end method
