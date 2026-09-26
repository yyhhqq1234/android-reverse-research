.class public Lcom/netease/mpay/b/ao;
.super Lcom/netease/mpay/b/al;


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I


# direct methods
.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 12

    sget-object v0, Lcom/netease/mpay/b/ak;->az:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/netease/mpay/b/ak;->aA:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/netease/mpay/b/ak;->aB:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/b/ak;->aC:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v4

    sget-object v0, Lcom/netease/mpay/b/ak;->aD:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/netease/mpay/b/ak;->aE:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/netease/mpay/b/ak;->aF:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/netease/mpay/b/ak;->aG:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/netease/mpay/b/ak;->aH:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v9

    sget-object v0, Lcom/netease/mpay/b/ak;->aI:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v10

    sget-object v0, Lcom/netease/mpay/b/ak;->aL:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v11

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V
    .locals 12

    iget-object v2, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v5, p2, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v6, p2, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iget-object v8, p2, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    iget-boolean v9, p2, Lcom/netease/mpay/e/b/o;->j:Z

    iget v10, p2, Lcom/netease/mpay/e/b/o;->k:I

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 12

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    iget-object v6, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v8, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    iget-boolean v9, p2, Lcom/netease/mpay/server/response/m;->g:Z

    iget v10, p2, Lcom/netease/mpay/server/response/m;->h:I

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 2

    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/netease/mpay/b/al;-><init>(I)V

    iput-object p1, p0, Lcom/netease/mpay/b/ao;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/ao;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/ao;->e:Ljava/lang/String;

    iput p4, p0, Lcom/netease/mpay/b/ao;->f:I

    iput-object p5, p0, Lcom/netease/mpay/b/ao;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/b/ao;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/mpay/b/ao;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/mpay/b/ao;->j:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/netease/mpay/b/ao;->k:Z

    iput p10, p0, Lcom/netease/mpay/b/ao;->l:I

    iput-boolean p11, p0, Lcom/netease/mpay/b/ao;->b:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/b/ao;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/b/ao;->b:Z

    return-object p0
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->az:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aA:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aB:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aC:Lcom/netease/mpay/b/ak;

    iget v1, p0, Lcom/netease/mpay/b/ao;->f:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aD:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aE:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aF:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aG:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ao;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aH:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/ao;->k:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aI:Lcom/netease/mpay/b/ak;

    iget v1, p0, Lcom/netease/mpay/b/ao;->l:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aL:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/ao;->b:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    return-void
.end method
