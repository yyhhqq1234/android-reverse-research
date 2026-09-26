.class public Lcom/netease/mpay/server/a/af;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/login/mobile/user_info"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/af;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/af;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/af;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/server/a/af;->c:Z

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/v;
    .locals 2

    new-instance v1, Lcom/netease/mpay/server/response/v;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/v;-><init>()V

    const-string v0, "registered"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/af;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/mpay/server/response/v;->a:Z

    const-string v0, "force_sms"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/af;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/mpay/server/response/v;->b:Z

    const-string v0, "pre_active"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/af;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/netease/mpay/server/response/v;->c:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/af;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "mobile"

    iget-object v3, p0, Lcom/netease/mpay/server/a/af;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netease/mpay/widget/a/a;

    const-string v3, "login_for"

    iget-boolean v0, p0, Lcom/netease/mpay/server/a/af;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "6"

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/server/a/af;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mpay/server/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/af;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/v;

    move-result-object v0

    return-object v0
.end method
