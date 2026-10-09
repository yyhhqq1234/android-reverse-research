.class Lcom/oppo/oms/sdk/OmsServiceHelper$1;
.super Ljava/lang/Object;
.source "OmsServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/oms/sdk/OmsServiceHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/oms/sdk/OmsServiceHelper;


# direct methods
.method constructor <init>(Lcom/oppo/oms/sdk/OmsServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oppo/oms/sdk/OmsServiceHelper;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oppo/oms/sdk/OmsServiceHelper$1;->this$0:Lcom/oppo/oms/sdk/OmsServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper$1;->this$0:Lcom/oppo/oms/sdk/OmsServiceHelper;

    invoke-static {p2}, Lcom/oppo/oms/IOmsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/oms/IOmsService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/oms/sdk/OmsServiceHelper;->access$002(Lcom/oppo/oms/sdk/OmsServiceHelper;Lcom/oppo/oms/IOmsService;)Lcom/oppo/oms/IOmsService;

    .line 45
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper$1;->this$0:Lcom/oppo/oms/sdk/OmsServiceHelper;

    invoke-static {v0}, Lcom/oppo/oms/sdk/OmsServiceHelper;->access$100(Lcom/oppo/oms/sdk/OmsServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper$1;->this$0:Lcom/oppo/oms/sdk/OmsServiceHelper;

    invoke-static {v0}, Lcom/oppo/oms/sdk/OmsServiceHelper;->access$100(Lcom/oppo/oms/sdk/OmsServiceHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper$1;->this$0:Lcom/oppo/oms/sdk/OmsServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/oms/sdk/OmsServiceHelper;->access$002(Lcom/oppo/oms/sdk/OmsServiceHelper;Lcom/oppo/oms/IOmsService;)Lcom/oppo/oms/IOmsService;

    .line 53
    return-void
.end method
