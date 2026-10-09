.class Lcom/subao/common/k/d;
.super Ljava/lang/Object;
.source "NetworkWatcherImpl_Support.java"

# interfaces
.implements Lcom/subao/common/k/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/k/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/k/d;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private static a(Lcom/subao/common/k/b$e;)I
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/subao/common/k/d$1;->a:[I

    invoke-virtual {p0}, Lcom/subao/common/k/b$e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 33
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 37
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 39
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/subao/common/k/b$e;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 48
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 49
    invoke-static {p1}, Lcom/subao/common/k/d;->a(Lcom/subao/common/k/b$e;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/subao/common/k/d;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {v0, v1, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 54
    return-void

    .line 56
    :cond_0
    const-string v0, "SubaoParallel"

    const-string v1, "NetworkRequest.Builder.build() return null"

    invoke-static {v0, v1}, Lcom/subao/common/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const-string v0, "SubaoParallel"

    const-string v1, "requestNetwork() failed !!!"

    invoke-static {v0, v1}, Lcom/subao/common/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "SubaoParallel"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/subao/common/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/subao/common/k/b$e;Lcom/subao/common/k/b$a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/subao/common/k/d$a;

    invoke-direct {v0, p2}, Lcom/subao/common/k/d$a;-><init>(Lcom/subao/common/k/b$a;)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/subao/common/k/d;->a(Lcom/subao/common/k/b$e;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    .line 71
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 96
    if-lez v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    new-array v1, v1, [Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/ConnectivityManager$NetworkCallback;

    .line 98
    iget-object v1, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v2, v0

    .line 100
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/subao/common/k/d;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 104
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 107
    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 80
    if-ltz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/subao/common/k/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-ltz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/subao/common/k/d;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 89
    :cond_1
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
