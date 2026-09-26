.class public Lcom/netease/mpay/b/m;
.super Lcom/netease/mpay/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/m$c;,
        Lcom/netease/mpay/b/m$f;,
        Lcom/netease/mpay/b/m$e;,
        Lcom/netease/mpay/b/m$g;,
        Lcom/netease/mpay/b/m$d;,
        Lcom/netease/mpay/b/m$b;,
        Lcom/netease/mpay/b/m$a;
    }
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/b/m$a;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->C:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/m;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/b/m$a;->values()[Lcom/netease/mpay/b/m$a;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/m$a;->a:Lcom/netease/mpay/b/m$a;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Lcom/netease/mpay/b/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/m;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/m$a;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-object p2, p0, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

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

.method synthetic constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/m$a;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/b/m;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/m$a;Lcom/netease/mpay/AuthenticationCallback;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/netease/mpay/b/m;
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->C:Lcom/netease/mpay/b/ak;

    invoke-static {p0, v0}, Lcom/netease/mpay/b/m;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/b/m$a;->values()[Lcom/netease/mpay/b/m$a;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    sget-object v1, Lcom/netease/mpay/b/n;->a:[I

    invoke-virtual {v0}, Lcom/netease/mpay/b/m$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netease/mpay/b/m;

    invoke-direct {v0, p0}, Lcom/netease/mpay/b/m;-><init>(Landroid/content/Intent;)V

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/m$a;->a:Lcom/netease/mpay/b/m$a;

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/b/m$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/b/m$d;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/b/m$g;

    invoke-direct {v0, p0}, Lcom/netease/mpay/b/m$g;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/netease/mpay/b/m$e;

    invoke-direct {v0, p0}, Lcom/netease/mpay/b/m$e;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/b/m$f;

    invoke-direct {v0, p0}, Lcom/netease/mpay/b/m$f;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/netease/mpay/b/m$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/b/m$c;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/k;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->C:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m$a;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/m;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    return-void
.end method
