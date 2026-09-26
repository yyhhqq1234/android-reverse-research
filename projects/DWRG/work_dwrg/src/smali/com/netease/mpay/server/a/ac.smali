.class public Lcom/netease/mpay/server/a/ac;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/games/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/login_methods"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/server/a/ac;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/mpay/server/a/ac;->b:Z

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
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/u;
    .locals 18

    new-instance v12, Lcom/netease/mpay/server/response/u;

    invoke-direct {v12}, Lcom/netease/mpay/server/response/u;-><init>()V

    const-string v1, "entrance"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/ac;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const-string v1, "config"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/ac;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v1, "expire_time"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/server/a/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    :goto_0
    iput-wide v1, v12, Lcom/netease/mpay/server/response/u;->a:J

    if-eqz v10, :cond_2

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_2

    invoke-static {v10, v8}, Lcom/netease/mpay/server/a/ac;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v14, Lcom/netease/mpay/server/response/s$a;

    invoke-direct {v14}, Lcom/netease/mpay/server/response/s$a;-><init>()V

    if-eqz v11, :cond_1

    const/4 v1, 0x0

    move v9, v1

    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_1

    invoke-static {v11, v9}, Lcom/netease/mpay/server/a/ac;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v1, Lcom/netease/mpay/server/response/s;

    const-string v2, "type"

    invoke-static {v7, v2}, Lcom/netease/mpay/server/a/ac;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "name"

    invoke-static {v7, v4}, Lcom/netease/mpay/server/a/ac;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hot"

    invoke-static {v7, v5}, Lcom/netease/mpay/server/a/ac;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "login_url"

    invoke-static {v7, v6}, Lcom/netease/mpay/server/a/ac;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "icon_url"

    invoke-static {v7, v15}, Lcom/netease/mpay/server/a/ac;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/server/response/s;-><init>(IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v14, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, v12, Lcom/netease/mpay/server/response/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v13, v2}, Lcom/netease/mpay/server/a/ac;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v15, v12, Lcom/netease/mpay/server/response/u;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    new-instance v1, Lcom/netease/mpay/server/response/r;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "user_icon_url"

    invoke-static {v11, v3}, Lcom/netease/mpay/server/a/ac;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "welcome_icon_url"

    invoke-static {v11, v4}, Lcom/netease/mpay/server/a/ac;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "remind_from"

    const-wide/32 v6, 0x93a80

    invoke-static {v11, v5, v6, v7}, Lcom/netease/mpay/server/a/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "remind_interval"

    const-wide/32 v8, 0x93a80

    invoke-static {v11, v7, v8, v9}, Lcom/netease/mpay/server/a/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v9, "remind_if_pay"

    const/4 v10, 0x1

    invoke-static {v11, v9, v10}, Lcom/netease/mpay/server/a/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "bind_guest"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v10, v0}, Lcom/netease/mpay/server/a/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v10

    const-string v17, "guest_bind_tips"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/netease/mpay/server/a/ac;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/netease/mpay/server/response/r;-><init>(ILjava/lang/String;Ljava/lang/String;JJZZLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-object v12
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/netease/mpay/widget/a/a;

    const-string v3, "oversea_user"

    iget-boolean v0, p0, Lcom/netease/mpay/server/a/ac;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_udid"

    invoke-static {p1}, Lcom/netease/mpay/widget/az;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/server/a/ac;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/ac;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/ac;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    return-object v0
.end method
