.class Lio/netty/channel/PendingWriteQueue$PendingWrite$1;
.super Lio/netty/util/Recycler;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingWriteQueue$PendingWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler",
        "<",
        "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 2

    .prologue
    .line 248
    .local p1, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    new-instance v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;-><init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    return-object v0
.end method

.method protected bridge synthetic newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite$1;->newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    return-object v0
.end method
