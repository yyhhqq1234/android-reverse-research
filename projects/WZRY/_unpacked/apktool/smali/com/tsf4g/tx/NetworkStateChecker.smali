.class public Lcom/tsf4g/tx/NetworkStateChecker;
.super Ljava/lang/Object;
.source "NetworkStateChecker.java"


# static fields
.field private static final tag:Ljava/lang/String; = "NetworkStateChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckNetworkState(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v5, "NetworkStateChecker"

    const-string v6, "CheckNetworkState"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    .line 25
    .local v3, "state":I
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 26
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 28
    const-string v5, "NetworkStateChecker"

    const-string v6, "NetworkStateChecker connManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v5

    move v4, v3

    .line 67
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "state":I
    .local v4, "state":I
    :goto_0
    return v5

    .line 31
    .end local v4    # "state":I
    .restart local v1    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "state":I
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 32
    .local v0, "ApolloNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 34
    const-string v5, "NetworkStateChecker"

    const-string v6, "NetworkStateChecker ApolloNetInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v5

    move v4, v3

    .end local v3    # "state":I
    .restart local v4    # "state":I
    goto :goto_0

    .line 39
    .end local v4    # "state":I
    .restart local v3    # "state":I
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 56
    const-string v5, "NetworkStateChecker"

    const-string v6, "Network Type : Other Network Type"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    .end local v0    # "ApolloNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    :goto_1
    move v4, v3

    .end local v3    # "state":I
    .restart local v4    # "state":I
    move v5, v3

    .line 67
    goto :goto_0

    .line 43
    .end local v4    # "state":I
    .restart local v0    # "ApolloNetInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "state":I
    :pswitch_0
    const-string v5, "NetworkStateChecker"

    const-string v6, "Network Type : MOBILE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    .line 45
    goto :goto_1

    .line 49
    :pswitch_1
    const-string v5, "NetworkStateChecker"

    const-string v6, "Network Type : WIFI"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 51
    goto :goto_1

    .line 62
    .end local v0    # "ApolloNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "NetworkStateChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "check Get exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v5, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v5}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
