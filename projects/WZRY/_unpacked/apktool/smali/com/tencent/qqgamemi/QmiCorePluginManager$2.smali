.class Lcom/tencent/qqgamemi/QmiCorePluginManager$2;
.super Ljava/lang/Object;
.source "QmiCorePluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/QmiCorePluginManager;->getCorePluginListIfNesscary()V
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
    .line 166
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$2;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$2;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$2;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$400(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$500(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/util/List;)V

    .line 170
    return-void
.end method
