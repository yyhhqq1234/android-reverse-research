.class public Lcom/tencent/component/event/EventCenter;
.super Ljava/lang/Object;
.source "EventCenter.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation


# static fields
.field private static final DEFAULT_INVOKE_IN_UITHREAD:Z

.field private static final sInstance:Lcom/tencent/component/event/EventCenter;


# instance fields
.field private mEventInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/event/EventInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/component/event/EventSource;",
            "Lcom/tencent/component/utils/collections/MultiSparseArray",
            "<",
            "Lcom/tencent/component/event/ObserverBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/tencent/component/event/EventCenter;

    invoke-direct {v0}, Lcom/tencent/component/event/EventCenter;-><init>()V

    sput-object v0, Lcom/tencent/component/event/EventCenter;->sInstance:Lcom/tencent/component/event/EventCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/event/EventCenter;->mEventInterceptors:Ljava/util/List;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/component/event/EventCenter;->mUIHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private clearWeakObserver(Lcom/tencent/component/utils/collections/MultiSparseArray;I)V
    .locals 4
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/utils/collections/MultiSparseArray",
            "<",
            "Lcom/tencent/component/event/ObserverBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/component/utils/collections/MultiSparseArray;->keySize()I

    move-result v3

    if-lez v3, :cond_1

    .line 145
    invoke-virtual {p1, p2}, Lcom/tencent/component/utils/collections/MultiSparseArray;->get(I)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "observerBeans":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/component/event/ObserverBean;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/event/ObserverBean;

    .line 150
    .local v1, "observerBean":Lcom/tencent/component/event/ObserverBean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/component/event/ObserverBean;->getObservingObject()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 156
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/component/event/ObserverBean;>;"
    .end local v1    # "observerBean":Lcom/tencent/component/event/ObserverBean;
    .end local v2    # "observerBeans":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/event/ObserverBean;>;"
    :cond_1
    return-void
.end method

.method private getEventInterceptors()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/event/EventInterceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, "interceptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/event/EventInterceptor;>;"
    iget-object v2, p0, Lcom/tencent/component/event/EventCenter;->mEventInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/event/EventInterceptor;

    .line 268
    .local v0, "interceptor":Lcom/tencent/component/event/EventInterceptor;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v0    # "interceptor":Lcom/tencent/component/event/EventInterceptor;
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/tencent/component/event/EventCenter;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/tencent/component/event/EventCenter;->sInstance:Lcom/tencent/component/event/EventCenter;

    return-object v0
.end method

