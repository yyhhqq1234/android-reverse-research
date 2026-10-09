.class Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;
.super Landroid/os/Handler;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 196
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;"
    iput-object p1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->sendRequest()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
