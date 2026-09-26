.class public Lcom/netease/mpay/server/a/p;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/game/get_enter_game_info"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/p;->d:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/i;
    .locals 4

    new-instance v0, Lcom/netease/mpay/server/response/i;

    invoke-direct {v0}, Lcom/netease/mpay/server/response/i;-><init>()V

    const-string v1, "op"

    invoke-static {p2, v1}, Lcom/netease/mpay/server/a/p;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/i;->a:Ljava/lang/String;

    const-string v1, "params"

    invoke-static {p2, v1}, Lcom/netease/mpay/server/a/p;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/i;->b:Ljava/lang/String;

    const-string v1, "tips"

    invoke-static {p2, v1}, Lcom/netease/mpay/server/a/p;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/i;->c:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {p2, v1}, Lcom/netease/mpay/server/a/p;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/netease/mpay/server/response/i$a;

    invoke-direct {v2}, Lcom/netease/mpay/server/response/i$a;-><init>()V

    iput-object v2, v0, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget-object v2, v0, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    const-string v3, "id"

    invoke-static {v1, v3}, Lcom/netease/mpay/server/a/p;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/mpay/server/response/i$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    const-string v3, "login_type"

    invoke-static {v1, v3}, Lcom/netease/mpay/server/a/p;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/netease/mpay/server/response/i$a;->b:I

    iget-object v2, v0, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    const-string v3, "username"

    invoke-static {v1, v3}, Lcom/netease/mpay/server/a/p;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/netease/mpay/server/response/i$a;->c:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/p;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "ticket"

    iget-object v3, p0, Lcom/netease/mpay/server/a/p;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mpay/server/a/p;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/server/a/p;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/p;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/p;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/i;

    move-result-object v0

    return-object v0
.end method
