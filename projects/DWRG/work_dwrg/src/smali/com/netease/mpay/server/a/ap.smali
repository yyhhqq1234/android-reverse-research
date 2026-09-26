.class public Lcom/netease/mpay/server/a/ap;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/patches/list"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/ap;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/ap;->b:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/z;
    .locals 11

    new-instance v9, Lcom/netease/mpay/server/response/z;

    invoke-direct {v9}, Lcom/netease/mpay/server/response/z;-><init>()V

    const-string v0, "patches"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/ap;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_2

    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "ext_info"

    invoke-static {v5, v0}, Lcom/netease/mpay/server/a/ap;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v0, Lcom/netease/mpay/e/b/z;

    const-string v1, "id"

    invoke-static {v5, v1}, Lcom/netease/mpay/server/a/ap;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-static {v5, v2}, Lcom/netease/mpay/server/a/ap;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v5, v3}, Lcom/netease/mpay/server/a/ap;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    invoke-static {v5, v4}, Lcom/netease/mpay/server/a/ap;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "url"

    invoke-static {v5, v7}, Lcom/netease/mpay/server/a/ap;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_1

    const-string v7, "code_version"

    invoke-static {v6, v7}, Lcom/netease/mpay/server/a/ap;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    sget-object v7, Lcom/netease/mpay/e/b/z$a;->a:Lcom/netease/mpay/e/b/z$a;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/e/b/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/z$a;)V

    iget-object v1, v0, Lcom/netease/mpay/e/b/z;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v9, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    return-object v9
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ap;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "unique_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ap;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "app_mode"

    sget-object v3, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/netease/mpay/server/b$b;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/z;

    move-result-object v0

    return-object v0
.end method
