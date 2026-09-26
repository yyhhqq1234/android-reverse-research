.class public Lcom/netease/mpay/b/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/mpay/b/ak;->Q:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/o$a;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->R:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/o$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->P:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/o$a;->c:Ljava/lang/Integer;

    sget-object v0, Lcom/netease/mpay/b/ak;->U:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->S:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->f(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iput-object v0, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/o$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/o$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/o$a;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

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
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->Q:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/o$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->R:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/o$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/b/o$a;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->P:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/o$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/ak;->U:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->S:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Landroid/os/Parcelable;)V

    return-void
.end method
