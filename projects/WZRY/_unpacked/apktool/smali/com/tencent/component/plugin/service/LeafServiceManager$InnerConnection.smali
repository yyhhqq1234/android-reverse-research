.class Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;
.super Lcom/tencent/component/plugin/service/ILeafServiceConnection$Stub;
.source "LeafServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/service/LeafServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerConnection"
.end annotation


# instance fields
.field private final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;)V
    .locals 1
    .param p1, "sd"    # Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ILeafServiceConnection$Stub;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 149
    return-void
.end method


# virtual methods
.method public connected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    .line 154
    .local v0, "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->connected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 157
    :cond_0
    return-void
.end method

.method public disconnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    .line 162
    .local v0, "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->forget()V

    .line 165
    :cond_0
    return-void
.end method
