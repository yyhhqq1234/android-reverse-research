.class public Lcom/netease/mpay/server/a/ar;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/qrcode/scan"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/ar;->a:Ljava/lang/String;

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

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/aa;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/netease/mpay/server/response/aa;

    invoke-direct {v0}, Lcom/netease/mpay/server/response/aa;-><init>()V

    const-string v1, "qrcode_info"

    invoke-static {p2, v1}, Lcom/netease/mpay/server/a/ar;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/ar;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/netease/mpay/server/response/aa$a;->a(I)Lcom/netease/mpay/server/response/aa$a;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mpay/server/response/aa;->b:Lcom/netease/mpay/server/response/aa$a;

    const-string v2, "uuid"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/ar;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mpay/server/response/aa;->a:Ljava/lang/String;

    const-string v2, "game"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/ar;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/netease/mpay/server/a/ar;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mpay/server/response/aa;->c:Ljava/lang/String;

    const-string v3, "qrcode_channel_name"

    invoke-static {v2, v3}, Lcom/netease/mpay/server/a/ar;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mpay/server/response/aa;->f:Ljava/lang/String;

    :try_start_0
    const-string v2, "user"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/ar;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/server/response/aa$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0}, Lcom/netease/mpay/server/response/aa$b;-><init>(Lcom/netease/mpay/server/response/aa;)V

    const-string v4, "id"

    invoke-static {v2, v4}, Lcom/netease/mpay/server/a/ar;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/mpay/server/response/aa$b;->a:Ljava/lang/String;

    const-string v4, "login_type"

    invoke-static {v2, v4}, Lcom/netease/mpay/server/a/ar;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/netease/mpay/server/response/aa$b;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "username"

    invoke-static {v2, v4}, Lcom/netease/mpay/server/a/ar;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/netease/mpay/server/response/aa$b;->b:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v2}, Lcom/netease/mpay/server/a/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/netease/mpay/server/response/aa$b;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iput-object v3, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    const-string v2, "order"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/ar;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/ar;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/server/response/aa;->e:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-object v0

    :cond_0
    :try_start_4
    iput-object v2, v3, Lcom/netease/mpay/server/response/aa$b;->c:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, v3, Lcom/netease/mpay/server/response/aa$b;->c:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    iput-object v6, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    goto :goto_1

    :catch_2
    move-exception v1

    iput-object v6, v0, Lcom/netease/mpay/server/response/aa;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "uuid"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ar;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/ar;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/aa;

    move-result-object v0

    return-object v0
.end method
