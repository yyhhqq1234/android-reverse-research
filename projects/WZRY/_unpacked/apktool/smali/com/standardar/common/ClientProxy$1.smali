.class Lcom/standardar/common/ClientProxy$1;
.super Ljava/lang/Object;
.source "ClientProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/common/ClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/standardar/common/ClientProxy;


# direct methods
.method constructor <init>(Lcom/standardar/common/ClientProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/standardar/common/ClientProxy;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/standardar/common/ClientProxy$1;->this$0:Lcom/standardar/common/ClientProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/standardar/common/ClientProxy$1;->this$0:Lcom/standardar/common/ClientProxy;

    invoke-static {p2}, Lcom/standardar/service/aidl/IDataFlowInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/standardar/service/aidl/IDataFlowInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/standardar/common/ClientProxy;->access$002(Lcom/standardar/common/ClientProxy;Lcom/standardar/service/aidl/IDataFlowInterface;)Lcom/standardar/service/aidl/IDataFlowInterface;

    .line 45
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/standardar/common/ClientProxy$1;->this$0:Lcom/standardar/common/ClientProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/standardar/common/ClientProxy;->access$002(Lcom/standardar/common/ClientProxy;Lcom/standardar/service/aidl/IDataFlowInterface;)Lcom/standardar/service/aidl/IDataFlowInterface;

    .line 51
    return-void
.end method
