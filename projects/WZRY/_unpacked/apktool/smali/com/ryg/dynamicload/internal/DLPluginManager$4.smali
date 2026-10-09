.class Lcom/ryg/dynamicload/internal/DLPluginManager$4;
.super Ljava/lang/Object;
.source "DLPluginManager.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryg/dynamicload/internal/DLPluginManager;->unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ryg/dynamicload/internal/DLPluginManager;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;->val$conn:Landroid/content/ServiceConnection;

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
    .line 460
    .local p2, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-static {v0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->access$002(Lcom/ryg/dynamicload/internal/DLPluginManager;I)I

    .line 465
    return-void
.end method