.method private getObserverBeans(Lcom/tencent/component/event/Event;)Ljava/util/Collection;
    .locals 4
    .param p1, "event"    # Lcom/tencent/component/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/event/Event;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/tencent/component/event/ObserverBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v2, p1, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    .line 277
    .local v2, "source":Lcom/tencent/component/event/EventSource;
    iget-object v3, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/utils/collections/MultiSparseArray;

    .line 278
    .local v1, "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz v1, :cond_0

    .line 279
    iget v3, p1, Lcom/tencent/component/event/Event;->what:I

    invoke-direct {p0, v1, v3}, Lcom/tencent/component/event/EventCenter;->clearWeakObserver(Lcom/tencent/component/utils/collections/MultiSparseArray;I)V

    .line 281
    iget v3, p1, Lcom/tencent/component/event/Event;->what:I

    invoke-virtual {v1, v3}, Lcom/tencent/component/utils/collections/MultiSparseArray;->get(I)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "observers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz v0, :cond_0

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    .end local v0    # "observers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/ObserverBean;>;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyObserver(Lcom/tencent/component/event/ObserverBean;Lcom/tencent/component/event/Event;)V
    .locals 3
    .param p1, "observerBean"    # Lcom/tencent/component/event/ObserverBean;
    .param p2, "event"    # Lcom/tencent/component/event/Event;

    .prologue
    .line 337
    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/tencent/component/event/ObserverBean;->getEventSourceSender()Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, "specifiedSender":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    iget-object v1, v1, Lcom/tencent/component/event/EventSource;->sender:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 341
    :cond_0
    iget-boolean v1, p1, Lcom/tencent/component/event/ObserverBean;->mInvokeInUIThread:Z

    if-eqz v1, :cond_3

    .line 342
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 343
    invoke-virtual {p1, p2}, Lcom/tencent/component/event/ObserverBean;->invoke(Ljava/lang/Object;)V

    .line 357
    .end local v0    # "specifiedSender":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 345
    .restart local v0    # "specifiedSender":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/tencent/component/event/EventCenter;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/component/event/EventCenter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/component/event/EventCenter$1;-><init>(Lcom/tencent/component/event/EventCenter;Lcom/tencent/component/event/ObserverBean;Lcom/tencent/component/event/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {p1, p2}, Lcom/tencent/component/event/ObserverBean;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeAllObserverByEventSource(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;)V
    .locals 5
    .param p1, "observingObject"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/tencent/component/event/EventSource;

    .prologue
    .line 233
    iget-object v4, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/utils/collections/MultiSparseArray;

    .line 234
    .local v2, "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v2}, Lcom/tencent/component/utils/collections/MultiSparseArray;->keySize()I

    move-result v1

    .line 236
    .local v1, "keySize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 237
    invoke-virtual {v2, v0}, Lcom/tencent/component/utils/collections/MultiSparseArray;->keyAt(I)I

    move-result v3

    .line 238
    .local v3, "what":I
    invoke-virtual {v2, v3}, Lcom/tencent/component/utils/collections/MultiSparseArray;->get(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/tencent/component/event/EventCenter;->removeObserverFromCollection(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    .end local v1    # "keySize":I
    .end local v3    # "what":I
    :cond_0
    return-void
.end method

.method private removeObserverByEventSource(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;I)V
    .locals 2
    .param p1, "observingObject"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/tencent/component/event/EventSource;
    .param p3, "what"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/utils/collections/MultiSparseArray;

    .line 245
    .local v0, "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p3}, Lcom/tencent/component/utils/collections/MultiSparseArray;->get(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/tencent/component/event/EventCenter;->removeObserverFromCollection(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 248
    :cond_0
    return-void
.end method

.method private removeObserverFromCollection(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 4
    .param p2, "observingObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/tencent/component/event/ObserverBean;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "observers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/ObserverBean;>;"
    if-eqz p1, :cond_1

    .line 252
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/component/event/ObserverBean;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/event/ObserverBean;

    .line 255
    .local v1, "observer":Lcom/tencent/component/event/ObserverBean;
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Lcom/tencent/component/event/ObserverBean;->getObservingObject()Ljava/lang/Object;

    move-result-object v2

    .line 258
    .local v2, "tmpObject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/component/event/ObserverBean;>;"
    .end local v1    # "observer":Lcom/tencent/component/event/ObserverBean;
    .end local v2    # "tmpObject":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public addEventInterceptor(Lcom/tencent/component/event/EventInterceptor;)V
    .locals 3
    .param p1, "interceptor"    # Lcom/tencent/component/event/EventInterceptor;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "interceptor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 369
    .local v0, "writeLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 370
    iget-object v1, p0, Lcom/tencent/component/event/EventCenter;->mEventInterceptors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 374
    return-void

    .line 372
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public varargs addObserver(Lcom/tencent/component/event/Observer;Lcom/tencent/component/event/EventSource;[I)V
    .locals 6
    .param p1, "observer"    # Lcom/tencent/component/event/Observer;
    .param p2, "source"    # Lcom/tencent/component/event/EventSource;
    .param p3, "whats"    # [I

    .prologue
    .line 73
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/event/EventCenter;->addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;Lcom/tencent/component/event/EventSource;Z[I)V

    .line 74
    return-void
.end method

.method public varargs addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;Lcom/tencent/component/event/EventSource;Z[I)V
    .locals 6
    .param p1, "observingObject"    # Lcom/tencent/component/event/Observer;
    .param p2, "invocationMethod"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/tencent/component/event/EventSource;
    .param p4, "invokeInUIThread"    # Z
    .param p5, "whats"    # [I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "observingObject can\'t be null!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p3, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "you must specified eventSource!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_2
    if-nez p5, :cond_3

    .line 141
    :goto_0
    return-void

    .line 120
    :cond_3
    if-nez p2, :cond_4

    .line 121
    const-string p2, "onNotify"

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 126
    .local v3, "writeLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    new-instance v0, Lcom/tencent/component/event/ObserverBean;

    iget-object v4, p3, Lcom/tencent/component/event/EventSource;->sender:Ljava/lang/Object;

    invoke-direct {v0, p1, v4, p2, p4}, Lcom/tencent/component/event/ObserverBean;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 129
    .local v0, "observerBean":Lcom/tencent/component/event/ObserverBean;
    iget-object v4, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/utils/collections/MultiSparseArray;

    .line 130
    .local v1, "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    if-nez v1, :cond_5

    .line 131
    new-instance v1, Lcom/tencent/component/utils/collections/MultiSparseArray;

    .end local v1    # "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    invoke-direct {v1}, Lcom/tencent/component/utils/collections/MultiSparseArray;-><init>()V

    .line 132
    .restart local v1    # "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    iget-object v4, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_5
    array-length v5, p5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_6

    aget v2, p5, v4

    .line 135
    .local v2, "what":I
    invoke-direct {p0, v1, v2}, Lcom/tencent/component/event/EventCenter;->clearWeakObserver(Lcom/tencent/component/utils/collections/MultiSparseArray;I)V

    .line 136
    invoke-virtual {v1, v2, v0}, Lcom/tencent/component/utils/collections/MultiSparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    .end local v2    # "what":I
    :cond_6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "observerBean":Lcom/tencent/component/event/ObserverBean;
    .end local v1    # "om":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<Lcom/tencent/component/event/ObserverBean;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public varargs addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;[I)V
    .locals 6
    .param p1, "observingObject"    # Lcom/tencent/component/event/Observer;
    .param p2, "eventSourceName"    # Ljava/lang/String;
    .param p3, "whats"    # [I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 62
    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/component/event/EventSource;

    invoke-direct {v3, p2}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/event/EventCenter;->addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;Lcom/tencent/component/event/EventSource;Z[I)V

    .line 63
    return-void
.end method

.method public varargs addUIObserver(Lcom/tencent/component/event/Observer;Lcom/tencent/component/event/EventSource;[I)V
    .locals 6
    .param p1, "observer"    # Lcom/tencent/component/event/Observer;
    .param p2, "source"    # Lcom/tencent/component/event/EventSource;
    .param p3, "whats"    # [I

    .prologue
    .line 96
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/event/EventCenter;->addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;Lcom/tencent/component/event/EventSource;Z[I)V

    .line 97
    return-void
.end method

.method public varargs addUIObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;[I)V
    .locals 6
    .param p1, "observingObject"    # Lcom/tencent/component/event/Observer;
    .param p2, "eventSourceName"    # Ljava/lang/String;
    .param p3, "whats"    # [I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 85
    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/component/event/EventSource;

    invoke-direct {v3, p2}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/event/EventCenter;->addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;Lcom/tencent/component/event/EventSource;Z[I)V

    .line 86
    return-void
.end method

.method public notify(Lcom/tencent/component/event/Event;)V
    .locals 8
    .param p1, "event"    # Lcom/tencent/component/event/Event;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Event cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 305
    :cond_0
    iget-object v5, p1, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    .line 306
    .local v5, "source":Lcom/tencent/component/event/EventSource;
    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    :cond_1
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "EventSource cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 314
    .local v4, "readLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 315
    invoke-direct {p0}, Lcom/tencent/component/event/EventCenter;->getEventInterceptors()Ljava/util/ArrayList;

    move-result-object v1

    .line 316
    .local v1, "interceptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/event/EventInterceptor;>;"
    invoke-direct {p0, p1}, Lcom/tencent/component/event/EventCenter;->getObserverBeans(Lcom/tencent/component/event/Event;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 318
    .local v3, "observerBeans":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/ObserverBean;>;"
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 321
    if-eqz v1, :cond_5

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/event/EventInterceptor;

    .line 323
    .local v0, "interceptor":Lcom/tencent/component/event/EventInterceptor;
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/tencent/component/event/EventInterceptor;->intercept(Lcom/tencent/component/event/Event;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 334
    .end local v0    # "interceptor":Lcom/tencent/component/event/EventInterceptor;
    :cond_4
    return-void

    .line 318
    .end local v1    # "interceptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/event/EventInterceptor;>;"
    .end local v3    # "observerBeans":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/ObserverBean;>;"
    :catchall_0
    move-exception v6

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 328
    .restart local v1    # "interceptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/event/EventInterceptor;>;"
    .restart local v3    # "observerBeans":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/ObserverBean;>;"
    :cond_5
    if-eqz v3, :cond_4

    .line 329
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/event/ObserverBean;

    .line 330
    .local v2, "observer":Lcom/tencent/component/event/ObserverBean;
    invoke-direct {p0, v2, p1}, Lcom/tencent/component/event/EventCenter;->notifyObserver(Lcom/tencent/component/event/ObserverBean;Lcom/tencent/component/event/Event;)V

    goto :goto_0
.end method

.method public varargs notify(Lcom/tencent/component/event/EventSource;ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Lcom/tencent/component/event/EventSource;
    .param p2, "what"    # I
    .param p3, "eventRank"    # Lcom/tencent/component/event/Event$EventRank;
    .param p4, "parameters"    # [Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 291
    if-nez p3, :cond_0

    .line 292
    sget-object p3, Lcom/tencent/component/event/Event$EventRank;->NORMAL:Lcom/tencent/component/event/Event$EventRank;

    .line 294
    :cond_0
    invoke-static {p2, p1, p4, p3}, Lcom/tencent/component/event/Event;->obtain(ILcom/tencent/component/event/EventSource;Ljava/lang/Object;Lcom/tencent/component/event/Event$EventRank;)Lcom/tencent/component/event/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/component/event/EventCenter;->notify(Lcom/tencent/component/event/Event;)V

    .line 295
    return-void
.end method

.method public removeEventInterceptor(Lcom/tencent/component/event/EventInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lcom/tencent/component/event/EventInterceptor;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 378
    iget-object v1, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 380
    .local v0, "writeLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 381
    iget-object v1, p0, Lcom/tencent/component/event/EventCenter;->mEventInterceptors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public removeObserver(Ljava/lang/Object;)V
    .locals 1
    .param p1, "observingObject"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/event/EventCenter;->removeObserver(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;)V

    .line 164
    return-void
.end method

.method public removeObserver(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;)V
    .locals 5
    .param p1, "observingObject"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/tencent/component/event/EventSource;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "observingObject cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 177
    .local v2, "writeLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    if-eqz p2, :cond_2

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/tencent/component/event/EventCenter;->removeAllObserverByEventSource(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    return-void

    .line 181
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 182
    .local v0, "collections":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/EventSource;>;"
    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/event/EventSource;

    .line 184
    .local v1, "es":Lcom/tencent/component/event/EventSource;
    invoke-direct {p0, p1, v1}, Lcom/tencent/component/event/EventCenter;->removeAllObserverByEventSource(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v0    # "collections":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/EventSource;>;"
    .end local v1    # "es":Lcom/tencent/component/event/EventSource;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public varargs removeObserver(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;[I)V
    .locals 8
    .param p1, "observingObject"    # Ljava/lang/Object;
    .param p2, "source"    # Lcom/tencent/component/event/EventSource;
    .param p3, "whats"    # [I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "observingObject must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_0
    if-nez p3, :cond_1

    .line 224
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/tencent/component/event/EventCenter;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 206
    .local v3, "writeLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 207
    if-eqz p2, :cond_2

    .line 208
    array-length v4, p3

    :goto_1
    if-ge v5, v4, :cond_4

    aget v2, p3, v5

    .line 209
    .local v2, "what":I
    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/component/event/EventCenter;->removeObserverByEventSource(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;I)V

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 212
    .end local v2    # "what":I
    :cond_2
    iget-object v4, p0, Lcom/tencent/component/event/EventCenter;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 213
    .local v0, "collections":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/EventSource;>;"
    if-eqz v0, :cond_4

    .line 214
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/event/EventSource;

    .line 215
    .local v1, "es":Lcom/tencent/component/event/EventSource;
    array-length v7, p3

    move v4, v5

    :goto_2
    if-ge v4, v7, :cond_3

    aget v2, p3, v4

    .line 216
    .restart local v2    # "what":I
    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/component/event/EventCenter;->removeObserverByEventSource(Ljava/lang/Object;Lcom/tencent/component/event/EventSource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 222
    .end local v0    # "collections":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/event/EventSource;>;"
    .end local v1    # "es":Lcom/tencent/component/event/EventSource;
    .end local v2    # "what":I
    :cond_4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method
