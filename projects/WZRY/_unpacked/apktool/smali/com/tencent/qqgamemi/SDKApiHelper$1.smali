.class Lcom/tencent/qqgamemi/SDKApiHelper$1;
.super Ljava/lang/Object;
.source "SDKApiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKApiHelper;->initSDK(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$000(Lcom/tencent/qqgamemi/SDKApiHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/component/UtilitiesInitial;->init(Landroid/content/Context;)V

    .line 48
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initSDK is called:sdk-2801-2.3.0-build-201901181959"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$200(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->getInstance()Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->init()V

    .line 51
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$1;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$002(Lcom/tencent/qqgamemi/SDKApiHelper;Z)Z

    goto :goto_0
.end method
