.class public Lcom/netease/mpay/b/ab;
.super Lcom/netease/mpay/b/a;


# instance fields
.field public a:Z

.field public b:Lcom/netease/mpay/sharer/ShareContent;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->v:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ab;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/netease/mpay/sharer/d;->a(I)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    sget-object v0, Lcom/netease/mpay/b/ak;->w:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ab;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ab;->c:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->x:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/ab;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/b/ab;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/sharer/ShareContent;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    iput-boolean p2, p0, Lcom/netease/mpay/b/ab;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    iput-object p4, p0, Lcom/netease/mpay/b/ab;->c:Ljava/lang/String;

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
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/netease/mpay/b/ak;->v:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    invoke-static {v1}, Lcom/netease/mpay/sharer/d;->a(Lcom/netease/mpay/sharer/ShareContent;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ab;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->w:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ab;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ab;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->x:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/ab;->a:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/ab;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    return-void
.end method
