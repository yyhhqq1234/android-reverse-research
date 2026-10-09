.class public Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$CenterInstance;,
        Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationCenter"


# instance fields
.field private final listenerLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private subscribersByClass:Ljava/util/Map;

.field private subscribersByTopic:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByTopic:Ljava/util/Map;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByClass:Ljava/util/Map;

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 31
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;-><init>()V

    return-void
.end method

.method private createCopyOfContentsRemoveWeakRefs(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p1, "subscribersOrVetoListeners"    # Ljava/util/Collection;

    .prologue
    .line 385
    if-nez p1, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 427
    :cond_0
    return-object v0

    .line 389
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 390
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v0, "copyOfSubscribersOrVetolisteners":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 392
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, "elem":Ljava/lang/Object;
    instance-of v5, v1, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    if-eqz v5, :cond_3

    move-object v4, v1

    .line 397
    check-cast v4, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .line 398
    .local v4, "proxy":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    invoke-interface {v4}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->getProxiedSubscriber()Ljava/lang/Object;

    move-result-object v1

    .line 399
    if-nez v1, :cond_2

    .line 401
    invoke-virtual {p0, v4, v3}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->removeProxySubscriber(Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;Ljava/util/Iterator;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    .end local v4    # "proxy":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    :cond_3
    instance-of v5, v1, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_5

    move-object v5, v1

    .line 410
    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 411
    .local v2, "hardRef":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 414
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 419
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    .end local v2    # "hardRef":Ljava/lang/Object;
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$CenterInstance;->access$000()Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    move-result-object v0

    return-object v0
.end method

.method private getSubscribers(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .param p1, "classOrTopic"    # Ljava/lang/Object;
    .param p2, "subscriberMap"    # Ljava/util/Map;

    .prologue
    .line 476
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 480
    .local v1, "subscribers":Ljava/util/List;
    invoke-direct {p0, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->createCopyOfContentsRemoveWeakRefs(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 481
    .local v0, "result":Ljava/util/List;
    return-object v0
.end method

.method private removeFromSetResolveWeakReferences(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "toRemove"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 306
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 307
    .local v4, "subscribers":Ljava/util/List;
    if-nez v4, :cond_1

    .line 368
    .end local p3    # "toRemove":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 311
    .restart local p3    # "toRemove":Ljava/lang/Object;
    :cond_1
    invoke-interface {v4, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 313
    instance-of v6, p3, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    .line 317
    :cond_2
    instance-of v6, p3, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    if-eqz v6, :cond_3

    .line 319
    check-cast p3, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .end local p3    # "toRemove":Ljava/lang/Object;
    invoke-interface {p3}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->proxyUnsubscribed()V

    :cond_3
    move v6, v7

    .line 322
    goto :goto_0

    .line 326
    .restart local p3    # "toRemove":Ljava/lang/Object;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "existingSubscriber":Ljava/lang/Object;
    instance-of v8, v0, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    if-eqz v8, :cond_6

    move-object v2, v0

    .line 331
    check-cast v2, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .line 332
    .local v2, "proxy":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    invoke-interface {v2}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->getProxiedSubscriber()Ljava/lang/Object;

    move-result-object v0

    .line 333
    if-ne v0, p3, :cond_6

    .line 335
    invoke-virtual {p0, v2, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->removeProxySubscriber(Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;Ljava/util/Iterator;)V

    move v6, v7

    .line 336
    goto :goto_0

    .line 339
    .end local v2    # "proxy":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    :cond_6
    instance-of v8, v0, Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    move-object v5, v0

    .line 341
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 342
    .local v5, "wr":Ljava/lang/ref/WeakReference;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 343
    .local v3, "realRef":Ljava/lang/Object;
    if-nez v3, :cond_7

    .line 346
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v6, v7

    .line 348
    goto :goto_0

    .line 350
    :cond_7
    if-ne v3, p3, :cond_8

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v6, v7

    .line 354
    goto :goto_0

    .line 356
    :cond_8
    instance-of v8, v3, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    if-eqz v8, :cond_5

    move-object v2, v3

    .line 358
    check-cast v2, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .line 359
    .restart local v2    # "proxy":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    invoke-interface {v2}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->getProxiedSubscriber()Ljava/lang/Object;

    move-result-object v0

    .line 360
    if-ne v0, p3, :cond_5

    .line 362
    invoke-virtual {p0, v2, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->removeProxySubscriber(Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;Ljava/util/Iterator;)V

    move v6, v7

    .line 363
    goto :goto_0
.end method

.method private unsubscribeAllInMap(Ljava/util/Map;)V
    .locals 6
    .param p1, "subscriberMap"    # Ljava/util/Map;

    .prologue
    .line 60
    iget-object v4, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 62
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 63
    .local v2, "subscriptionKeys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    .local v1, "subscribers":Ljava/util/List;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v0, p1, v5}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->unsubscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "subscribers":Ljava/util/List;
    .end local v2    # "subscriptionKeys":Ljava/util/Set;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "subscriptionKeys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    return-void
.end method


# virtual methods
.method public clearAllSubscribers()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByTopic:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->unsubscribeAllInMap(Ljava/util/Map;)V

    .line 54
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByClass:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->unsubscribeAllInMap(Ljava/util/Map;)V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRealSubscriberAndCleanStaleSubscriberIfNecessary(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "iterator"    # Ljava/util/Iterator;
    .param p2, "existingSubscriber"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "existingProxySubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    instance-of v1, p2, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 80
    check-cast p2, Ljava/lang/ref/WeakReference;

    .end local p2    # "existingSubscriber":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    .line 81
    .restart local p2    # "existingSubscriber":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 97
    :cond_0
    :goto_0
    return-object p2

    .line 88
    :cond_1
    instance-of v1, p2, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 90
    check-cast v0, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .line 91
    invoke-interface {v0}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->getProxiedSubscriber()Ljava/lang/Object;

    move-result-object p2

    .line 92
    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->removeProxySubscriber(Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public getSubscribers(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->getSubscribersToClass(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubscribersToClass(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 434
    .local v4, "result":Ljava/util/List;
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByClass:Ljava/util/Map;

    .line 435
    .local v1, "classMap":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 436
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 439
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 441
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 442
    .local v5, "subscribers":Ljava/util/Collection;
    if-nez v4, :cond_1

    .line 444
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .restart local v4    # "result":Ljava/util/List;
    :cond_1
    invoke-direct {p0, v5}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->createCopyOfContentsRemoveWeakRefs(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 450
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v5    # "subscribers":Ljava/util/Collection;
    :cond_2
    return-object v4
.end method

.method public getSubscribersToTopic(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByTopic:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->getSubscribers(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public publish(Ljava/lang/Object;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 464
    if-nez p1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot publish null event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    iget-object v6, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->getSubscribers(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;-><init>(Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method protected publish(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "topic"    # Ljava/lang/String;
    .param p3, "eventObj"    # Ljava/lang/Object;
    .param p4, "subscribers"    # Ljava/util/List;

    .prologue
    .line 525
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 527
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t publish to null topic/event."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 531
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 535
    :cond_1
    const-string v5, "NotificationCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subscribers for event or topic. Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Topic:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_2
    return-void

    .line 541
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 543
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 544
    .local v1, "eh":Ljava/lang/Object;
    if-eqz p1, :cond_4

    move-object v2, v1

    .line 546
    check-cast v2, Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;

    .line 549
    .local v2, "eventSubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;->onEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v2    # "eventSubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 551
    .restart local v2    # "eventSubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "eventSubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;
    :cond_4
    move-object v3, v1

    .line 558
    check-cast v3, Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;

    .line 561
    .local v3, "eventTopicSubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;
    :try_start_1
    invoke-interface {v3, p2, p3}, Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 563
    :catch_1
    move-exception v0

    .line 565
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "topicName"    # Ljava/lang/String;
    .param p2, "eventObj"    # Ljava/lang/Object;

    .prologue
    .line 498
    iget-object v6, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->getSubscribersToTopic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;-><init>(Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method protected removeProxySubscriber(Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "proxy"    # Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    .param p2, "iter"    # Ljava/util/Iterator;

    .prologue
    .line 102
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 103
    invoke-interface {p1}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->proxyUnsubscribed()V

    .line 105
    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected subscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "classTopicOrPatternWrapper"    # Ljava/lang/Object;
    .param p3, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "subscriberMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 113
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Can\'t subscribe to null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 116
    :cond_0
    if-nez p3, :cond_1

    .line 118
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t subscribe null subscriber to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 123
    .local v1, "alreadyExists":Z
    move-object/from16 v9, p3

    .line 124
    .local v9, "realSubscriber":Ljava/lang/Object;
    move-object/from16 v0, p3

    instance-of v5, v0, Ljava/lang/ref/WeakReference;

    .line 125
    .local v5, "isWeakRef":Z
    if-eqz v5, :cond_2

    move-object/from16 v10, p3

    .line 127
    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 130
    :cond_2
    const/4 v4, 0x0

    .line 131
    .local v4, "isWeakProxySubscriber":Z
    move-object/from16 v0, p3

    instance-of v10, v0, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    if-eqz v10, :cond_3

    move-object/from16 v7, p3

    .line 133
    check-cast v7, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .line 134
    .local v7, "proxySubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    invoke-interface {v7}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->getReferenceStrength()Lcom/tencent/qqgamemi/mgc/eventbus/ReferenceStrength;

    move-result-object v10

    sget-object v11, Lcom/tencent/qqgamemi/mgc/eventbus/ReferenceStrength;->WEAK:Lcom/tencent/qqgamemi/mgc/eventbus/ReferenceStrength;

    if-ne v10, v11, :cond_4

    const/4 v4, 0x1

    .line 135
    :goto_0
    if-eqz v4, :cond_3

    .line 137
    check-cast p3, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;

    .line 138
    .end local p3    # "subscriber":Ljava/lang/Object;
    invoke-interface/range {p3 .. p3}, Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;->getProxiedSubscriber()Ljava/lang/Object;

    move-result-object v9

    .line 142
    .end local v7    # "proxySubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    :cond_3
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 144
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "ProxySubscribers should always be subscribed strongly."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 134
    .restart local v7    # "proxySubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    .restart local p3    # "subscriber":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 148
    .end local v7    # "proxySubscriber":Lcom/tencent/qqgamemi/mgc/eventbus/ProxySubscriber;
    .end local p3    # "subscriber":Ljava/lang/Object;
    :cond_5
    if-nez v9, :cond_6

    .line 150
    const/4 v10, 0x0

    .line 197
    :goto_1
    return v10

    .line 152
    :cond_6
    iget-object v11, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 155
    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 156
    .local v3, "currentSubscribers":Ljava/util/List;
    if-nez v3, :cond_8

    .line 158
    const-string v10, "NotificationCenter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating new subscriber map for:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "currentSubscribers":Ljava/util/List;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v3    # "currentSubscribers":Ljava/util/List;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_7
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    if-nez v1, :cond_a

    const/4 v10, 0x1

    :goto_2
    monitor-exit v11

    goto :goto_1

    .line 198
    .end local v3    # "currentSubscribers":Ljava/util/List;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 179
    .restart local v3    # "currentSubscribers":Ljava/util/List;
    :cond_8
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 180
    .local v6, "iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 182
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "currentSubscriber":Ljava/lang/Object;
    invoke-virtual {p0, v6, v2}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->getRealSubscriberAndCleanStaleSubscriberIfNecessary(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 185
    .local v8, "realCurrentSubscriber":Ljava/lang/Object;
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 190
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v1, 0x1

    goto :goto_3

    .line 197
    .end local v2    # "currentSubscriber":Ljava/lang/Object;
    .end local v6    # "iterator":Ljava/util/Iterator;
    .end local v8    # "realCurrentSubscriber":Ljava/lang/Object;
    :cond_a
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public subscribeStrongly(Ljava/lang/Class;Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;)Z
    .locals 2
    .param p1, "cl"    # Ljava/lang/Class;
    .param p2, "eh"    # Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscriber cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByClass:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public subscriber(Ljava/lang/Class;Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;)Z
    .locals 3
    .param p1, "eventClass"    # Ljava/lang/Class;
    .param p2, "subscriber"    # Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    if-nez p2, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event subscriber must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    const-string v0, "NotificationCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing by class, class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscriber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByClass:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public subscriber(Ljava/lang/String;Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;)Z
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subscriber"    # Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;

    .prologue
    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Topic must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    if-nez p2, :cond_1

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event subscriber must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    const-string v0, "NotificationCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing by topic, topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscriber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByTopic:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unsubscribe(Ljava/lang/Class;Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;)Z
    .locals 1
    .param p1, "cl"    # Ljava/lang/Class;
    .param p2, "subscriber"    # Lcom/tencent/qqgamemi/mgc/eventbus/Subscriber;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByClass:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->unsubscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected unsubscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "subscriberMap"    # Ljava/util/Map;
    .param p3, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 283
    const-string v0, "NotificationCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsubscribe("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t unsubscribe to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    if-nez p3, :cond_1

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unsubscribe null subscriber to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->removeFromSetResolveWeakReferences(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;)Z
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subscriber"    # Lcom/tencent/qqgamemi/mgc/eventbus/TopicSubscriber;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->subscribersByTopic:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->unsubscribe(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
