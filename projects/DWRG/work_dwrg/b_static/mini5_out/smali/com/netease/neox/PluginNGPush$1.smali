.class Lcom/netease/neox/PluginNGPush$1;
.super Ljava/lang/Object;
.source "PluginNGPush.java"

# interfaces
.implements Lcom/netease/pushclient/PushManager$PushManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginNGPush;->startNGPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginNGPush;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginNGPush;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netease/neox/PluginNGPush$1;->this$0:Lcom/netease/neox/PluginNGPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInitFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInitSuccess niepush_mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/neox/PluginNGPush$1;->this$0:Lcom/netease/neox/PluginNGPush;

    invoke-static {v1}, Lcom/netease/neox/PluginNGPush;->access$000(Lcom/netease/neox/PluginNGPush;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/netease/neox/PluginNGPush$1;->this$0:Lcom/netease/neox/PluginNGPush;

    invoke-static {v0}, Lcom/netease/neox/PluginNGPush;->access$000(Lcom/netease/neox/PluginNGPush;)I

    move-result v0

    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->setNiepushMode(I)V

    .line 91
    invoke-static {}, Lcom/netease/pushclient/PushManager;->startService()V

    .line 92
    iget-object v0, p0, Lcom/netease/neox/PluginNGPush$1;->this$0:Lcom/netease/neox/PluginNGPush;

    invoke-static {v0}, Lcom/netease/neox/PluginNGPush;->access$100(Lcom/netease/neox/PluginNGPush;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->applicationLifeListen(Landroid/app/Application;)V

    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->enableSound(Z)V

    .line 96
    invoke-static {v1}, Lcom/netease/pushclient/PushManager;->enableVibrate(Z)V

    .line 99
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getDevId()Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/netease/neox/PluginNGPush$1;->this$0:Lcom/netease/neox/PluginNGPush;

    invoke-static {v3, v0}, Lcom/netease/neox/PluginNGPush;->access$202(Lcom/netease/neox/PluginNGPush;Z)Z

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "devId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 104
    new-instance v0, Lcom/netease/neox/PluginNGPush$1$1;

    invoke-direct {v0, p0}, Lcom/netease/neox/PluginNGPush$1$1;-><init>(Lcom/netease/neox/PluginNGPush$1;)V

    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->setSubscriberListener(Lcom/netease/pushclient/OnSubscriberListener;)V

    return-void
.end method
