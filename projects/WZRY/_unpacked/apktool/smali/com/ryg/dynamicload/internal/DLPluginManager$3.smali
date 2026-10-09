.class Lcom/ryg/dynamicload/internal/DLPluginManager$3;
.super Ljava/lang/Object;
.source "DLPluginManager.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryg/dynamicload/internal/DLPluginManager;->bindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;Landroid/content/ServiceConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ryg/dynamicload/internal/DLPluginManager;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    iput p5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(ILjava/lang/Class;)V
    .locals 4
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
    .line 437
    .local p2, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 438
    const-string v0, "DLPluginManager"

    const-string v1, "startPluginService proxyServiceClass %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/ryg/dynamicload/internal/DLIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 441
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$dlIntent:Lcom/ryg/dynamicload/internal/DLIntent;

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    iget v3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$flags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-static {v0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->access$002(Lcom/ryg/dynamicload/internal/DLPluginManager;I)I

    .line 444
    return-void
.end method
