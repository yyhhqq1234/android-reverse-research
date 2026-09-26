.class final Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;
.super Lio/netty/channel/DefaultChannelPromise;
.source "AbstractBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/AbstractBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRegistrationPromise"
.end annotation


# direct methods
.method private constructor <init>(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;)V

    .line 460
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/Channel;Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;-><init>(Lio/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-super {p0}, Lio/netty/channel/DefaultChannelPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    goto :goto_0
.end method
