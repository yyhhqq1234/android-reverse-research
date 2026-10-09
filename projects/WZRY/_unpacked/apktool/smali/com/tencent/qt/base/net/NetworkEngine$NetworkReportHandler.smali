.class Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;
.super Landroid/os/Handler;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkReportHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 882
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 883
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 888
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .local v1, "obj":Ljava/lang/Object;
    move-object v0, v1

    .line 890
    check-cast v0, Lcom/tencent/qt/base/net/NetworkUIHandler;

    .line 891
    .local v0, "h":Lcom/tencent/qt/base/net/NetworkUIHandler;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3}, Lcom/tencent/qt/base/net/NetworkUIHandler;->onNetworkUnvaliable(II)V

    .line 893
    return-void
.end method
