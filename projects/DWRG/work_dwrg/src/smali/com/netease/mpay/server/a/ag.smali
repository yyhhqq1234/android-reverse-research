.class public Lcom/netease/mpay/server/a/ag;
.super Lcom/netease/mpay/server/a/d;


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "/api/users/login/mobile/finish"

    invoke-direct {p0, v0, p3}, Lcom/netease/mpay/server/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/ag;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/ag;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/ag;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/ag;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/server/a/ag;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/server/a/ag;->h:Ljava/lang/String;

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
.method a(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netease/mpay/server/a/ag;->b(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "login_for"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ag;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/mpay/server/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Ljava/util/ArrayList;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ag;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "ticket"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ag;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/server/a/ag;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "relation_id"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ag;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/server/a/ag;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "urs_udid"

    iget-object v2, p0, Lcom/netease/mpay/server/a/ag;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
