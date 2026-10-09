.class Lcom/netease/neox/PluginEnvSDK$3;
.super Ljava/lang/Object;
.source "PluginEnvSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginEnvSDK;->reviewWordsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginEnvSDK;

.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$event_id:I

.field final synthetic val$level:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginEnvSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 74
    iput-object p1, p0, Lcom/netease/neox/PluginEnvSDK$3;->this$0:Lcom/netease/neox/PluginEnvSDK;

    iput-object p2, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$level:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$channel:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$content:Ljava/lang/String;

    iput p5, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$event_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$level:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$channel:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$content:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/environment/EnvManager;->reviewWordsV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget v1, p0, Lcom/netease/neox/PluginEnvSDK$3;->val$event_id:I

    invoke-static {v1, v0}, Lcom/netease/neox/PluginEnvSDK;->access$200(ILjava/lang/String;)V

    return-void
.end method
