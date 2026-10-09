.class public Lcom/tencent/msdk/SchemeActivity;
.super Landroid/app/Activity;
.source "SchemeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMSDKStartActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 21
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    if-eqz v6, :cond_0

    .line 33
    :try_start_0
    invoke-static {v5}, Lcom/tencent/msdk/framework/tools/MSDKUrlUtil;->parseUrl2Bundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 34
    .local v7, "uriBundle":Landroid/os/Bundle;
    const-string v8, "fromShemeActivity"

    const-string/jumbo v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use game\'s startActivity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 39
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v2, "intent2MainActivity":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {v2, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/SchemeActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v2    # "intent2MainActivity":Landroid/content/Intent;
    .end local v7    # "uriBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "uriBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 42
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/tencent/msdk/SchemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "intent2MainActivity":Landroid/content/Intent;
    goto :goto_1
.end method
