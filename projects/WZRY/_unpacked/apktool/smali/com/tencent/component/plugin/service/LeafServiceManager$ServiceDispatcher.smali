.class final Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
.super Ljava/lang/Object;
.source "LeafServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/service/LeafServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;,
        Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mClazz:Ljava/lang/String;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mDied:Z

.field private mForgotten:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mILeafServiceConnection:Lcom/tencent/component/plugin/service/ILeafServiceConnection;

.field private final mLooper:Landroid/os/Looper;

.field final mPlatformId:Ljava/lang/String;

.field final mPluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Looper;)V
    .locals 1
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/String;
    .param p4, "conn"    # Landroid/content/ServiceConnection;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    .line 190
    new-instance v0, Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;-><init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mILeafServiceConnection:Lcom/tencent/component/plugin/service/ILeafServiceConnection;

    .line 191
    iput-object p4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 192
    iput-object p5, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mLooper:Landroid/os/Looper;

    .line 193
    if-eqz p5, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mHandler:Landroid/os/Handler;

    .line 194
    iput-object p3, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mClazz:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mPluginId:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mPlatformId:Ljava/lang/String;

    .line 197
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method connected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;-><init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;Ljava/lang/String;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->doConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method death(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 283
    monitor-enter p0

    .line 284
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mDied:Z

    .line 285
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;

    .line 286
    .local v0, "old":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_1

    .line 289
    :cond_0
    monitor-exit p0

    .line 299
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$RunConnection;-><init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;Ljava/lang/String;Landroid/os/IBinder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    .end local v0    # "old":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 297
    .restart local v0    # "old":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->doDeath(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method doConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-boolean v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mForgotten:Z

    if-eqz v4, :cond_1

    .line 236
    monitor-exit p0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;

    .line 239
    .local v3, "old":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v4, p2, :cond_2

    .line 240
    monitor-exit p0

    goto :goto_0

    .line 267
    .end local v3    # "old":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 243
    .restart local v3    # "old":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :cond_2
    if-eqz p2, :cond_5

    .line 245
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mDied:Z

    .line 246
    new-instance v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;-><init>(Lcom/tencent/component/plugin/service/LeafServiceManager$1;)V

    .line 247
    .local v2, "info":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    iput-object p2, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 248
    new-instance v4, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;

    invoke-direct {v4, p0, p1, p2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher$DeathMonitor;-><init>(Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;Ljava/lang/String;Landroid/os/IBinder;)V

    iput-object v4, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    iget-object v4, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 251
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .end local v2    # "info":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :goto_1
    if-eqz v3, :cond_3

    .line 265
    :try_start_3
    iget-object v4, v3, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v5, v3, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 267
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mPluginId:Ljava/lang/String;

    invoke-direct {v0, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_4

    .line 272
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v4, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 275
    :cond_4
    if-eqz p2, :cond_0

    .line 276
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v4, v0, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 252
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "info":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    monitor-exit p0

    goto :goto_0

    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :cond_5
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method doDeath(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mPluginId:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 303
    return-void
.end method

.method forget()V
    .locals 5

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .local v0, "ci":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :try_start_1
    iget-object v2, v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    goto :goto_0

    .line 217
    .end local v0    # "ci":Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mForgotten:Z

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method getILeafServiceConnection()Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mILeafServiceConnection:Lcom/tencent/component/plugin/service/ILeafServiceConnection;

    return-object v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method validate(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mLooper:Landroid/os/Looper;

    if-eq v0, p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing looper (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    return-void
.end method
