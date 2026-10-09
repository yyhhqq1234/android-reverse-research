.class Lcom/tencent/mna/base/a/d;
.super Ljava/lang/Object;
.source "RulesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/a/d$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/SharedPreferences;I)Lcom/tencent/mna/base/a/a/e;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const-string v1, "rules_ver"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    if-ne v1, p1, :cond_0

    .line 75
    const-string v1, "diagnose_rules"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v2}, Lcom/tencent/mna/base/a/a/e;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/base/a/a/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(ILjava/lang/String;)Lcom/tencent/mna/base/a/d$a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-static {}, Lcom/tencent/mna/b;->h()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 34
    invoke-static {v3, p0}, Lcom/tencent/mna/base/a/d;->a(Landroid/content/SharedPreferences;I)Lcom/tencent/mna/base/a/a/e;

    move-result-object v1

    .line 35
    const/4 v0, 0x0

    .line 37
    if-nez v1, :cond_1

    .line 38
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/a/b$a;->b:Lcom/tencent/mna/base/a/b$a;

    invoke-static {v0, p1}, Lcom/tencent/mna/base/a/b;->a(Lcom/tencent/mna/base/a/b$a;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/mna/base/a/d$a;

    const/16 v1, 0x3e9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/tencent/mna/base/a/d$a;-><init>(ILcom/tencent/mna/base/a/a/e;)V

    .line 54
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget v0, v4, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DgnRulesConfig, ret errno:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 44
    if-nez v0, :cond_1

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, v4, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {v1}, Lcom/tencent/mna/base/a/a/e;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/base/a/a/e;

    move-result-object v1

    .line 47
    iget-object v4, v4, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-static {v3, p0, v4}, Lcom/tencent/mna/base/a/d;->a(Landroid/content/SharedPreferences;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_1
    :goto_1
    new-instance v2, Lcom/tencent/mna/base/a/d$a;

    invoke-direct {v2, v0, v1}, Lcom/tencent/mna/base/a/d$a;-><init>(ILcom/tencent/mna/base/a/a/e;)V

    move-object v0, v2

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    const/16 v0, 0x3ea

    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/SharedPreferences;ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rules_ver"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "diagnose_rules"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method
