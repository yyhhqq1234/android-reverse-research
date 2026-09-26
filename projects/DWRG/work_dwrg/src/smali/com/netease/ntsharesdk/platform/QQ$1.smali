.class Lcom/netease/ntsharesdk/platform/QQ$1;
.super Ljava/lang/Object;
.source "QQ.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntsharesdk/platform/QQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntsharesdk/platform/QQ;


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/platform/QQ;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v0}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    .line 30
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/QQ;->access$0(Lcom/netease/ntsharesdk/platform/QQ;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    invoke-virtual {v2}, Lcom/netease/ntsharesdk/platform/QQ;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 32
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 36
    const-string v0, "qq share ok"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/QQ;->access$0(Lcom/netease/ntsharesdk/platform/QQ;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    invoke-virtual {v1}, Lcom/netease/ntsharesdk/platform/QQ;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 38
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4
    .param p1, "e"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 42
    new-instance v0, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v0}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    .line 43
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/QQ;->access$0(Lcom/netease/ntsharesdk/platform/QQ;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/QQ$1;->this$0:Lcom/netease/ntsharesdk/platform/QQ;

    invoke-virtual {v2}, Lcom/netease/ntsharesdk/platform/QQ;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 46
    return-void
.end method
