.class public Lcom/netease/mpay/server/a/bl;
.super Lcom/netease/mpay/server/a/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "/api/users/login/weixin/auth"

    invoke-direct {p0, v0, p2}, Lcom/netease/mpay/server/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/bl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/bl;->b:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/netease/mpay/server/a/bl;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v1, "code"

    iget-object v2, p0, Lcom/netease/mpay/server/a/bl;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
