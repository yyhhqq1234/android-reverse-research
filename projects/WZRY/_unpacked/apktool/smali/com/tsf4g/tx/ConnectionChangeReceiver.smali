.class public Lcom/tsf4g/tx/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field private static LastState:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectionChangeReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v0}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v0

    sput v0, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v2, "ConnectionChangeReceiver"

    const-string v3, "NetWork State Change"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 21
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 23
    .local v0, "ApolloNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 25
    sget v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 27
    const-string v2, "ConnectionChangeReceiver"

    const-string v3, "ApolloNetInfo : null. Network State change to None"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v2, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tsf4g/tx/TX;->NetworkStateChangeNotify(I)V

    .line 29
    sget-object v2, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v2}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v2

    sput v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v2, "ConnectionChangeReceiver"

    const-string v3, "ApolloNetInfo : not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 71
    const-string v2, "ConnectionChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network Type : Other Network Type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :pswitch_0
    sget v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 43
    sget v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 46
    sget-object v2, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tsf4g/tx/TX;->NetworkStateChangeNotify(I)V

    .line 48
    :cond_2
    const-string v2, "ConnectionChangeReceiver"

    const-string v3, "Network State change to TYPE_MOBILE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v2, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tsf4g/tx/TX;->NetworkStateChangeNotify(I)V

    .line 50
    sget-object v2, Lcom/tsf4g/tx/NetworkState;->ReachableViaWWAN:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v2}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v2

    sput v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    goto :goto_0

    .line 56
    :pswitch_1
    sget v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 58
    sget v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 61
    sget-object v2, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->NotReachable:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tsf4g/tx/TX;->NetworkStateChangeNotify(I)V

    .line 63
    :cond_3
    const-string v2, "ConnectionChangeReceiver"

    const-string v3, "Network State change to TYPE_WIFI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v2, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    sget-object v3, Lcom/tsf4g/tx/NetworkState;->ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v3}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tsf4g/tx/TX;->NetworkStateChangeNotify(I)V

    .line 65
    sget-object v2, Lcom/tsf4g/tx/NetworkState;->ReachableViaWiFi:Lcom/tsf4g/tx/NetworkState;

    invoke-virtual {v2}, Lcom/tsf4g/tx/NetworkState;->ordinal()I

    move-result v2

    sput v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;->LastState:I

    goto/16 :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public runNetworkStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 80
    return-void
.end method
