.class public Lcom/netease/epay/sdk/base/network/LoadingHandler;
.super Ljava/lang/Object;
.source "LoadingHandler.java"


# static fields
.field private static final NET_MSG:I = 0x7b

.field private static final NET_TAG:Ljava/lang/String; = "netLoading"

.field private static sLoadingHandler:Lcom/netease/epay/sdk/base/network/LoadingHandler;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/netease/epay/sdk/base/network/LoadingHandler;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->sLoadingHandler:Lcom/netease/epay/sdk/base/network/LoadingHandler;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/netease/epay/sdk/base/network/LoadingHandler;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->sLoadingHandler:Lcom/netease/epay/sdk/base/network/LoadingHandler;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/netease/epay/sdk/base/network/LoadingHandler;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/network/LoadingHandler;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->sLoadingHandler:Lcom/netease/epay/sdk/base/network/LoadingHandler;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->sLoadingHandler:Lcom/netease/epay/sdk/base/network/LoadingHandler;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMsgWhat(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/16 v0, 0x7b

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    goto :goto_0
.end method


# virtual methods
.method public dismissLoading(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/epay/sdk/base/network/LoadingHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/epay/sdk/base/network/LoadingHandler$1;-><init>(Lcom/netease/epay/sdk/base/network/LoadingHandler;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 68
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getMsgWhat(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 69
    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public showLoading(Landroid/support/v4/app/FragmentActivity;)V
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 45
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "netLoading"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    const/4 v0, 0x1

    .line 51
    :goto_2
    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getMsgWhat(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 45
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 54
    :cond_4
    const-string v0, "netLoading"

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showLoading(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
