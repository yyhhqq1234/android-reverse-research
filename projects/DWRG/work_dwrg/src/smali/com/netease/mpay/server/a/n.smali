.class public Lcom/netease/mpay/server/a/n;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/binding/info"

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/n;->b:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/urslogin/a;
    .locals 9

    new-instance v1, Lcom/netease/mpay/server/response/urslogin/a;

    invoke-direct {v1}, Lcom/netease/mpay/server/response/urslogin/a;-><init>()V

    const-string v0, "guide_text"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/n;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/server/response/urslogin/a;->a:Ljava/lang/String;

    const-string v0, "relations"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-static {v2, v0}, Lcom/netease/mpay/server/a/n;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v1, Lcom/netease/mpay/server/response/urslogin/a;->b:Ljava/util/ArrayList;

    new-instance v6, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    const-string v7, "relation_id"

    invoke-static {v4, v7}, Lcom/netease/mpay/server/a/n;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mask_mobile"

    invoke-static {v4, v8}, Lcom/netease/mpay/server/a/n;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "game_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/n;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "email"

    iget-object v3, p0, Lcom/netease/mpay/server/a/n;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/n;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/urslogin/a;

    move-result-object v0

    return-object v0
.end method
