.class Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HelloBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qt/base/net/NetworkEngine;


# direct methods
.method constructor <init>(Lcom/tencent/qt/base/net/NetworkEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 990
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget-boolean v5, v5, Lcom/tencent/qt/base/net/NetworkEngine;->isNeedHello:Z

    if-nez v5, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 994
    .local v0, "current":J
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget-wide v6, v5, Lcom/tencent/qt/base/net/NetworkEngine;->mLastHelloTimestamp:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xdbba0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 995
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iput-boolean v12, v5, Lcom/tencent/qt/base/net/NetworkEngine;->isNeedHello:Z

    .line 996
    const-string v5, "QTNetwork"

    const-string v6, "=> hello response lost, maybe connection break down"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :try_start_0
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {v5}, Lcom/tencent/qt/base/net/NetworkEngine;->access$800(Lcom/tencent/qt/base/net/NetworkEngine;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1010
    :cond_1
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper;->sharedHelper()Lcom/tencent/qt/base/net/NetworkHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qt/base/net/NetworkHelper;->getNetworkStatus()Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    move-result-object v5

    sget-object v6, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-virtual {v5, v6}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1012
    const-string v5, "QTNetwork"

    const-string v6, "=> do hello ,networknotreachable no send"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1019
    :cond_2
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget-object v2, v5, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHelper:Lcom/tencent/qt/base/net/HelloHelper;

    .line 1020
    .local v2, "helper":Lcom/tencent/qt/base/net/HelloHelper;
    const/4 v4, -0x1

    .line 1021
    .local v4, "seq":I
    if-nez v2, :cond_3

    .line 1022
    const-string v5, "QTNetwork"

    const-string v6, "=> no hello helper"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    :goto_1
    const-string v5, "QTNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=> do hello ,seq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1024
    :cond_3
    invoke-interface {v2}, Lcom/tencent/qt/base/net/HelloHelper;->getHello()Lcom/tencent/qt/base/net/Request;

    move-result-object v3

    .line 1027
    .local v3, "request":Lcom/tencent/qt/base/net/Request;
    :try_start_1
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    const/4 v6, 0x0

    new-instance v7, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;

    iget-object v8, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    new-instance v9, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;

    iget-object v10, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;-><init>(Lcom/tencent/qt/base/net/NetworkEngine;Lcom/tencent/qt/base/net/NetworkEngine$1;)V

    iget-object v10, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget-object v10, v10, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;-><init>(Lcom/tencent/qt/base/net/NetworkEngine;Lcom/tencent/qt/base/net/MessageHandler;Landroid/os/Looper;I)V

    const/16 v8, 0x4e20

    invoke-static {v5, v6, v3, v7, v8}, Lcom/tencent/qt/base/net/NetworkEngine;->access$1000(Lcom/tencent/qt/base/net/NetworkEngine;ILcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/MessageHandler;I)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_1

    .line 1030
    :catch_1
    move-exception v5

    goto :goto_1
.end method
