.class public Lcom/tencent/msdk/sdkwrapper/group/GroupSdk;
.super Ljava/lang/Object;
.source "GroupSdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "union_name"    # Ljava/lang/String;
    .param p2, "zoneid"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    if-nez v2, :cond_0

    .line 18
    const-string v2, "qqapi is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 22
    const-string v2, "currentActivity is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->getQQAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "qqAppVersion":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "5.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 28
    const-string v2, "bindQQGroup require MobileQQ 5.1 or above"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "unionid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v2, "union_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "zoneid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v2, "signature"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/tencent/tauth/Tencent;->bindQQGroup(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static joinQQGroup(Ljava/lang/String;)V
    .locals 4
    .param p0, "qqGroupKey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    if-nez v2, :cond_0

    .line 44
    const-string v2, "qqapi is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 48
    const-string v2, "currentActivity is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->getQQAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "qqAppVersion":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "4.7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 54
    const-string v2, "bindQQGroup require MobileQQ 5.1 or above"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, p0}, Lcom/tencent/tauth/Tencent;->joinQQGroup(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 59
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
