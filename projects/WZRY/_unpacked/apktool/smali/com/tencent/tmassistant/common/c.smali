.class Lcom/tencent/tmassistant/common/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistant/common/b;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistant/common/b;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "TMAssistantDownloadClientBase"

    const-string v1, "IBinder.DeathRecipient binderDied"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/tmassistant/common/b;->mServiceInterface:Landroid/os/IInterface;

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    const-string v2, "INIT"

    iput-object v2, v0, Lcom/tencent/tmassistant/common/b;->connectState:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    iget-object v2, v0, Lcom/tencent/tmassistant/common/b;->mThreadlock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    iget-object v0, v0, Lcom/tencent/tmassistant/common/b;->mThreadlock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tmassistant/common/c;->a:Lcom/tencent/tmassistant/common/b;

    invoke-virtual {v0}, Lcom/tencent/tmassistant/common/b;->onDownloadSDKServiceInvalid()V

    .line 129
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 129
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
