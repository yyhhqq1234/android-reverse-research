.class Lcom/ryg/dynamicload/internal/DLPluginManager$2;
.super Ljava/lang/Object;
.source "DLPluginManager.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryg/dynamicload/internal/DLPluginManager;->stopPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;


# direct methods
.method constructor <init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ryg/dynamicload/internal/DLPluginManager;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(ILjava/lang/Class;)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/ryg/dynamicload/internal/DLIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 416
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-static {v0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->access$002(Lcom/ryg/dynamicload/internal/DLPluginManager;I)I

    .line 419
    return-void
.end method
