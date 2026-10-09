.class public Lcom/tencent/qt/base/net/WrapMessageHandler;
.super Ljava/lang/Object;
.source "WrapMessageHandler.java"

# interfaces
.implements Lcom/tencent/qt/base/net/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;,
        Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;
    }
.end annotation


# static fields
.field private static final MSG_RESPONSE:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x2


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/qt/base/net/MessageHandler;Landroid/os/Looper;)V
    .locals 1
    .param p1, "msgHandler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    .line 16
    new-instance v0, Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;

    invoke-direct {v0, p2, p0}, Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;-><init>(Landroid/os/Looper;Lcom/tencent/qt/base/net/WrapMessageHandler;)V

    iput-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public match(III)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "seq"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qt/base/net/MessageHandler;->match(III)Z

    move-result v0

    goto :goto_0
.end method

.method protected onChildMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V
    .locals 1
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;
    .param p2, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qt/base/net/MessageHandler;->onMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onChildTimeout(Lcom/tencent/qt/base/net/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mMsgHandler:Lcom/tencent/qt/base/net/MessageHandler;

    invoke-interface {v0, p1}, Lcom/tencent/qt/base/net/MessageHandler;->onTimeout(Lcom/tencent/qt/base/net/Request;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V
    .locals 8
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;
    .param p2, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 28
    new-instance v0, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;

    invoke-direct {v0}, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;-><init>()V

    .line 29
    .local v0, "data":Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;
    iput-object p1, v0, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;->request:Lcom/tencent/qt/base/net/Request;

    .line 30
    iput-object p2, v0, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;->message:Lcom/tencent/qt/base/net/Message;

    .line 31
    iget-object v2, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 32
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    const-string v2, "QTNetwork"

    const-string v3, "r %04x,%02x,%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p2, Lcom/tencent/qt/base/net/Message;->command:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p2, Lcom/tencent/qt/base/net/Message;->subcmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget v6, p2, Lcom/tencent/qt/base/net/Message;->sequenceNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public onTimeout(Lcom/tencent/qt/base/net/Request;)V
    .locals 8
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 38
    iget-object v1, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 39
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/tencent/qt/base/net/WrapMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    const-string v1, "QTNetwork"

    const-string/jumbo v2, "t %04x,%02x,%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/tencent/qt/base/net/Request;->command:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p1, Lcom/tencent/qt/base/net/Request;->subcmd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p1, Lcom/tencent/qt/base/net/Request;->sequenceNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method
