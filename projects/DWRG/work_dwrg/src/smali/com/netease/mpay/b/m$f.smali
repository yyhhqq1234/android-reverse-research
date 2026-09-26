.class public Lcom/netease/mpay/b/m$f;
.super Lcom/netease/mpay/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/b/m;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/n;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->l:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/m$f;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/m$f;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->k:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/m$f;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/m$f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/m$a;->e:Lcom/netease/mpay/b/m$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/netease/mpay/b/m;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/m$a;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b/n;)V

    iput-object p2, p0, Lcom/netease/mpay/b/m$f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/m$f;->c:Ljava/lang/String;

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

    sget-object v0, Lcom/netease/mpay/b/ak;->l:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/m$f;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/m$f;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->k:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/m$f;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/m$f;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void
.end method
