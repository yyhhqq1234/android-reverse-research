.class public Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;
.super Ljava/lang/Object;
.source "OnlyForMkey.java"


# static fields
.field private static instance:Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;


# instance fields
.field private xlistener:Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->instance:Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    if-nez v0, :cond_0

    .line 18
    const-class v1, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    monitor-enter v1

    .line 19
    :try_start_0
    new-instance v0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    invoke-direct {v0}, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->instance:Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->instance:Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getMkeyCalledlistener()Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->xlistener:Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;

    return-object v0
.end method

.method public registMkeyCalledListener(Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->xlistener:Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;

    .line 27
    return-void
.end method

.method public unregistMkeyCalledListener()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->xlistener:Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;

    .line 31
    return-void
.end method
