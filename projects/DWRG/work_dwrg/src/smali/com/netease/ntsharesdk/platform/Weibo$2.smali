.class Lcom/netease/ntsharesdk/platform/Weibo$2;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/Weibo;->doShare(Lcom/netease/ntsharesdk/ShareArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntsharesdk/platform/Weibo;


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/platform/Weibo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 180
    const-string v0, "http authorize cancel"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v3}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 182
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    .line 171
    .local v1, "newToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->access$3(Lcom/netease/ntsharesdk/platform/Weibo;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netease/ntsharesdk/platform/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 173
    new-instance v0, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v0}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    .line 174
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    const-string v2, "http share complte OK"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v3}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 176
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 6
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 164
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

    .line 165
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$2;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

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

    .line 166
    return-void
.end method
