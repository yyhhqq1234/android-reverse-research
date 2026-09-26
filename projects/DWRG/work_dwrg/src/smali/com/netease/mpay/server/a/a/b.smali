.class public Lcom/netease/mpay/server/a/a/b;
.super Lcom/netease/mpay/server/a/a/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/fetch_list"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/a/a;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/a/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/a/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/a/b;->d:Ljava/lang/String;

    iput p5, p0, Lcom/netease/mpay/server/a/a/b;->e:I

    iput-object p6, p0, Lcom/netease/mpay/server/a/a/b;->f:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/a/a;
    .locals 10

    const-wide/16 v8, 0x3e8

    new-instance v1, Lcom/netease/mpay/server/response/a/a;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/a/a;-><init>()V

    const-string v0, "remind"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/a/b;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/mpay/server/response/a/a;->a:Z

    const-string v0, "cursors"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/a/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/server/response/a/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    const-string v0, "messages"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/a/b;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-static {v2, v0}, Lcom/netease/mpay/server/a/a/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "info"

    invoke-static {v3, v4}, Lcom/netease/mpay/server/a/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/e/b/u;

    invoke-direct {v5}, Lcom/netease/mpay/e/b/u;-><init>()V

    const-string v6, "id"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/a/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/netease/mpay/e/b/u;->a:Ljava/lang/String;

    const-string v6, "title"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/a/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/netease/mpay/e/b/u;->b:Ljava/lang/String;

    const-string v6, "abstract"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/a/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/netease/mpay/e/b/u;->c:Ljava/lang/String;

    const-string v6, "image"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/a/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/netease/mpay/e/b/u;->d:Ljava/lang/String;

    const-string v6, "status"

    invoke-static {v3, v6}, Lcom/netease/mpay/server/a/a/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/netease/mpay/e/b/u;->e:I

    const-string v6, "url"

    invoke-static {v4, v6}, Lcom/netease/mpay/server/a/a/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/netease/mpay/e/b/u;->f:Ljava/lang/String;

    const-string v6, "need_ticket"

    invoke-static {v4, v6}, Lcom/netease/mpay/server/a/a/b;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/netease/mpay/e/b/u;->g:Z

    const-string v6, "shared_content"

    invoke-static {v4, v6}, Lcom/netease/mpay/server/a/a/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/netease/mpay/e/b/u;->h:Ljava/lang/String;

    const-string v4, "create_time"

    invoke-static {v3, v4}, Lcom/netease/mpay/server/a/a/b;->i(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    iput-wide v6, v5, Lcom/netease/mpay/e/b/u;->i:J

    const-string v4, "update_time"

    invoke-static {v3, v4}, Lcom/netease/mpay/server/a/a/b;->i(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v8

    iput-wide v3, v5, Lcom/netease/mpay/e/b/u;->j:J

    iget-object v3, v1, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "game_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/a/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/a/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/a/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "fetch_type"

    iget v3, p0, Lcom/netease/mpay/server/a/a/b;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mpay/server/a/a/b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "cursors"

    iget-object v3, p0, Lcom/netease/mpay/server/a/a/b;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/a/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/a/a;

    move-result-object v0

    return-object v0
.end method
