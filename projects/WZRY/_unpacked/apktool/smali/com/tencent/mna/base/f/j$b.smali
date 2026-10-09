.class public Lcom/tencent/mna/base/f/j$b;
.super Ljava/lang/Object;
.source "NetErrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/tencent/mna/base/f/j$a;

.field b:Lcom/tencent/mna/base/f/j$c;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mna/base/f/j$b;->c:Z

    .line 336
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/tencent/mna/base/f/j$a;
    .locals 1

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/f/j$b;->a:Lcom/tencent/mna/base/f/j$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tencent/mna/base/f/j$a;)V
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/mna/base/f/j$b;->a:Lcom/tencent/mna/base/f/j$a;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mna/base/f/j$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tencent/mna/base/f/j$c;)V
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/mna/base/f/j$b;->b:Lcom/tencent/mna/base/f/j$c;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mna/base/f/j$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/tencent/mna/base/f/j$c;
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/f/j$b;->b:Lcom/tencent/mna/base/f/j$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
