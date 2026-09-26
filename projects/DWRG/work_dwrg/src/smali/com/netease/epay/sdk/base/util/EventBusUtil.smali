.class public Lcom/netease/epay/sdk/base/util/EventBusUtil;
.super Ljava/lang/Object;
.source "EventBusUtil.java"


# static fields
.field private static busSingleton:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearData()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/epay/sdk/base/util/EventBusUtil;->busSingleton:Lorg/greenrobot/eventbus/EventBus;

    .line 33
    return-void
.end method

.method public static getSingleton()Lorg/greenrobot/eventbus/EventBus;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/netease/epay/sdk/base/util/EventBusUtil;->busSingleton:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/netease/epay/sdk/base/util/EventBusUtil;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/util/EventBusUtil;->busSingleton:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base/util/EventBusUtil;->busSingleton:Lorg/greenrobot/eventbus/EventBus;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/util/EventBusUtil;->busSingleton:Lorg/greenrobot/eventbus/EventBus;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static post(Ljava/lang/Object;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/Object;

    .prologue
    .line 36
    instance-of v0, p0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    instance-of v0, p0, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
