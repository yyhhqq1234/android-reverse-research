.class Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;
.super Ljava/lang/Object;
.source "NetworkEngine.java"

# interfaces
.implements Lcom/tencent/qt/base/net/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelloMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qt/base/net/NetworkEngine;


# direct methods
.method private constructor <init>(Lcom/tencent/qt/base/net/NetworkEngine;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qt/base/net/NetworkEngine;Lcom/tencent/qt/base/net/NetworkEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;
    .param p2, "x1"    # Lcom/tencent/qt/base/net/NetworkEngine$1;

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;-><init>(Lcom/tencent/qt/base/net/NetworkEngine;)V

    return-void
.end method


# virtual methods
.method public match(III)Z
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "subcmd"    # I
    .param p3, "seq"    # I

    .prologue
    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method public onMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V
    .locals 9
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;
    .param p2, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    const/4 v8, 0x0

    .line 820
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget-object v0, v3, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHelper:Lcom/tencent/qt/base/net/HelloHelper;

    .line 822
    .local v0, "helper":Lcom/tencent/qt/base/net/HelloHelper;
    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-interface {v0, p2}, Lcom/tencent/qt/base/net/HelloHelper;->isHelloOK(Lcom/tencent/qt/base/net/Message;)Z

    move-result v1

    .line 826
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 827
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/qt/base/net/NetworkEngine;->mLastHelloTimestamp:J

    .line 828
    invoke-interface {v0}, Lcom/tencent/qt/base/net/HelloHelper;->getHelloInterval()I

    move-result v2

    .line 829
    .local v2, "timeInterval":I
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qt/base/net/NetworkEngine;->setHelloInterval(I)V

    .line 831
    const-string v3, "QTNetwork"

    const-string v4, "=>proxy hello success"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 833
    .end local v2    # "timeInterval":I
    :cond_1
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-virtual {v3}, Lcom/tencent/qt/base/net/NetworkEngine;->onLogout()V

    .line 834
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {v4}, Lcom/tencent/qt/base/net/NetworkEngine;->access$200(Lcom/tencent/qt/base/net/NetworkEngine;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {v6}, Lcom/tencent/qt/base/net/NetworkEngine;->access$300(Lcom/tencent/qt/base/net/NetworkEngine;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {v7}, Lcom/tencent/qt/base/net/NetworkEngine;->access$400(Lcom/tencent/qt/base/net/NetworkEngine;)[B

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/qt/base/net/NetworkEngine;->onLogin(J[B[B)V

    .line 835
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-virtual {v3}, Lcom/tencent/qt/base/net/NetworkEngine;->connect()V

    .line 836
    const-string v3, "QTNetwork"

    const-string v4, "=>proxy hello fail reconnect!"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTimeout(Lcom/tencent/qt/base/net/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    .line 842
    const-string v0, "QTNetwork"

    const-string v1, "proxy hello timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    return-void
.end method
