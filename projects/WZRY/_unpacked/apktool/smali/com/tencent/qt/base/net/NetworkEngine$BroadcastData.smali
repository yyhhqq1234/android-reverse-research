.class Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;
.super Ljava/lang/Object;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastData"
.end annotation


# instance fields
.field handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qt/base/net/BroadcastHandler;",
            ">;"
        }
    .end annotation
.end field

.field message:Lcom/tencent/qt/base/net/Message;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qt/base/net/NetworkEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine$1;

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBroadcast()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 853
    const-string v1, "QTNetwork"

    const-string v2, "handleBroadcast"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qt/base/net/BroadcastHandler;

    .line 856
    .local v0, "handler":Lcom/tencent/qt/base/net/BroadcastHandler;
    const-string v2, "QTNetwork"

    const-string v3, "r %04x,%02x,%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->message:Lcom/tencent/qt/base/net/Message;

    iget v5, v5, Lcom/tencent/qt/base/net/Message;->command:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->message:Lcom/tencent/qt/base/net/Message;

    iget v6, v6, Lcom/tencent/qt/base/net/Message;->subcmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->message:Lcom/tencent/qt/base/net/Message;

    iget v6, v6, Lcom/tencent/qt/base/net/Message;->sequenceNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    iget-object v2, p0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->message:Lcom/tencent/qt/base/net/Message;

    invoke-interface {v0, v2}, Lcom/tencent/qt/base/net/BroadcastHandler;->onBroadcast(Lcom/tencent/qt/base/net/Message;)V

    goto :goto_0

    .line 859
    .end local v0    # "handler":Lcom/tencent/qt/base/net/BroadcastHandler;
    :cond_0
    return-void
.end method
