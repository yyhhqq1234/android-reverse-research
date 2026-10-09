.class public Lcom/subao/common/j/i;
.super Ljava/lang/Object;
.source "NetSwitch.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/subao/common/h;
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/subao/common/h;->a:Lcom/subao/common/h;

    .line 48
    :goto_0
    return-object v0

    .line 43
    :cond_0
    :try_start_0
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 45
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 46
    if-eqz v0, :cond_1

    sget-object v0, Lcom/subao/common/h;->c:Lcom/subao/common/h;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/subao/common/h;->b:Lcom/subao/common/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v0, Lcom/subao/common/h;->a:Lcom/subao/common/h;

    goto :goto_0
.end method
