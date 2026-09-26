.class final Lio/netty/util/ThreadDeathWatcher$Entry;
.super Lio/netty/util/internal/MpscLinkedQueueNode;
.source "ThreadDeathWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ThreadDeathWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/internal/MpscLinkedQueueNode",
        "<",
        "Lio/netty/util/ThreadDeathWatcher$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final isWatch:Z

.field final task:Ljava/lang/Runnable;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "isWatch"    # Z

    .prologue
    .line 211
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;-><init>()V

    .line 212
    iput-object p1, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    .line 213
    iput-object p2, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    .line 214
    iput-boolean p3, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->isWatch:Z

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    instance-of v3, p1, Lio/netty/util/ThreadDeathWatcher$Entry;

    if-nez v3, :cond_2

    move v1, v2

    .line 234
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 237
    check-cast v0, Lio/netty/util/ThreadDeathWatcher$Entry;

    .line 238
    .local v0, "that":Lio/netty/util/ThreadDeathWatcher$Entry;
    iget-object v3, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    iget-object v4, v0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    iget-object v4, v0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public value()Lio/netty/util/ThreadDeathWatcher$Entry;
    .locals 0

    .prologue
    .line 219
    return-object p0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/ThreadDeathWatcher$Entry;->value()Lio/netty/util/ThreadDeathWatcher$Entry;

    move-result-object v0

    return-object v0
.end method
