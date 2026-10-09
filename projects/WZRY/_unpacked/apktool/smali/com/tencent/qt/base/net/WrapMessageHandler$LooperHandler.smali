.class Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;
.super Landroid/os/Handler;
.source "WrapMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/WrapMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LooperHandler"
.end annotation


# instance fields
.field mParent:Lcom/tencent/qt/base/net/WrapMessageHandler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/qt/base/net/WrapMessageHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parent"    # Lcom/tencent/qt/base/net/WrapMessageHandler;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    iput-object p2, p0, Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;->mParent:Lcom/tencent/qt/base/net/WrapMessageHandler;

    .line 65
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;

    .line 73
    .local v0, "data":Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;
    if-eqz v0, :cond_0

    .line 76
    iget-object v3, v0, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;->request:Lcom/tencent/qt/base/net/Request;

    .line 77
    .local v3, "request":Lcom/tencent/qt/base/net/Request;
    iget-object v1, v0, Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;->message:Lcom/tencent/qt/base/net/Message;

    .line 79
    .local v1, "message":Lcom/tencent/qt/base/net/Message;
    const/4 v0, 0x0

    .line 81
    iget-object v4, p0, Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;->mParent:Lcom/tencent/qt/base/net/WrapMessageHandler;

    invoke-virtual {v4, v3, v1}, Lcom/tencent/qt/base/net/WrapMessageHandler;->onChildMessage(Lcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/Message;)V

    goto :goto_0

    .line 86
    .end local v0    # "data":Lcom/tencent/qt/base/net/WrapMessageHandler$ResponseData;
    .end local v1    # "message":Lcom/tencent/qt/base/net/Message;
    .end local v3    # "request":Lcom/tencent/qt/base/net/Request;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/qt/base/net/Request;

    .line 87
    .local v2, "req":Lcom/tencent/qt/base/net/Request;
    if-eqz v2, :cond_0

    .line 90
    iget-object v4, p0, Lcom/tencent/qt/base/net/WrapMessageHandler$LooperHandler;->mParent:Lcom/tencent/qt/base/net/WrapMessageHandler;

    invoke-virtual {v4, v2}, Lcom/tencent/qt/base/net/WrapMessageHandler;->onChildTimeout(Lcom/tencent/qt/base/net/Request;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
