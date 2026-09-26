.class final Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;
.super Ljava/lang/Object;
.source "AbstractEventExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/AbstractEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventExecutorIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lio/netty/util/concurrent/EventExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private nextCalled:Z

.field final synthetic this$0:Lio/netty/util/concurrent/AbstractEventExecutor;


# direct methods
.method private constructor <init>(Lio/netty/util/concurrent/AbstractEventExecutor;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;->this$0:Lio/netty/util/concurrent/AbstractEventExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/concurrent/AbstractEventExecutor;Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;-><init>(Lio/netty/util/concurrent/AbstractEventExecutor;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;->nextCalled:Z

    .line 149
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;->this$0:Lio/netty/util/concurrent/AbstractEventExecutor;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractEventExecutor$EventExecutorIterator;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
