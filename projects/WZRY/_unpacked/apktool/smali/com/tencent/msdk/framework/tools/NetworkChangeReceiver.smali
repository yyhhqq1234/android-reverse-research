.class public Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# static fields
.field private static final Reachable_Not_Reachable:I = 0x0

.field private static final Reachable_Via_WWAN:I = 0x2

.field private static final Reachable_Via_WiFi:I = 0x1


# instance fields
.field private registerActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->registerActivity:Landroid/app/Activity;

    .line 28
    iput-object p1, p0, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->registerActivity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public static native OnReachabilityChanged(I)V
.end method


# virtual methods
.method public getRegisterActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->registerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const-string v2, "network change"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 38
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 39
    .local v1, "manager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 40
    const-string v2, "Get ConnectivityManager failed"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 44
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 45
    invoke-static {v4}, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->OnReachabilityChanged(I)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    invoke-static {v4}, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->OnReachabilityChanged(I)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 52
    invoke-static {v5}, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->OnReachabilityChanged(I)V

    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->OnReachabilityChanged(I)V

    goto :goto_0
.end method
