.class final Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;
.super Ljava/lang/Object;
.source "LeafServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Landroid/os/IBinder;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;->this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;->mName:Ljava/lang/String;

    .line 336
    iput-object p3, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    .line 337
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;->this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->death(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 341
    return-void
.end method
