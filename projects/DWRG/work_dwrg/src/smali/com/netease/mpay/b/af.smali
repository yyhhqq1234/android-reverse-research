.class public Lcom/netease/mpay/b/af;
.super Lcom/netease/mpay/b/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->l:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/af;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->m:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/af;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/af;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->n:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/af;->f(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    iput-object v0, p0, Lcom/netease/mpay/b/af;->c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    invoke-direct {p0, p1, p5}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-object p2, p0, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/af;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/b/af;->c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

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

    invoke-super {p0, p1}, Lcom/netease/mpay/b/k;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->l:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/af;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->m:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/af;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/af;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->n:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/af;->c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/af;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Landroid/os/Parcelable;)V

    return-void
.end method
