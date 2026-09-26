.class public Lcom/netease/mpay/server/a/bj;
.super Lcom/netease/mpay/server/a/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "/api/users/login/mobile/verify_sms2"

    invoke-direct {p0, v0, p2}, Lcom/netease/mpay/server/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/bj;->a:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/netease/mpay/server/a/bj;->b:Z

    iput-object p2, p0, Lcom/netease/mpay/server/a/bj;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/bj;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/bj;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/server/a/bj;->f:Ljava/lang/String;

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

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/netease/mpay/server/a/bj;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "smscode"

    iget-object v2, p0, Lcom/netease/mpay/server/a/bj;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "token"

    iget-object v2, p0, Lcom/netease/mpay/server/a/bj;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/netease/mpay/server/a/bj;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "login_for"

    iget-boolean v0, p0, Lcom/netease/mpay/server/a/bj;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "4"

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/server/a/bj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "urs_udid"

    iget-object v2, p0, Lcom/netease/mpay/server/a/bj;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "5"

    goto :goto_0
.end method
