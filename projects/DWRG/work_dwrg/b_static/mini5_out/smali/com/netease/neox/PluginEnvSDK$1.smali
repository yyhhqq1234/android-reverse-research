.class Lcom/netease/neox/PluginEnvSDK$1;
.super Ljava/lang/Object;
.source "PluginEnvSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginEnvSDK;->initSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginEnvSDK;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$secretKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginEnvSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/netease/neox/PluginEnvSDK$1;->this$0:Lcom/netease/neox/PluginEnvSDK;

    iput-object p2, p0, Lcom/netease/neox/PluginEnvSDK$1;->val$gameId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/neox/PluginEnvSDK$1;->val$secretKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/neox/PluginEnvSDK$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/netease/neox/PluginEnvSDK$1;->this$0:Lcom/netease/neox/PluginEnvSDK;

    invoke-static {v0}, Lcom/netease/neox/PluginEnvSDK;->access$000(Lcom/netease/neox/PluginEnvSDK;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/neox/PluginEnvSDK$1;->val$gameId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/neox/PluginEnvSDK$1;->val$secretKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/neox/PluginEnvSDK$1;->val$host:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/environment/EnvManager;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
