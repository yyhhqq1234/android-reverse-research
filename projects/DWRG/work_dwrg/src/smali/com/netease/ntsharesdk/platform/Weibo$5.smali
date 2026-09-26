.class Lcom/netease/ntsharesdk/platform/Weibo$5;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/Weibo;->doAttention(Lcom/netease/ntsharesdk/ShareArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntsharesdk/platform/Weibo;

.field private final synthetic val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

.field private final synthetic val$uid:Ljava/lang/String;

.field private final synthetic val$viaApi:Z


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/platform/Weibo;ZLjava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    iput-boolean p2, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->val$viaApi:Z

    iput-object p3, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->val$uid:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 397
    const-string v0, "http authorize cancel"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v3}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 399
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "value"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v7

    .line 403
    .local v7, "mAccessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    invoke-virtual {v7}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "authorize success"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$3(Lcom/netease/ntsharesdk/platform/Weibo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/netease/ntsharesdk/platform/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 406
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$5(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 407
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->getCtx()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->val$viaApi:Z

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->access$6(Lcom/netease/ntsharesdk/platform/Weibo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->val$uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->val$callback:Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;

    invoke-static/range {v0 .. v5}, Lcom/netease/ntsharesdk/platform/WeiboAttention;->attention(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "code1":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weibo get Accesstoken failed, error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/netease/ntsharesdk/ShareArgs;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Weibo get Accesstoken failed, error code:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netease/ntsharesdk/ShareArgs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 6
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weibo get code exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$5;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/netease/ntsharesdk/ShareArgs;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Weibo get code exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netease/ntsharesdk/ShareArgs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 419
    return-void
.end method
