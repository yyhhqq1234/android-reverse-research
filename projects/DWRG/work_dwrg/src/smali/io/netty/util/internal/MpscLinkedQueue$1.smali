.class Lio/netty/util/internal/MpscLinkedQueue$1;
.super Ljava/lang/Object;
.source "MpscLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private node:Lio/netty/util/internal/MpscLinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/util/internal/MpscLinkedQueue;


# direct methods
.method constructor <init>(Lio/netty/util/internal/MpscLinkedQueue;)V
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue$1;, "Lio/netty/util/internal/MpscLinkedQueue.1;"
    iput-object p1, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->this$0:Lio/netty/util/internal/MpscLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->this$0:Lio/netty/util/internal/MpscLinkedQueue;

    invoke-static {v0}, Lio/netty/util/internal/MpscLinkedQueue;->access$000(Lio/netty/util/internal/MpscLinkedQueue;)Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue$1;, "Lio/netty/util/internal/MpscLinkedQueue.1;"
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue$1;, "Lio/netty/util/internal/MpscLinkedQueue.1;"
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    .line 213
    .local v0, "node":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    if-nez v0, :cond_0

    .line 214
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 216
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v2

    iput-object v2, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    .line 218
    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue$1;, "Lio/netty/util/internal/MpscLinkedQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
