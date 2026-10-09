.class Lcom/tencent/qt/base/net/NetworkEngine$HelloHandler;
.super Landroid/os/Handler;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelloHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 866
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 870
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 871
    const-string v1, "QTNetwork"

    const-string v2, "handleMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;

    .line 873
    .local v0, "data":Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;
    invoke-virtual {v0}, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->handleBroadcast()V

    .line 875
    .end local v0    # "data":Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;
    :cond_0
    return-void
.end method
