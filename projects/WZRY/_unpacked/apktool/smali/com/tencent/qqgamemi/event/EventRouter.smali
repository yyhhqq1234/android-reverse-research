.class public Lcom/tencent/qqgamemi/event/EventRouter;
.super Ljava/lang/Object;
.source "EventRouter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventRouter"

.field private static volatile sInstance:Lcom/tencent/qqgamemi/event/EventRouter;


# instance fields
.field private mEventTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    .line 24
    return-void
.end method

.method private varargs addEventHandlerInner(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqgamemi/event/EventRouter;->hasSameHandler(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqgamemi/event/EventRouter;->addEventHandlerReally(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs addEventHandlerReally(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    .local v0, "oldHandlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "oldHandlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v0    # "oldHandlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/tencent/qqgamemi/event/EventRouter;->containsEventHandler(Ljava/util/List;Lcom/tencent/qqgamemi/event/EventHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private containsEventHandler(Ljava/util/List;Lcom/tencent/qqgamemi/event/EventHandler;)Z
    .locals 5
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ">;>;",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "handlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 209
    move-object v2, p1

    .line 210
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 211
    .local v0, "h":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqgamemi/event/EventHandler;

    .line 213
    .local v1, "item":Lcom/tencent/qqgamemi/event/EventHandler;
    if-ne v1, p2, :cond_0

    .line 214
    const/4 v3, 0x1

    .line 219
    .end local v0    # "h":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    .end local v1    # "item":Lcom/tencent/qqgamemi/event/EventHandler;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getHandlersByEventType(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, v0}, Lcom/tencent/qqgamemi/event/EventRouter;->getHandlersFromReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 139
    .end local v0    # "handlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getHandlersFromReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "handlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 147
    .local v0, "handlerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "handlerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/event/EventRouter;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/qqgamemi/event/EventRouter;->sInstance:Lcom/tencent/qqgamemi/event/EventRouter;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/tencent/qqgamemi/event/EventRouter;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/event/EventRouter;->sInstance:Lcom/tencent/qqgamemi/event/EventRouter;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/tencent/qqgamemi/event/EventRouter;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/event/EventRouter;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/event/EventRouter;->sInstance:Lcom/tencent/qqgamemi/event/EventRouter;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/event/EventRouter;->sInstance:Lcom/tencent/qqgamemi/event/EventRouter;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasSameHandler(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;)Z
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, "result":Z
    iget-object v2, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    .local v0, "oldHandlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v0, p2}, Lcom/tencent/qqgamemi/event/EventRouter;->containsEventHandler(Ljava/util/List;Lcom/tencent/qqgamemi/event/EventHandler;)Z

    move-result v1

    .line 204
    .end local v0    # "oldHandlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    :cond_0
    return v1
.end method

.method private onBroadCasting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeEventHandler(Ljava/util/List;Lcom/tencent/qqgamemi/event/EventHandler;)V
    .locals 3
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ">;>;",
            "Lcom/tencent/qqgamemi/event/EventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "handlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 97
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 102
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addEventHandler(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/event/EventRouter;->addEventHandlerInner(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->onBroadCasting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->getHandlersByEventType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/event/EventHandler;

    .line 110
    .local v0, "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    if-eqz v0, :cond_0

    .line 111
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/tencent/qqgamemi/event/EventHandler;->onReceive([Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v0    # "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    .end local v1    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "arg1":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->onBroadCasting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->getHandlersByEventType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/event/EventHandler;

    .line 124
    .local v0, "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    if-eqz v0, :cond_0

    .line 125
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v3}, Lcom/tencent/qqgamemi/event/EventHandler;->onReceive([Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .end local v0    # "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    .end local v1    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "arg1":Ljava/lang/Object;, "TT1;"
    .local p3, "arg2":Ljava/lang/Object;, "TT2;"
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->onBroadCasting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->getHandlersByEventType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/event/EventHandler;

    .line 160
    .local v0, "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    if-eqz v0, :cond_0

    .line 161
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-interface {v0, v3}, Lcom/tencent/qqgamemi/event/EventHandler;->onReceive([Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    .end local v0    # "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    .end local v1    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT1;TT2;TT3;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "arg1":Ljava/lang/Object;, "TT1;"
    .local p3, "arg2":Ljava/lang/Object;, "TT2;"
    .local p4, "arg3":Ljava/lang/Object;, "TT3;"
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->onBroadCasting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->getHandlersByEventType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/event/EventHandler;

    .line 173
    .local v0, "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    if-eqz v0, :cond_0

    .line 174
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-interface {v0, v3}, Lcom/tencent/qqgamemi/event/EventHandler;->onReceive([Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    .end local v0    # "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    .end local v1    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT1;TT2;TT3;TT4;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "arg1":Ljava/lang/Object;, "TT1;"
    .local p3, "arg2":Ljava/lang/Object;, "TT2;"
    .local p4, "arg3":Ljava/lang/Object;, "TT3;"
    .local p5, "arg4":Ljava/lang/Object;, "TT4;"
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->onBroadCasting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/event/EventRouter;->getHandlersByEventType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/event/EventHandler;

    .line 186
    .local v0, "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    if-eqz v0, :cond_0

    .line 187
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    invoke-interface {v0, v3}, Lcom/tencent/qqgamemi/event/EventHandler;->onReceive([Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    .end local v0    # "handler":Lcom/tencent/qqgamemi/event/EventHandler;
    .end local v1    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/event/EventHandler;>;"
    :cond_1
    return-void
.end method

.method public removeEventHandler(Ljava/lang/String;Lcom/tencent/qqgamemi/event/EventHandler;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tencent/qqgamemi/event/EventHandler;

    .prologue
    .line 78
    if-nez p2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qqgamemi/event/EventHandler;>;>;"
    if-eqz v0, :cond_2

    .line 84
    invoke-direct {p0, v0, p2}, Lcom/tencent/qqgamemi/event/EventRouter;->removeEventHandler(Ljava/util/List;Lcom/tencent/qqgamemi/event/EventHandler;)V

    .line 87
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/tencent/qqgamemi/event/EventRouter;->mEventTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
