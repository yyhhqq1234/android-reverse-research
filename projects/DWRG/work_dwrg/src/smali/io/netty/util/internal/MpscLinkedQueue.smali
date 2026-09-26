.class final Lio/netty/util/internal/MpscLinkedQueue;
.super Lio/netty/util/internal/MpscLinkedQueueTailRef;
.source "MpscLinkedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/MpscLinkedQueueTailRef",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a116d2b49548c11L


# instance fields
.field p00:J

.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueTailRef;-><init>()V

    .line 91
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;-><init>(Ljava/lang/Object;)V

    .line 92
    .local v0, "tombstone":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->setHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 93
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->setTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/internal/MpscLinkedQueue;)Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/internal/MpscLinkedQueue;

    .prologue
    .line 68
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    return-object v0
.end method

.method private peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->headRef()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    .line 102
    .local v0, "head":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    .line 103
    .local v1, "next":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    if-eqz v1, :cond_1

    .line 107
    .end local v1    # "next":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    :goto_0
    return-object v1

    .line 106
    .restart local v1    # "next":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->tailRef()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 363
    new-instance v1, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;-><init>(Ljava/lang/Object;)V

    .line 364
    .local v1, "tombstone":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    invoke-virtual {p0, v1}, Lio/netty/util/internal/MpscLinkedQueue;->setHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 365
    invoke-virtual {p0, v1}, Lio/netty/util/internal/MpscLinkedQueue;->setTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 369
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 375
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 354
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "queue full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_0

    .line 321
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "c"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_0
    if-ne p1, p0, :cond_1

    .line 324
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "c == this"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    :cond_1
    const/4 v2, 0x0

    .line 328
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v2, 0x1

    .line 331
    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 187
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    .line 189
    .local v0, "n":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 192
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 193
    const/4 v1, 0x1

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const/4 v2, 0x0

    .line 315
    .end local v0    # "e":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 249
    return-object v0

    .line 251
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/MpscLinkedQueue$1;-><init>(Lio/netty/util/internal/MpscLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "value"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    instance-of v2, p1, Lio/netty/util/internal/MpscLinkedQueueNode;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 126
    check-cast v0, Lio/netty/util/internal/MpscLinkedQueueNode;

    .line 127
    .local v0, "newTail":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/netty/util/internal/MpscLinkedQueueNode;->setNext(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 132
    :goto_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->getAndSetTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    .line 133
    .local v1, "oldTail":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    invoke-virtual {v1, v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->setNext(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 134
    const/4 v2, 0x1

    return v2

    .line 129
    .end local v0    # "newTail":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    .end local v1    # "oldTail":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    :cond_1
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;

    invoke-direct {v0, p1}, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;-><init>(Ljava/lang/Object;)V

    .restart local v0    # "newTail":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    .line 160
    .local v0, "next":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 163
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    .line 140
    .local v0, "next":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    if-nez v0, :cond_0

    .line 141
    const/4 v2, 0x0

    .line 154
    :goto_0
    return-object v2

    .line 145
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->headRef()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    .line 149
    .local v1, "oldHead":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->lazySetHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 152
    invoke-virtual {v1}, Lio/netty/util/internal/MpscLinkedQueueNode;->unlink()V

    .line 154
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->clearMaybe()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 240
    return-object v0

    .line 242
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 305
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 168
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    const/4 v0, 0x0

    .line 169
    .local v0, "count":I
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    .line 171
    .local v1, "n":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 177
    return v0

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 175
    invoke-virtual {v1}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 256
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 257
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 258
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 265
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueue;, "Lio/netty/util/internal/MpscLinkedQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 271
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->size()I

    move-result v3

    .line 273
    .local v3, "size":I
    array-length v4, p1

    if-lt v4, v3, :cond_0

    .line 274
    move-object v0, p1

    .line 279
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 280
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 284
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    if-ne p1, v0, :cond_3

    .line 285
    aput-object v6, v0, v1

    .line 300
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_2
    :goto_2
    return-object v0

    .line 289
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_3
    array-length v4, p1

    if-ge v4, v1, :cond_4

    .line 290
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 293
    :cond_4
    invoke-static {v0, v5, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v4, p1

    if-le v4, v1, :cond_5

    .line 295
    aput-object v6, p1, v1

    :cond_5
    move-object v0, p1

    .line 297
    goto :goto_2
.end method
