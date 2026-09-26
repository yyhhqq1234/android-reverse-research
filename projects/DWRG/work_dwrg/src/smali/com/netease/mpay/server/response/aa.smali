.class public Lcom/netease/mpay/server/response/aa;
.super Lcom/netease/mpay/server/response/ac;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/server/response/aa$b;,
        Lcom/netease/mpay/server/response/aa$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/netease/mpay/server/response/aa$a;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/server/response/aa$b;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/server/response/ac;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

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

.method public static a(Landroid/content/Intent;)Lcom/netease/mpay/server/response/aa;
    .locals 5

    new-instance v0, Lcom/netease/mpay/server/response/aa;

    invoke-direct {v0}, Lcom/netease/mpay/server/response/aa;-><init>()V

    sget-object v1, Lcom/netease/mpay/b/ak;->aj:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v1}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->a:Ljava/lang/String;

    sget-object v1, Lcom/netease/mpay/b/ak;->ak:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v1}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v1

    invoke-static {v1}, Lcom/netease/mpay/server/response/aa$a;->a(I)Lcom/netease/mpay/server/response/aa$a;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->b:Lcom/netease/mpay/server/response/aa$a;

    sget-object v1, Lcom/netease/mpay/b/ak;->al:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v1}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->c:Ljava/lang/String;

    sget-object v1, Lcom/netease/mpay/b/ak;->am:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v1}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->f:Ljava/lang/String;

    sget-object v1, Lcom/netease/mpay/b/ak;->an:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v1}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/b/ak;->ao:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v2}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v2

    sget-object v3, Lcom/netease/mpay/b/ak;->ap:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v3}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    new-instance v4, Lcom/netease/mpay/server/response/aa$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcom/netease/mpay/server/response/aa$b;-><init>(Lcom/netease/mpay/server/response/aa;)V

    iput-object v3, v4, Lcom/netease/mpay/server/response/aa$b;->c:Ljava/lang/String;

    iput-object v1, v4, Lcom/netease/mpay/server/response/aa$b;->a:Ljava/lang/String;

    iput v2, v4, Lcom/netease/mpay/server/response/aa$b;->b:I

    iput-object v4, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    :goto_0
    sget-object v1, Lcom/netease/mpay/b/ak;->aq:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v1}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/netease/mpay/b/ak;->aj:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ak:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->b:Lcom/netease/mpay/server/response/aa$a;

    invoke-virtual {v1}, Lcom/netease/mpay/server/response/aa$a;->a()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->al:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->am:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->an:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    iget-object v1, v1, Lcom/netease/mpay/server/response/aa$b;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ao:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    iget v1, v1, Lcom/netease/mpay/server/response/aa$b;->b:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ap:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    iget-object v1, v1, Lcom/netease/mpay/server/response/aa$b;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/ak;->aq:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/server/response/aa;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void
.end method
