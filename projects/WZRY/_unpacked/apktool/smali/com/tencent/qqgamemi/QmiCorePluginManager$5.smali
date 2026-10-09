.class Lcom/tencent/qqgamemi/QmiCorePluginManager$5;
.super Ljava/lang/Object;
.source "QmiCorePluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/QmiCorePluginManager;->deletePluginLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$5;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$5;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$5;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ui/NotFocusableProgressDialog;->cancel()V

    .line 375
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$5;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$702(Lcom/tencent/qqgamemi/QmiCorePluginManager;Lcom/tencent/ui/NotFocusableProgressDialog;)Lcom/tencent/ui/NotFocusableProgressDialog;

    .line 377
    :cond_0
    return-void
.end method
