.class public final Lio/netty/channel/nio/NioEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "NioEventLoop.java"


# static fields
.field private static final CLEANUP_INTERVAL:I = 0x100

.field private static final DISABLE_KEYSET_OPTIMIZATION:Z

.field private static final MIN_PREMATURE_SELECTOR_RETURNS:I = 0x3

.field private static final SELECTOR_AUTO_REBUILD_THRESHOLD:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private cancelledKeys:I

.field private volatile ioRatio:I

.field private needsToSelectAgain:Z

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

.field selector:Ljava/nio/channels/Selector;

.field private final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 53
    const-class v4, Lio/netty/channel/nio/NioEventLoop;

    invoke-static {v4}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    sput-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 58
    const-string v4, "io.netty.noKeySetOptimization"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 57
    sput-boolean v4, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEYSET_OPTIMIZATION:Z

    .line 69
    const-string v2, "sun.nio.ch.bugLevel"

    .line 71
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "buglevel":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    const-string v4, ""

    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "buglevel":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "io.netty.selectorAutoRebuildThreshold"

    const/16 v5, 0x200

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "selectorAutoRebuildThreshold":I
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 83
    const/4 v3, 0x0

    .line 86
    :cond_1
    sput v3, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    .line 88
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.noKeySetOptimization: {}"

    sget-boolean v6, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEYSET_OPTIMIZATION:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.selectorAutoRebuildThreshold: {}"

    sget v6, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :cond_2
    return-void

    .line 75
    .end local v3    # "selectorAutoRebuildThreshold":I
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Unable to get/set System Property: {}"

    invoke-interface {v4, v5, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method constructor <init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/nio/NioEventLoopGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    const/16 v0, 0x32

    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    .line 116
    if-nez p3, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "selectorProvider"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p3, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 120
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->openSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 121
    return-void
.end method

.method private closeAll()V
    .locals 9

    .prologue
    .line 560
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 561
    iget-object v6, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    .line 562
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v2, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/channel/nio/AbstractNioChannel;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 575
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 578
    return-void

    .line 563
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 564
    .local v3, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 565
    .local v0, "a":Ljava/lang/Object;
    instance-of v7, v0, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v7, :cond_1

    .line 566
    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel;

    .end local v0    # "a":Ljava/lang/Object;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    .restart local v0    # "a":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    move-object v5, v0

    .line 570
    check-cast v5, Lio/netty/channel/nio/NioTask;

    .line 571
    .local v5, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    const/4 v7, 0x0

    invoke-static {v5, v3, v7}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 575
    .end local v0    # "a":Ljava/lang/Object;
    .end local v3    # "k":Ljava/nio/channels/SelectionKey;
    .end local v5    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/nio/AbstractNioChannel;

    .line 576
    .local v1, "ch":Lio/netty/channel/nio/AbstractNioChannel;
    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v7

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v8

    invoke-interface {v8}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    invoke-interface {v7, v8}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_1
.end method

.method private static invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/nio/NioTask",
            "<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lio/netty/channel/nio/NioTask;->channelUnregistered(Ljava/nio/channels/SelectableChannel;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unexpected exception while running NioTask.channelUnregistered()"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private openSelector()Ljava/nio/channels/Selector;
    .locals 10

    .prologue
    .line 126
    :try_start_0
    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v7}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 131
    .local v4, "selector":Ljava/nio/channels/Selector;
    sget-boolean v7, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEYSET_OPTIMIZATION:Z

    if-eqz v7, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v4

    .line 127
    .end local v4    # "selector":Ljava/nio/channels/Selector;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lio/netty/channel/ChannelException;

    const-string v8, "failed to open a new selector"

    invoke-direct {v7, v8, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :cond_1
    :try_start_1
    new-instance v2, Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-direct {v2}, Lio/netty/channel/nio/SelectedSelectionKeySet;-><init>()V

    .line 139
    .local v2, "selectedKeySet":Lio/netty/channel/nio/SelectedSelectionKeySet;
    const-string v7, "sun.nio.ch.SelectorImpl"

    const/4 v8, 0x0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 142
    .local v5, "selectorImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    const-string v7, "selectedKeys"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 147
    .local v3, "selectedKeysField":Ljava/lang/reflect/Field;
    const-string v7, "publicSelectedKeys"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 149
    .local v1, "publicSelectedKeysField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 152
    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iput-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    .line 156
    sget-object v7, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Instrumented an optimized java.util.Set into: {}"

    invoke-interface {v7, v8, v4}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 157
    .end local v1    # "publicSelectedKeysField":Ljava/lang/reflect/Field;
    .end local v2    # "selectedKeySet":Lio/netty/channel/nio/SelectedSelectionKeySet;
    .end local v3    # "selectedKeysField":Ljava/lang/reflect/Field;
    .end local v5    # "selectorImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 158
    .local v6, "t":Ljava/lang/Throwable;
    const/4 v7, 0x0

    iput-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    .line 159
    sget-object v7, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Failed to instrument an optimized java.util.Set into: {}"

    invoke-interface {v7, v8, v4, v6}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 5
    .param p0, "k"    # Ljava/nio/channels/SelectionKey;
    .param p1, "ch"    # Lio/netty/channel/nio/AbstractNioChannel;

    .prologue
    .line 499
    invoke-virtual {p1}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v3

    .line 500
    .local v3, "unsafe":Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    invoke-interface {v3}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    .line 510
    .local v2, "readyOps":I
    and-int/lit8 v4, v2, 0x11

    if-nez v4, :cond_2

    if-nez v2, :cond_3

    .line 511
    :cond_2
    invoke-interface {v3}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->read()V

    .line 512
    invoke-virtual {p1}, Lio/netty/channel/nio/AbstractNioChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    :cond_3
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_4

    .line 519
    invoke-virtual {p1}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->forceFlush()V

    .line 521
    :cond_4
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 525
    .local v1, "ops":I
    and-int/lit8 v1, v1, -0x9

    .line 526
    invoke-virtual {p0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 528
    invoke-interface {v3}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->finishConnect()V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v1    # "ops":I
    .end local v2    # "readyOps":I
    :catch_0
    move-exception v0

    .line 531
    .local v0, "ignored":Ljava/nio/channels/CancelledKeyException;
    invoke-interface {v3}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private static processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V
    .locals 5
    .param p0, "k"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Lio/netty/channel/nio/NioTask",
            "<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    const/4 v4, 0x0

    .line 536
    const/4 v1, 0x0

    .line 538
    .local v1, "state":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-interface {p1, v2, p0}, Lio/netty/channel/nio/NioTask;->channelReady(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    const/4 v1, 0x1

    .line 545
    packed-switch v1, :pswitch_data_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 542
    invoke-static {p1, p0, v0}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    const/4 v1, 0x2

    .line 545
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 547
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 548
    invoke-static {p1, p0, v4}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 551
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    invoke-static {p1, p0, v4}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 545
    packed-switch v1, :pswitch_data_2

    .line 556
    :cond_1
    :goto_1
    throw v2

    .line 547
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 548
    invoke-static {p1, p0, v4}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 551
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 552
    invoke-static {p1, p0, v4}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 547
    :pswitch_4
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 548
    invoke-static {p1, p0, v4}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 551
    :pswitch_5
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    invoke-static {p1, p0, v4}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processSelectedKeys()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-virtual {v0}, Lio/netty/channel/nio/SelectedSelectionKeySet;->flip()[Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeysOptimized([Ljava/nio/channels/SelectionKey;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeysPlain(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private processSelectedKeysOptimized([Ljava/nio/channels/SelectionKey;)V
    .locals 6
    .param p1, "selectedKeys"    # [Ljava/nio/channels/SelectionKey;

    .prologue
    const/4 v5, 0x0

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "i":I
    :goto_0
    aget-object v2, p1, v1

    .line 458
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    if-nez v2, :cond_0

    .line 496
    return-void

    .line 463
    :cond_0
    aput-object v5, p1, v1

    .line 465
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "a":Ljava/lang/Object;
    instance-of v4, v0, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v4, :cond_2

    .line 468
    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel;

    .end local v0    # "a":Ljava/lang/Object;
    invoke-static {v2, v0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V

    .line 475
    :goto_1
    iget-boolean v4, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v4, :cond_1

    .line 479
    :goto_2
    aget-object v4, p1, v1

    if-nez v4, :cond_3

    .line 486
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 492
    iget-object v4, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-virtual {v4}, Lio/netty/channel/nio/SelectedSelectionKeySet;->flip()[Ljava/nio/channels/SelectionKey;

    move-result-object p1

    .line 493
    const/4 v1, -0x1

    .line 456
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0    # "a":Ljava/lang/Object;
    :cond_2
    move-object v3, v0

    .line 471
    check-cast v3, Lio/netty/channel/nio/NioTask;

    .line 472
    .local v3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    invoke-static {v2, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V

    goto :goto_1

    .line 482
    .end local v0    # "a":Ljava/lang/Object;
    .end local v3    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :cond_3
    aput-object v5, p1, v1

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 478
    goto :goto_2
.end method

.method private processSelectedKeysPlain(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    :cond_0
    return-void

    .line 423
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 425
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 426
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 427
    .local v0, "a":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 429
    instance-of v4, v0, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v4, :cond_3

    .line 430
    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel;

    .end local v0    # "a":Ljava/lang/Object;
    invoke-static {v2, v0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V

    .line 437
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    iget-boolean v4, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v4, :cond_2

    .line 442
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 443
    iget-object v4, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    .line 446
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 424
    goto :goto_0

    .restart local v0    # "a":Ljava/lang/Object;
    :cond_3
    move-object v3, v0

    .line 433
    check-cast v3, Lio/netty/channel/nio/NioTask;

    .line 434
    .local v3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    invoke-static {v2, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V

    goto :goto_1
.end method

.method private select(Z)V
    .locals 18
    .param p1, "oldWakenUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-object v9, v0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 609
    .local v9, "selector":Ljava/nio/channels/Selector;
    const/4 v5, 0x0

    .line 610
    .local v5, "selectCnt":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 611
    .local v2, "currentTimeNanos":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lio/netty/channel/nio/NioEventLoop;->delayNanos(J)J

    move-result-wide v14

    add-long v6, v2, v14

    .line 613
    .local v6, "selectDeadLineNanos":J
    :goto_0
    sub-long v14, v6, v2

    const-wide/32 v16, 0x7a120

    add-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    div-long v12, v14, v16

    .line 614
    .local v12, "timeoutMillis":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gtz v14, :cond_2

    .line 615
    if-nez v5, :cond_0

    .line 616
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->selectNow()I

    .line 617
    const/4 v5, 0x1

    .line 671
    :cond_0
    :goto_1
    const/4 v14, 0x3

    if-le v5, v14, :cond_1

    .line 672
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v14}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 673
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "Selector.select() returned prematurely {} times in a row."

    add-int/lit8 v16, v5, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    .end local v2    # "currentTimeNanos":J
    .end local v6    # "selectDeadLineNanos":J
    .end local v12    # "timeoutMillis":J
    :cond_1
    :goto_2
    return-void

    .line 622
    .restart local v2    # "currentTimeNanos":J
    .restart local v6    # "selectDeadLineNanos":J
    .restart local v12    # "timeoutMillis":J
    :cond_2
    invoke-virtual {v9, v12, v13}, Ljava/nio/channels/Selector;->select(J)I

    move-result v8

    .line 623
    .local v8, "selectedKeys":I
    add-int/lit8 v5, v5, 0x1

    .line 625
    if-nez v8, :cond_0

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/NioEventLoop;->hasTasks()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/NioEventLoop;->hasScheduledTasks()Z

    move-result v14

    if-nez v14, :cond_0

    .line 632
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 638
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v14}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 639
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop."

    invoke-interface {v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 643
    :cond_3
    const/4 v5, 0x1

    .line 644
    goto :goto_1

    .line 647
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 648
    .local v10, "time":J
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    sub-long v14, v10, v14

    cmp-long v14, v14, v2

    if-ltz v14, :cond_6

    .line 650
    const/4 v5, 0x1

    .line 668
    :cond_5
    move-wide v2, v10

    .line 612
    goto :goto_0

    .line 651
    :cond_6
    sget v14, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    if-lez v14, :cond_5

    .line 652
    sget v14, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    if-lt v5, v14, :cond_5

    .line 655
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 656
    const-string v15, "Selector.select() returned prematurely {} times in a row; rebuilding selector."

    .line 657
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 655
    invoke-interface/range {v14 .. v16}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    .line 660
    move-object/from16 v0, p0

    iget-object v9, v0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 663
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    const/4 v5, 0x1

    .line 665
    goto/16 :goto_1

    .line 676
    .end local v2    # "currentTimeNanos":J
    .end local v6    # "selectDeadLineNanos":J
    .end local v8    # "selectedKeys":I
    .end local v10    # "time":J
    .end local v12    # "timeoutMillis":J
    :catch_0
    move-exception v4

    .line 677
    .local v4, "e":Ljava/nio/channels/CancelledKeyException;
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v14}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 678
    sget-object v14, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-class v16, Ljava/nio/channels/CancelledKeyException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " raised by a Selector - JDK bug?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private selectAgain()V
    .locals 3

    .prologue
    .line 685
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    .line 687
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to update SelectionKeys."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method cancel(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 398
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 399
    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    .line 400
    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    .line 404
    :cond_0
    return-void
.end method

.method protected cleanup()V
    .locals 3

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getIoRatio()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    return v0
.end method

.method protected newTaskQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected pollTask()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 408
    invoke-super {p0}, Lio/netty/channel/SingleThreadEventLoop;->pollTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 409
    .local v0, "task":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v1, :cond_0

    .line 410
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 412
    :cond_0
    return-object v0
.end method

.method public rebuildSelector()V
    .locals 15

    .prologue
    .line 225
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->inEventLoop()Z

    move-result v12

    if-nez v12, :cond_1

    .line 226
    new-instance v12, Lio/netty/channel/nio/NioEventLoop$1;

    invoke-direct {v12, p0}, Lio/netty/channel/nio/NioEventLoop$1;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    invoke-virtual {p0, v12}, Lio/netty/channel/nio/NioEventLoop;->execute(Ljava/lang/Runnable;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v9, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 238
    .local v9, "oldSelector":Ljava/nio/channels/Selector;
    if-eqz v9, :cond_0

    .line 243
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->openSelector()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 250
    .local v8, "newSelector":Ljava/nio/channels/Selector;
    const/4 v6, 0x0

    .line 253
    .local v6, "nChannels":I
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v12

    if-nez v12, :cond_4

    .line 288
    iput-object v8, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 292
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 299
    :cond_3
    :goto_3
    sget-object v12, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Migrated "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " channel(s) to the new Selector."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v6    # "nChannels":I
    .end local v8    # "newSelector":Ljava/nio/channels/Selector;
    :catch_0
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    sget-object v12, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "Failed to create a new Selector."

    invoke-interface {v12, v13, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "nChannels":I
    .restart local v8    # "newSelector":Ljava/nio/channels/Selector;
    :cond_4
    :try_start_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;

    .line 254
    .local v5, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 256
    .local v1, "a":Ljava/lang/Object;
    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v12

    if-nez v12, :cond_2

    .line 260
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v4

    .line 261
    .local v4, "interestOps":I
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 262
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v12

    invoke-virtual {v12, v8, v4, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v7

    .line 263
    .local v7, "newKey":Ljava/nio/channels/SelectionKey;
    instance-of v12, v1, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v12, :cond_5

    .line 265
    move-object v0, v1

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel;

    move-object v12, v0

    iput-object v7, v12, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 267
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 268
    .end local v4    # "interestOps":I
    .end local v7    # "newKey":Ljava/nio/channels/SelectionKey;
    :catch_1
    move-exception v3

    .line 269
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v12, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "Failed to re-register a Channel to the new Selector."

    invoke-interface {v12, v14, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    instance-of v12, v1, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v12, :cond_6

    .line 271
    move-object v0, v1

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel;

    move-object v2, v0

    .line 272
    .local v2, "ch":Lio/netty/channel/nio/AbstractNioChannel;
    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v12

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v14

    invoke-interface {v14}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v14

    invoke-interface {v12, v14}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto/16 :goto_2

    .line 280
    .end local v1    # "a":Ljava/lang/Object;
    .end local v2    # "ch":Lio/netty/channel/nio/AbstractNioChannel;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 275
    .restart local v1    # "a":Ljava/lang/Object;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "key":Ljava/nio/channels/SelectionKey;
    :cond_6
    move-object v0, v1

    check-cast v0, Lio/netty/channel/nio/NioTask;

    move-object v11, v0

    .line 276
    .local v11, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    invoke-static {v11, v5, v3}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 293
    .end local v1    # "a":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    .end local v11    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :catch_3
    move-exception v10

    .line 294
    .local v10, "t":Ljava/lang/Throwable;
    sget-object v12, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 295
    sget-object v12, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "Failed to close the old Selector."

    invoke-interface {v12, v13, v10}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public register(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 4
    .param p1, "ch"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "interestOps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectableChannel;",
            "I",
            "Lio/netty/channel/nio/NioTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<*>;"
    if-nez p1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ch"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    if-nez p2, :cond_1

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "interestOps must be non-zero."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid interestOps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(validOps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_2
    if-nez p3, :cond_3

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "task"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_3
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "event loop shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_4
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1, p2, p3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/netty/channel/EventLoopException;

    const-string v2, "failed to register a channel"

    invoke-direct {v1, v2, v0}, Lio/netty/channel/EventLoopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 305
    :cond_0
    :goto_0
    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .line 307
    .local v1, "oldWakenUp":Z
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 308
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->selectNow()V

    .line 345
    :cond_1
    :goto_1
    const/4 v7, 0x0

    iput v7, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    .line 346
    const/4 v7, 0x0

    iput-boolean v7, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    .line 347
    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    .line 348
    .local v0, "ioRatio":I
    const/16 v7, 0x64

    if-ne v0, v7, :cond_3

    .line 349
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeys()V

    .line 350
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks()Z

    .line 360
    :goto_2
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->isShuttingDown()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->closeAll()V

    .line 362
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->confirmShutdown()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 378
    return-void

    .line 310
    .end local v0    # "ioRatio":I
    :cond_2
    invoke-direct {p0, v1}, Lio/netty/channel/nio/NioEventLoop;->select(Z)V

    .line 340
    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 366
    :catch_0
    move-exception v6

    .line 367
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Unexpected exception in the selector loop."

    invoke-interface {v7, v8, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 373
    :catch_1
    move-exception v7

    goto :goto_0

    .line 352
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "ioRatio":I
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 354
    .local v2, "ioStartTime":J
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeys()V

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 357
    .local v4, "ioTime":J
    rsub-int/lit8 v7, v0, 0x64

    int-to-long v8, v7

    mul-long/2addr v8, v4

    int-to-long v10, v0

    div-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks(J)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method selectNow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 604
    :cond_0
    return-void

    .line 598
    :catchall_0
    move-exception v0

    .line 600
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 603
    :cond_1
    throw v0
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .prologue
    .line 214
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ioRatio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0 < ioRatio <= 100)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    iput p1, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    .line 218
    return-void
.end method

.method protected wakeup(Z)V
    .locals 3
    .param p1, "inEventLoop"    # Z

    .prologue
    .line 590
    if-nez p1, :cond_0

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 593
    :cond_0
    return-void
.end method
