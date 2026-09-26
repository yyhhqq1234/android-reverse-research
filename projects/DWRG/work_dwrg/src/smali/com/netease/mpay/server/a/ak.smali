.class public Lcom/netease/mpay/server/a/ak;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/login/mobile/user_info"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/ak;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/ak;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/ak;->c:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/x;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/mpay/server/response/x;

    invoke-direct {v3}, Lcom/netease/mpay/server/response/x;-><init>()V

    const-string v0, "registered"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/ak;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/netease/mpay/server/response/x;->a:Z

    const-string v0, "force_sms"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/ak;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/netease/mpay/server/response/x;->b:Z

    const-string v0, "yd_info"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/ak;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "pass_set"

    invoke-static {v0, v4}, Lcom/netease/mpay/server/a/ak;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/netease/mpay/server/response/x;->d:Z

    const-string v4, "real_name_set"

    invoke-static {v0, v4}, Lcom/netease/mpay/server/a/ak;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/netease/mpay/server/response/x;->e:Z

    const-string v4, "real_name_verify"

    invoke-static {v0, v4}, Lcom/netease/mpay/server/a/ak;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/mpay/server/response/x;->f:I

    const-string v4, "secure_email"

    invoke-static {v0, v4}, Lcom/netease/mpay/server/a/ak;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, "email"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/ak;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/netease/mpay/server/response/x;->g:Z

    iget-boolean v0, v3, Lcom/netease/mpay/server/response/x;->g:Z

    if-eqz v0, :cond_2

    const-string v0, "active"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/ak;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, v3, Lcom/netease/mpay/server/response/x;->h:Z

    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ak;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mpay/server/a/ak;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "mobile"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ak;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/server/a/ak;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ak;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/x;

    move-result-object v0

    return-object v0
.end method
