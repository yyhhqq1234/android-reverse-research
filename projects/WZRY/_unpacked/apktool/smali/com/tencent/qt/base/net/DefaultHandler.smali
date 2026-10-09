.class public Lcom/tencent/qt/base/net/DefaultHandler;
.super Ljava/lang/Object;
.source "DefaultHandler.java"

# interfaces
.implements Lcom/tencent/qt/base/net/MessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public match(III)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "seq"    # I

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V
    .locals 0
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;
    .param p2, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 16
    return-void
.end method

.method public onTimeout(Lcom/tencent/qt/base/net/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    .line 21
    return-void
.end method
