.class Lcom/tencent/qqgamemi/SDKApiHelper$2$1;
.super Ljava/lang/Object;
.source "SDKApiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKApiHelper$2;->check(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKApiHelper$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/qqgamemi/SDKApiHelper$2;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;->this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;->this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;

    iget-object v0, v0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;->this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;

    iget-object v0, v0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    new-instance v1, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;->this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;

    iget-object v2, v2, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$602(Lcom/tencent/qqgamemi/SDKApiHelper;Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;)Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

    .line 74
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;->this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;

    iget-object v0, v0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$600(Lcom/tencent/qqgamemi/SDKApiHelper;)Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->register()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;->this$1:Lcom/tencent/qqgamemi/SDKApiHelper$2;

    iget-object v0, v0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method
