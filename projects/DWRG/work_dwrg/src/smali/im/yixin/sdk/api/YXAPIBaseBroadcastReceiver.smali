.class public abstract Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "YXAPIBaseBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getAppId()Ljava/lang/String;
.end method

.method protected onAfterYixinStart(Lim/yixin/sdk/channel/YXMessageProtocol;)V
    .locals 0
    .param p1, "protocol"    # Lim/yixin/sdk/channel/YXMessageProtocol;

    .prologue
    .line 80
    return-void
.end method

.method protected onOtherYixinNotify(Lim/yixin/sdk/channel/YXMessageProtocol;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "protocol"    # Lim/yixin/sdk/channel/YXMessageProtocol;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 93
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-static {p2}, Lim/yixin/sdk/channel/YXMessageProtocol;->parseProtocol(Landroid/content/Intent;)Lim/yixin/sdk/channel/YXMessageProtocol;

    move-result-object v2

    .line 43
    .local v2, "protocol":Lim/yixin/sdk/channel/YXMessageProtocol;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/yixin/sdk/channel/YXMessageProtocol;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    :cond_0
    const-class v3, Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;

    const-string v4, "data received, but !protocol.isValid()"

    invoke-static {v3, v4}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_1
    const-class v3, Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Client data received@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": PackageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",AppId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50
    invoke-virtual {v2}, Lim/yixin/sdk/channel/YXMessageProtocol;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Command="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lim/yixin/sdk/channel/YXMessageProtocol;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",SdkVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 51
    invoke-virtual {v2}, Lim/yixin/sdk/channel/YXMessageProtocol;->getSdkVersion()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",appPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lim/yixin/sdk/channel/YXMessageProtocol;->getAppPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {v3, v4}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lim/yixin/sdk/channel/YXMessageProtocol;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "command":Ljava/lang/String;
    const-string v3, "yixinlaunch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {p0}, Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "appid":Ljava/lang/String;
    invoke-static {v0}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    const-class v3, Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error app id\uff0c appid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 60
    :goto_1
    invoke-virtual {p0, v2}, Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;->onAfterYixinStart(Lim/yixin/sdk/channel/YXMessageProtocol;)V

    goto/16 :goto_0

    .line 58
    :cond_2
    invoke-static {p1, v0}, Lim/yixin/sdk/api/YXAPIFactory;->createYXAPI(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/IYXAPI;

    move-result-object v3

    invoke-interface {v3}, Lim/yixin/sdk/api/IYXAPI;->registerApp()Z

    goto :goto_1

    .line 62
    .end local v0    # "appid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lim/yixin/sdk/api/YXAPIBaseBroadcastReceiver;->onOtherYixinNotify(Lim/yixin/sdk/channel/YXMessageProtocol;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
