.class public Lcom/tencent/qt/base/net/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qt/base/net/NetworkHelper$1;,
        Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;,
        Lcom/tencent/qt/base/net/NetworkHelper$HelperHolder;,
        Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;,
        Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkHelper"


# instance fields
.field mInductors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;",
            ">;>;"
        }
    .end annotation
.end field

.field mReceiver:Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;

.field mRegistered:Z

.field mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mRegistered:Z

    .line 46
    sget-object v0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    .line 47
    new-instance v0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;-><init>(Lcom/tencent/qt/base/net/NetworkHelper;)V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mReceiver:Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;

    .line 51
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper;->load()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qt/base/net/NetworkHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qt/base/net/NetworkHelper$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkHelper;-><init>()V

    return-void
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 16
    invoke-static {p0}, Lcom/tencent/qt/base/net/NetworkHelper;->native_set_network_status(I)V

    return-void
.end method

.method private static load()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/qt/base/net/GlobalPref;->getInstant()Lcom/tencent/qt/base/net/GlobalPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qt/base/net/GlobalPref;->loadLibary()V

    .line 43
    return-void
.end method

.method private static native native_set_network_status(I)V
.end method

.method public static sharedHelper()Lcom/tencent/qt/base/net/NetworkHelper;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper$HelperHolder;->access$100()Lcom/tencent/qt/base/net/NetworkHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNetworkInductor(Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;)V
    .locals 6
    .param p1, "inductor"    # Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;

    .prologue
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 109
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 110
    .local v2, "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;

    .line 111
    .local v1, "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    if-ne v1, p1, :cond_0

    .line 119
    .end local v1    # "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    .end local v2    # "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    :goto_1
    return-void

    .line 113
    .restart local v1    # "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    .restart local v2    # "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    :cond_0
    if-nez v1, :cond_1

    .line 114
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    .end local v2    # "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    :cond_2
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getNetworkStatus()Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    return-object v0
.end method

.method protected onNetworkChanged()V
    .locals 5

    .prologue
    .line 137
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 149
    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 142
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 143
    .local v2, "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;

    .line 144
    .local v1, "inductor":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    if-eqz v1, :cond_2

    .line 145
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-interface {v1, v4}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;->onNetworkChanged(Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;)V

    .line 141
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public registerNetworkSensor(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    const-string v3, "NetworkHelper"

    const-string v4, "registerNetworkSensor"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-boolean v3, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mRegistered:Z

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-eqz p1, :cond_0

    .line 65
    iput-boolean v7, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mRegistered:Z

    .line 66
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 67
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 68
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 69
    :cond_2
    const-string v3, "NetworkHelper"

    const-string v4, "network not reachable"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    iput-object v3, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    .line 81
    :cond_3
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-virtual {v3}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->ordinal()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/qt/base/net/NetworkHelper;->native_set_network_status(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mReceiver:Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 71
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_5

    .line 72
    const-string v3, "NetworkHelper"

    const-string v4, "network reachable via wwan"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkReachableViaWWAN:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    iput-object v3, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 76
    const-string v3, "NetworkHelper"

    const-string v4, "network reachable via wifi"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkReachableViaWiFi:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    iput-object v3, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    goto :goto_1

    .line 82
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public removeNetworkInductor(Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;)V
    .locals 5
    .param p1, "inductor"    # Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;

    .prologue
    .line 123
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 125
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 126
    .local v2, "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;

    .line 127
    .local v1, "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    if-ne v1, p1, :cond_1

    .line 128
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    .end local v1    # "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    .end local v2    # "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    :cond_0
    return-void

    .line 130
    .restart local v1    # "ind":Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;
    .restart local v2    # "inductorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qt/base/net/NetworkHelper$NetworkInductor;>;"
    :cond_1
    if-nez v1, :cond_2

    .line 131
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mInductors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterNetworkSensor(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mRegistered:Z

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mRegistered:Z

    .line 98
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkHelper;->mReceiver:Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
