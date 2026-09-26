.class Lcom/netease/ntsharesdk/platform/Weibo$1;
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

.field private final synthetic val$args:Lcom/netease/ntsharesdk/ShareArgs;


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/platform/Weibo;Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    iput-object p2, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 119
    const-string v0, "http authorize cancel"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v3}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 121
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "value"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    .line 128
    .local v1, "mAccessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/ntsharesdk/platform/Weibo;->access$1(Lcom/netease/ntsharesdk/platform/Weibo;Z)V

    .line 130
    const-string v2, "authorize success, call share"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    invoke-static {v2, v3, v1}, Lcom/netease/ntsharesdk/platform/Weibo;->access$2(Lcom/netease/ntsharesdk/platform/Weibo;Lcom/netease/ntsharesdk/ShareArgs;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v2, "code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Weibo get Accesstoken failed, error code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v3}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-instance v5, Lcom/netease/ntsharesdk/ShareArgs;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Weibo get Accesstoken failed, error code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/netease/ntsharesdk/ShareArgs;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 6
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 141
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

    .line 142
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$1;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

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

    .line 143
    return-void
.end method
