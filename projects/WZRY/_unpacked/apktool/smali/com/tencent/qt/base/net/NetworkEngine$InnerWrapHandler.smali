.class Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;
.super Lcom/tencent/qt/base/net/WrapMessageHandler;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerWrapHandler"
.end annotation


# instance fields
.field channelType:I

.field final synthetic this$0:Lcom/tencent/qt/base/net/NetworkEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/qt/base/net/NetworkEngine;Lcom/tencent/qt/base/net/MessageHandler;Landroid/os/Looper;I)V
    .locals 0
    .param p2, "msgHandler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "type"    # I

    .prologue
    .line 957
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    .line 958
    invoke-direct {p0, p2, p3}, Lcom/tencent/qt/base/net/WrapMessageHandler;-><init>(Lcom/tencent/qt/base/net/MessageHandler;Landroid/os/Looper;)V

    .line 959
    iput p4, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->channelType:I

    .line 960
    return-void
.end method


# virtual methods
.method protected onChildMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V
    .locals 1
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;
    .param p2, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 964
    iget v0, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->channelType:I

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {v0}, Lcom/tencent/qt/base/net/NetworkEngine;->access$500(Lcom/tencent/qt/base/net/NetworkEngine;)V

    .line 968
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qt/base/net/WrapMessageHandler;->onChildMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V

    .line 969
    return-void
.end method

.method protected onChildTimeout(Lcom/tencent/qt/base/net/Request;)V
    .locals 6
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    iget v1, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->channelType:I

    iget v2, p1, Lcom/tencent/qt/base/net/Request;->command:I

    iget v3, p1, Lcom/tencent/qt/base/net/Request;->subcmd:I

    iget v4, p1, Lcom/tencent/qt/base/net/Request;->sequenceNumber:I

    const/4 v5, -0x2

    invoke-static/range {v0 .. v5}, Lcom/tencent/qt/base/net/NetworkEngine;->access$600(Lcom/tencent/qt/base/net/NetworkEngine;IIIII)V

    .line 976
    invoke-super {p0, p1}, Lcom/tencent/qt/base/net/WrapMessageHandler;->onChildTimeout(Lcom/tencent/qt/base/net/Request;)V

    .line 977
    iget v0, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->channelType:I

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;->this$0:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-static {v0}, Lcom/tencent/qt/base/net/NetworkEngine;->access$700(Lcom/tencent/qt/base/net/NetworkEngine;)V

    .line 981
    :cond_0
    return-void
.end method
