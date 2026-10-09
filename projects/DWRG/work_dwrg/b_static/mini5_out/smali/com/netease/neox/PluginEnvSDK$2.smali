.class Lcom/netease/neox/PluginEnvSDK$2;
.super Ljava/lang/Object;
.source "PluginEnvSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginEnvSDK;->reviewNicknameAsync(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginEnvSDK;

.field final synthetic val$event_id:I

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginEnvSDK;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 62
    iput-object p1, p0, Lcom/netease/neox/PluginEnvSDK$2;->this$0:Lcom/netease/neox/PluginEnvSDK;

    iput-object p2, p0, Lcom/netease/neox/PluginEnvSDK$2;->val$nickname:Ljava/lang/String;

    iput p3, p0, Lcom/netease/neox/PluginEnvSDK$2;->val$event_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/netease/neox/PluginEnvSDK$2;->val$nickname:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/environment/EnvManager;->reviewNicknameV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/netease/neox/PluginEnvSDK$2;->val$event_id:I

    invoke-static {v1, v0}, Lcom/netease/neox/PluginEnvSDK;->access$100(ILjava/lang/String;)V

    return-void
.end method
