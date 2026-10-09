.class Lcom/tencent/component/plugin/service/ServiceManagerClient$4;
.super Ljava/lang/Object;
.source "ServiceManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/service/ServiceManagerClient;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$leafServiceClassName:Ljava/lang/String;

.field final synthetic val$platformId:Ljava/lang/String;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/service/ServiceManagerClient;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    iput-object p2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$platformId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$pluginId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$leafServiceClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-static {v1}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->access$200(Lcom/tencent/component/plugin/service/ServiceManagerClient;)Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v0

    .line 184
    .local v0, "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$platformId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$pluginId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$leafServiceClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;->val$args:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/component/plugin/service/ILeafServiceManager;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method
