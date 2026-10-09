.class public Lcom/tencent/component/event/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation


# instance fields
.field private eventSource:Lcom/tencent/component/event/EventSource;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/tencent/component/event/EventSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/component/event/Observable;->eventSource:Lcom/tencent/component/event/EventSource;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceName"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/tencent/component/event/EventSource;

    invoke-direct {v0, p1, p0}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/component/event/Observable;->eventSource:Lcom/tencent/component/event/EventSource;

    .line 22
    return-void
.end method

.method private varargs broadCastEvent(ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "eventRank"    # Lcom/tencent/component/event/Event$EventRank;
    .param p3, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {}, Lcom/tencent/component/event/EventCenter;->getInstance()Lcom/tencent/component/event/EventCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/Observable;->eventSource:Lcom/tencent/component/event/EventSource;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/component/event/EventCenter;->notify(Lcom/tencent/component/event/EventSource;ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getEventSource()Lcom/tencent/component/event/EventSource;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/component/event/Observable;->eventSource:Lcom/tencent/component/event/EventSource;

    return-object v0
.end method

.method protected notify(Lcom/tencent/component/event/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/tencent/component/event/Event;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/component/event/Observable;->eventSource:Lcom/tencent/component/event/EventSource;

    iput-object v0, p1, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    .line 32
    invoke-static {}, Lcom/tencent/component/event/EventCenter;->getInstance()Lcom/tencent/component/event/EventCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/component/event/EventCenter;->notify(Lcom/tencent/component/event/Event;)V

    .line 33
    return-void
.end method

.method protected varargs notifyCore(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/component/event/Event$EventRank;->CORE:Lcom/tencent/component/event/Event$EventRank;

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/component/event/Observable;->broadCastEvent(ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected varargs notifyNormal(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/component/event/Event$EventRank;->NORMAL:Lcom/tencent/component/event/Event$EventRank;

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/component/event/Observable;->broadCastEvent(ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected varargs notifySystem(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/component/event/Event$EventRank;->SYSTEM:Lcom/tencent/component/event/Event$EventRank;

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/component/event/Observable;->broadCastEvent(ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method
