.class public Lcom/tencent/mna/base/a/e;
.super Ljava/lang/Object;
.source "XmlCloudProxy.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/mna/b;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v1, "xmlver"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    const-string v0, ""

    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :try_start_0
    const-string v2, "appid"

    sget-object v3, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string/jumbo v2, "zoneid"

    const/16 v3, 0x3e9

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v2, "openid"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v2, "xmlver"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v2, "gameIP"

    const-string v3, "10000"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Lcom/tencent/mna/base/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    sget-object v1, Lcom/tencent/mna/base/a/b$a;->c:Lcom/tencent/mna/base/a/b$a;

    invoke-static {v1, p1}, Lcom/tencent/mna/base/a/b;->a(Lcom/tencent/mna/base/a/b$a;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object v2

    .line 43
    const/16 v1, 0x3ea

    .line 44
    if-nez v2, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget v1, v2, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XmlCloudConfig, ret errno:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 49
    iget v3, v2, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    if-nez v3, :cond_4

    .line 51
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v1, v2, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v1, "errno"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    invoke-static {v3}, Lcom/tencent/mna/base/a/a/f;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/base/a/a/f;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    iget-object v1, v1, Lcom/tencent/mna/base/a/a/f;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mna/base/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/16 v0, 0x3eb

    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x3ec

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/tencent/mna/b;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v1, "xml"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/tencent/mna/b;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "xmlver"

    .line 91
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "xml"

    .line 92
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    :cond_0
    return-void
.end method
