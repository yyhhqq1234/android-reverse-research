.class public Lcom/netease/mpay/server/a/f;
.super Lcom/netease/mpay/server/a/ax;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/config/common.json"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/c;
    .locals 10

    const/4 v1, 0x0

    new-instance v2, Lcom/netease/mpay/server/response/c;

    invoke-direct {v2}, Lcom/netease/mpay/server/response/c;-><init>()V

    const-string v0, "version"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/f;->i(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/netease/mpay/server/response/c;->a:J

    const-string v0, "email_web_url"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/f;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v0, "unionpay_package"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/f;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v0, "nettest"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "weixinpay"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/f;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/netease/mpay/server/response/c;->b:Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/f;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/netease/mpay/e/b/h;

    invoke-direct {v8}, Lcom/netease/mpay/e/b/h;-><init>()V

    const-string v9, "pattern"

    invoke-static {v7, v9}, Lcom/netease/mpay/server/a/f;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/netease/mpay/e/b/h;->a:Ljava/lang/String;

    const-string v9, "url"

    invoke-static {v7, v9}, Lcom/netease/mpay/server/a/f;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/netease/mpay/e/b/h;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/netease/mpay/server/response/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/netease/mpay/server/response/c;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v2, Lcom/netease/mpay/server/response/c;->c:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/netease/mpay/server/a/f;->c(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    const-string v0, "limit_time"

    invoke-static {v5, v0}, Lcom/netease/mpay/server/a/f;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/netease/mpay/server/response/c;->d:I

    const-string v0, "limit_interval"

    invoke-static {v5, v0}, Lcom/netease/mpay/server/a/f;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/netease/mpay/server/response/c;->e:J

    :cond_2
    if-eqz v6, :cond_3

    const-string v0, "download_url"

    invoke-static {v6, v0}, Lcom/netease/mpay/server/a/f;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netease/mpay/server/response/c;->f:Ljava/lang/String;

    const-string v0, "min_pv"

    invoke-static {v6, v0}, Lcom/netease/mpay/server/a/f;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/netease/mpay/server/response/c;->g:I

    const-string v0, "new_pv"

    invoke-static {v6, v0}, Lcom/netease/mpay/server/a/f;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/netease/mpay/server/response/c;->h:I

    :cond_3
    return-object v2
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/f;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/c;

    move-result-object v0

    return-object v0
.end method
