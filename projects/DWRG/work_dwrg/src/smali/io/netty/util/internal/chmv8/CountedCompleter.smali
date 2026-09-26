.class public abstract Lio/netty/util/internal/chmv8/CountedCompleter;
.super Lio/netty/util/internal/chmv8/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/chmv8/ForkJoinTask",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Lio/netty/util/internal/chmv8/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 732
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/CountedCompleter;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 733
    sget-object v1, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    const-class v2, Lio/netty/util/internal/chmv8/CountedCompleter;

    const-string v3, "pending"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 436
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .line 438
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/internal/chmv8/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    .local p1, "completer":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    .line 429
    iput-object p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .line 430
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/internal/chmv8/CountedCompleter;I)V
    .locals 0
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    .local p1, "completer":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    .line 418
    iput-object p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .line 419
    iput p2, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .line 420
    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .prologue
    .line 749
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 752
    :goto_0
    return-object v1

    .line 750
    :catch_0
    move-exception v1

    .line 752
    :try_start_1
    new-instance v1, Lio/netty/util/internal/chmv8/CountedCompleter$1;

    invoke-direct {v1}, Lio/netty/util/internal/chmv8/CountedCompleter$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 764
    :catch_1
    move-exception v0

    .line 765
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 517
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    iget v4, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .local v4, "c":I
    add-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .prologue
    .line 529
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    .local p1, "rawResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0, p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->onCompletion(Lio/netty/util/internal/chmv8/CountedCompleter;)V

    .line 625
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    .line 626
    iget-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v0, "p":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/CountedCompleter;->tryComplete()V

    .line 628
    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 6

    .prologue
    .line 540
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .local v4, "c":I
    if-eqz v4, :cond_1

    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    :cond_1
    return v4
.end method

.method protected final exec()Z
    .locals 1

    .prologue
    .line 703
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->compute()V

    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_1

    .line 644
    .end local p0    # "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    :goto_0
    return-object p0

    .line 643
    .restart local p0    # "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getCompleter()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    .prologue
    .line 498
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 716
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 553
    .local v0, "a":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v1, "p":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    if-eqz v1, :cond_0

    .line 554
    move-object v0, v1

    goto :goto_0

    .line 555
    :cond_0
    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 692
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    move-object v1, v0

    .line 694
    .local v1, "s":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_0
    invoke-virtual {v0, p1, v1}, Lio/netty/util/internal/chmv8/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_1

    iget v2, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-ltz v2, :cond_1

    invoke-virtual {v0, p1}, Lio/netty/util/internal/chmv8/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 697
    :cond_1
    return-void
.end method

.method public final nextComplete()Lio/netty/util/internal/chmv8/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v0, "p":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/CountedCompleter;->firstComplete()Lio/netty/util/internal/chmv8/CountedCompleter;

    move-result-object v1

    .line 671
    :goto_0
    return-object v1

    .line 670
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    .line 671
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompletion(Lio/netty/util/internal/chmv8/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    .local p1, "caller":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    .local p2, "caller":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final propagateCompletion()V
    .locals 7

    .prologue
    .line 589
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    move-object v1, p0

    .local v1, "a":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    move-object v6, v1

    .line 591
    .local v6, "s":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_0
    iget v4, v1, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_1

    .line 592
    move-object v6, v1

    iget-object v1, v1, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final quietlyCompleteRoot()V
    .locals 2

    .prologue
    .line 679
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 680
    .local v0, "a":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v1, "p":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    if-nez v1, :cond_0

    .line 681
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    .line 682
    return-void

    .line 684
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 507
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    iput p1, p0, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .line 508
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final tryComplete()V
    .locals 7

    .prologue
    .line 565
    .local p0, "this":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<TT;>;"
    move-object v1, p0

    .local v1, "a":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    move-object v6, v1

    .line 567
    .local v6, "s":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_0
    iget v4, v1, Lio/netty/util/internal/chmv8/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_1

    .line 568
    invoke-virtual {v1, v6}, Lio/netty/util/internal/chmv8/CountedCompleter;->onCompletion(Lio/netty/util/internal/chmv8/CountedCompleter;)V

    .line 569
    move-object v6, v1

    iget-object v1, v1, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/CountedCompleter;->quietlyComplete()V

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
