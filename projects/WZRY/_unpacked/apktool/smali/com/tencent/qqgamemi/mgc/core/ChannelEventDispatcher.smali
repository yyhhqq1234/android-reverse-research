.class public Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;
.super Ljava/lang/Object;
.source "ChannelEventDispatcher.java"

# interfaces
.implements Lcom/tencent/qt/base/net/BroadcastHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher$NetworkConnectEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private broadcastEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->getInstance()Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher$NetworkConnectEvent;

    invoke-direct {v1, p1}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher$NetworkConnectEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->publish(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private onChannelBroadcast(Lcom/tencent/qt/base/net/Message;)V
    .locals 2
    .param p1, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 46
    move-object v0, p1

    check-cast v0, Lcom/tencent/qt/base/net/ChannelBroadcast;

    .line 47
    .local v0, "cb":Lcom/tencent/qt/base/net/ChannelBroadcast;
    invoke-virtual {v0}, Lcom/tencent/qt/base/net/ChannelBroadcast;->getChannelType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v1, p1, Lcom/tencent/qt/base/net/Message;->subcmd:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;->broadcastEvent(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;->broadcastEvent(I)V

    goto :goto_0

    .line 59
    :pswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;->broadcastEvent(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onNetworkBroadcast(Lcom/tencent/qt/base/net/Message;)V
    .locals 2
    .param p1, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 36
    iget v0, p1, Lcom/tencent/qt/base/net/Message;->subcmd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public match(III)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "seq"    # I

    .prologue
    .line 16
    const v0, 0xffff

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBroadcast(Lcom/tencent/qt/base/net/Message;)V
    .locals 2
    .param p1, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 23
    iget v0, p1, Lcom/tencent/qt/base/net/Message;->command:I

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;->onChannelBroadcast(Lcom/tencent/qt/base/net/Message;)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget v0, p1, Lcom/tencent/qt/base/net/Message;->command:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;->onNetworkBroadcast(Lcom/tencent/qt/base/net/Message;)V

    goto :goto_0
.end method
