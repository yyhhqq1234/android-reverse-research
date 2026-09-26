.class Lcom/netease/ntsharesdk/platform/Weibo$3;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/Weibo;->appShare(Lcom/netease/ntsharesdk/ShareArgs;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
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
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 215
    const-string v0, "http authorize cancel"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v3}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 217
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 208
    new-instance v0, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v0}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    .line 209
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    const-string v1, "share complte OK"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v2}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 211
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 6
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 202
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

    .line 203
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo$3;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

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

    .line 204
    return-void
.end method
