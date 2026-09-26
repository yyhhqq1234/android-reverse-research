.class public Lcom/netease/mpay/server/a/ay;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/ArrayList;

.field e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/friends/sync/sina_weibo"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/ay;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/ay;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/ay;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/ay;->d:Ljava/util/ArrayList;

    iput p5, p0, Lcom/netease/mpay/server/a/ay;->e:I

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/ad;
    .locals 7

    new-instance v1, Lcom/netease/mpay/server/response/ad;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/ad;-><init>()V

    const-string v0, "friend_suggestions"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/ay;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/netease/mpay/server/response/ad$a;

    invoke-direct {v4}, Lcom/netease/mpay/server/response/ad$a;-><init>()V

    invoke-static {v2, v0}, Lcom/netease/mpay/server/a/ay;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "sina_weibo_uid"

    invoke-static {v5, v6}, Lcom/netease/mpay/server/a/ay;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/netease/mpay/server/response/ad$a;->a:Ljava/lang/String;

    const-string v6, "user_id"

    invoke-static {v5, v6}, Lcom/netease/mpay/server/a/ay;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/mpay/server/response/ad$a;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/netease/mpay/server/response/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ay;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ay;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ay;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/server/a/ay;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/server/a/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/social/m;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sina_weibo_uid"

    iget-object v6, v0, Lcom/netease/mpay/social/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "fans_type"

    iget v6, v0, Lcom/netease/mpay/social/m;->b:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/netease/mpay/social/m;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "user_id"

    iget-object v0, v0, Lcom/netease/mpay/social/m;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "op_type"

    iget v5, p0, Lcom/netease/mpay/server/a/ay;->e:I

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v3, "friends_data"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/ay;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/ad;

    move-result-object v0

    return-object v0
.end method
