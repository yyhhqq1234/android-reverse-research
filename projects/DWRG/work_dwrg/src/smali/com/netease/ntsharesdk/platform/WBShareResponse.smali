.class public Lcom/netease/ntsharesdk/platform/WBShareResponse;
.super Landroid/app/Activity;
.source "WBShareResponse.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# instance fields
.field private api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const-string v1, "ntsharesdk"

    const-string v2, "in weibo oncreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v1

    const-string v2, "Weibo"

    invoke-virtual {v1, v2}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v1

    const-string v2, "Weibo"

    invoke-virtual {v1, v2}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lcom/netease/ntsharesdk/Platform;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "app_id":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntsharesdk/platform/WBShareResponse;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 29
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/WBShareResponse;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/WBShareResponse;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 31
    .end local v0    # "app_id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v0, "ntsharesdk"

    const-string v1, "onNewIntent in wbshare"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/WBShareResponse;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/WBShareResponse;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 2
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/api/share/BaseResponse;

    .prologue
    .line 45
    const-string v0, "ntsharesdk"

    const-string v1, "onResponse in wbshare"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Weibo"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Weibo"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->handleResponse(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/WBShareResponse;->finish()V

    .line 50
    return-void
.end method
