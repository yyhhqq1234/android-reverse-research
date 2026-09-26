.class public Lcom/netease/mpay/b/ah;
.super Lcom/netease/mpay/b/a;


# instance fields
.field public a:Lcom/netease/mpay/f/an$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/server/e$a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->at:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ah;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    invoke-static {v0}, Lcom/netease/mpay/f/an$a;->a(I)Lcom/netease/mpay/f/an$a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

    sget-object v0, Lcom/netease/mpay/b/ak;->V:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ah;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ah;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->au:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ah;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ah;->c:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->X:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ah;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ah;->e:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->r:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ah;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ah;->f:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->av:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ah;->d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/hi;->d:Lcom/netease/mpay/widget/al;

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/widget/al;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/e$a;

    iput-object v0, p0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    iput-object p2, p0, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

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
.method public a(Lcom/netease/mpay/server/e$a;)Lcom/netease/mpay/b/ah;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/b/ah;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/b/ah;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/b/ah;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/b/ah;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/ah;->f:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->at:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

    invoke-virtual {v1}, Lcom/netease/mpay/f/an$a;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ah;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/ak;->V:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ah;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ah;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->au:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ah;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ah;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->X:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ah;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ah;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->r:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ah;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ah;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/b/ak;->av:Lcom/netease/mpay/b/ak;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/hi;->d:Lcom/netease/mpay/widget/al;

    iget-object v2, p0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/b/ah;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;J)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/b/ah;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/b/ah;->c:Ljava/lang/String;

    return-object p0
.end method
