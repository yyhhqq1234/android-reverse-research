.class public Lcom/netease/mpay/server/a/bf;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/games/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/devices/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user_center"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/netease/mpay/server/a/bf;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/bf;->b:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/ag;
    .locals 7

    new-instance v1, Lcom/netease/mpay/server/response/ag;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/ag;-><init>()V

    iget-object v0, v1, Lcom/netease/mpay/server/response/ag;->a:Lcom/netease/mpay/e/b/aj;

    iget-object v2, p0, Lcom/netease/mpay/server/a/bf;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/mpay/e/b/aj;->a:Ljava/lang/String;

    const-string v0, "user_center"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/bf;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static {v2, v0}, Lcom/netease/mpay/server/a/bf;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/e/b/aj$a;

    invoke-direct {v4, v3}, Lcom/netease/mpay/e/b/aj$a;-><init>(Lorg/json/JSONObject;)V

    iget-object v5, v1, Lcom/netease/mpay/server/response/ag;->a:Lcom/netease/mpay/e/b/aj;

    iget-object v5, v5, Lcom/netease/mpay/e/b/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "updates"

    invoke-static {v3, v5}, Lcom/netease/mpay/server/a/bf;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v5, v1, Lcom/netease/mpay/server/response/ag;->b:Lcom/netease/mpay/e/b/al;

    iget-object v5, v5, Lcom/netease/mpay/e/b/al;->a:Ljava/util/HashMap;

    iget-object v4, v4, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/e/b/al$a;

    invoke-direct {v6, v3}, Lcom/netease/mpay/e/b/al$a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/bf;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/bf;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/ag;

    move-result-object v0

    return-object v0
.end method
