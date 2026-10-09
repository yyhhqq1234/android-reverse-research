.class final Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;
.super Ljava/lang/Object;
.source "LeafServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunConnection"
.end annotation


# instance fields
.field final mCommand:I

.field final mName:Ljava/lang/String;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Landroid/os/IBinder;
    .param p4, "command"    # I

    .prologue
    .line 313
    iput-object p1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mName:Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    .line 316
    iput p4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mCommand:I

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    iget v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mCommand:I

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->doConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->this$0:Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->doDeath(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
