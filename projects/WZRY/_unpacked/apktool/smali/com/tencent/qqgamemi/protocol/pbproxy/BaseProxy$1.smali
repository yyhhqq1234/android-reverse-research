.class Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Lcom/tencent/qt/base/net/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    .prologue
    .line 63
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;"
    iput-object p1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(III)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "seq"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V
    .locals 5
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;
    .param p2, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 71
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;"
    const/4 v1, 0x0

    .line 73
    .local v1, "rsp":Lcom/squareup/wire/Message;, "TRsp;"
    :try_start_0
    iget-object v2, p2, Lcom/tencent/qt/base/net/Message;->payload:[B

    iget-object v3, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    iget-object v3, v3, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->rspClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    invoke-virtual {v2, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->parseRspPB(Lcom/squareup/wire/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    if-nez v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    sget-object v3, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_UNKNOW:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->handlerFailResult(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/Object;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    sget-object v3, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_SERVER:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->handlerFailResult(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTimeout(Lcom/tencent/qt/base/net/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    .line 89
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->TIMEOUT:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->handlerFailResult(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
