.class public Lcom/netease/mpay/b/m$g;
.super Lcom/netease/mpay/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/netease/mpay/b/m$b;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/b/m;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/n;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->r:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/m$g;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/m$g;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->D:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/m$g;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/b/m$b;->values()[Lcom/netease/mpay/b/m$b;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/m$g;->c:Lcom/netease/mpay/b/m$b;

    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/m$a;->c:Lcom/netease/mpay/b/m$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/netease/mpay/b/m;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/m$a;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b/n;)V

    iput-object p2, p0, Lcom/netease/mpay/b/m$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/m$g;->c:Lcom/netease/mpay/b/m$b;

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

    invoke-super {p0, p1}, Lcom/netease/mpay/b/m;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->r:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/m$g;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/m$g;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->D:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/m$g;->c:Lcom/netease/mpay/b/m$b;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m$b;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/m$g;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    return-void
.end method
