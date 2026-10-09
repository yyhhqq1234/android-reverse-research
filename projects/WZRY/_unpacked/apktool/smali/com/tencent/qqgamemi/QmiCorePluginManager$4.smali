.class Lcom/tencent/qqgamemi/QmiCorePluginManager$4;
.super Ljava/lang/Object;
.source "QmiCorePluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/QmiCorePluginManager;->showPluginLoadingDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    iput-object p2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 342
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/component/utils/ResourceUtil;->setContext(Landroid/content/Context;)V

    .line 344
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    new-instance v2, Lcom/tencent/ui/NotFocusableProgressDialog;

    iget-object v3, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->val$context:Landroid/content/Context;

    const-string v4, "Qmi_plugin_loading_style"

    invoke-static {v4}, Lcom/tencent/component/utils/ResourceUtil;->getStyleId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/ui/NotFocusableProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$702(Lcom/tencent/qqgamemi/QmiCorePluginManager;Lcom/tencent/ui/NotFocusableProgressDialog;)Lcom/tencent/ui/NotFocusableProgressDialog;

    .line 346
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->val$context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 347
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPluginLoadingDialog context is activity"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 349
    .local v0, "systemUiVisibility":I
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/ui/NotFocusableProgressDialog;->setSystemUiVisibility(I)V

    .line 354
    .end local v0    # "systemUiVisibility":I
    :goto_0
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/ui/NotFocusableProgressDialog;->setProgressStyle(I)V

    .line 355
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v1

    const-string/jumbo v2, "\u6b63\u5728\u68c0\u6d4b\u5f55\u5c4f\u63d2\u4ef6"

    invoke-virtual {v1, v2}, Lcom/tencent/ui/NotFocusableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/ui/NotFocusableProgressDialog;->show()V

    .line 359
    return-void

    .line 351
    :cond_1
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPluginLoadingDialog context is not activity"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/ui/NotFocusableProgressDialog;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
