.class public Lcom/netease/mpay/b/m$c;
.super Lcom/netease/mpay/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/b/m;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/n;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->E:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/m$c;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/b/m$c;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/m$a;->f:Lcom/netease/mpay/b/m$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/netease/mpay/b/m;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/m$a;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b/n;)V

    iput p2, p0, Lcom/netease/mpay/b/m$c;->b:I

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

    sget-object v0, Lcom/netease/mpay/b/ak;->E:Lcom/netease/mpay/b/ak;

    iget v1, p0, Lcom/netease/mpay/b/m$c;->b:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/m$c;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    return-void
.end method
