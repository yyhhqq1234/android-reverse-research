.class public Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NetworkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qt/base/net/NetworkHelper;


# direct methods
.method protected constructor <init>(Lcom/tencent/qt/base/net/NetworkHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qt/base/net/NetworkHelper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 157
    const-string v4, "NetworkBroadcastReceiver"

    const-string v5, "onReceive"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-nez p2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 165
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 166
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    .line 167
    .local v3, "ns":Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 169
    :cond_2
    const-string v4, "NetworkBroadcastReceiver"

    const-string v5, "network not reachable"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    .line 184
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkHelper;

    iget-object v4, v4, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-virtual {v4, v3}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkHelper;

    iput-object v3, v4, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkHelper;

    iget-object v4, v4, Lcom/tencent/qt/base/net/NetworkHelper;->mStatus:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-virtual {v4}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/qt/base/net/NetworkHelper;->access$200(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_2
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkHelper$NetworkBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkHelper;

    invoke-virtual {v4}, Lcom/tencent/qt/base/net/NetworkHelper;->onNetworkChanged()V

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_5

    .line 174
    const-string v4, "NetworkBroadcastReceiver"

    const-string v5, "network reachable via wwan"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkReachableViaWWAN:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    goto :goto_1

    .line 178
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 180
    const-string v4, "NetworkBroadcastReceiver"

    const-string v5, "network reachable via wifi"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    sget-object v3, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkReachableViaWiFi:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    goto :goto_1

    .line 191
    :catch_0
    move-exception v4

    goto :goto_2
.end method
