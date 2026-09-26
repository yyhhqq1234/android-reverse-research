.class public Lcom/netease/mpay/widget/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/b/a$a;,
        Lcom/netease/mpay/widget/b/a$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v8, 0x1

    new-instance v0, Lcom/netease/mpay/widget/b/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/netease/mpay/widget/b/a$a;-><init>(Lcom/netease/mpay/widget/b/b;)V

    const-string v2, "mpay://"

    invoke-virtual {v0, v2, p5}, Lcom/netease/mpay/widget/b/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "mpay://"

    invoke-virtual {v0, v2, p5}, Lcom/netease/mpay/widget/b/a$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/widget/b/a$b;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v0, "gamecenter"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ifinstalled"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v8, :cond_1

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/netease/mpay/widget/b/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:getInstalled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v8

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v0, "launch"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v8, :cond_3

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v8

    goto :goto_2

    :cond_4
    const-string v0, "getinfo"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "game_id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/netease/mpay/e/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "user_id"

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_name"

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_type"

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:getInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_6
    const-string v0, "share"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "0"

    move-object v7, v0

    :goto_4
    iget-object v0, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v3, "desc"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v4, "shareurl"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v5, "imageurl"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v9, "thumburl"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_7

    move-object v5, v4

    :cond_7
    iget-object v6, v6, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    const-string v9, "invitecode"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v9, Lcom/netease/mpay/sharer/UrlShareContent;

    invoke-direct {v9}, Lcom/netease/mpay/sharer/UrlShareContent;-><init>()V

    invoke-virtual {v9, v4}, Lcom/netease/mpay/sharer/UrlShareContent;->b(Ljava/lang/String;)Lcom/netease/mpay/sharer/UrlShareContent;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/netease/mpay/sharer/UrlShareContent;->a(Ljava/lang/String;)Lcom/netease/mpay/sharer/UrlShareContent;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/netease/mpay/sharer/UrlShareContent;->setType(I)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/netease/mpay/sharer/ShareContent;->setText(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/sharer/ShareContent;->setTitle(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/sharer/ShareContent;->setDesc(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mpay/sharer/ShareContent;->setWebUrl(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/sharer/ShareContent;->setDesc(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    new-instance v0, Lcom/netease/mpay/widget/b/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/widget/b/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Lcom/netease/mpay/sharer/UrlShareContent;Ljava/lang/String;)V

    invoke-virtual {v5, p0, v0}, Lcom/netease/mpay/sharer/UrlShareContent;->a(Landroid/content/Context;Lcom/netease/mpay/sharer/UrlShareContent$a;)V

    :cond_8
    move v0, v8

    goto/16 :goto_2

    :cond_9
    if-eqz v6, :cond_d

    const-string v0, "mailbox"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "getinfo"

    iget-object v2, v6, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v0, "ver"

    const-string v2, "a2.14.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/netease/mpay/e/b;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    const-string v3, "game_code"

    iget-object v4, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    if-nez v4, :cond_a

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v2, "user_name"

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_nickname"

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    if-nez v3, :cond_b

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:getInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_2

    :cond_a
    :try_start_3
    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    goto :goto_6

    :cond_c
    const-string v0, "user_name"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "user_nickname"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    :cond_d
    move v0, v1

    goto/16 :goto_2

    :cond_e
    move-object v7, v0

    goto/16 :goto_4
.end method
