.class Lcom/subao/common/j/d$g$a;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/ConditionVariable;

.field private volatile b:Lcom/subao/common/j/d$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/subao/common/j/d$g$a;->a:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/j/d$1;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/subao/common/j/d$g$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(J)Lcom/subao/common/j/d$c;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/subao/common/j/d$g$a;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 512
    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/j/d$g$a;->b:Lcom/subao/common/j/d$c;

    .line 514
    monitor-exit p0

    .line 515
    return-object v0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lcom/subao/common/j/d$f;

    invoke-direct {v0}, Lcom/subao/common/j/d$f;-><init>()V

    .line 522
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/subao/common/j/d$f;->a(Ljava/lang/String;)Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 523
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 524
    :try_start_1
    iput-object v0, p0, Lcom/subao/common/j/d$g$a;->b:Lcom/subao/common/j/d$c;

    .line 525
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    iget-object v0, p0, Lcom/subao/common/j/d$g$a;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 531
    :goto_0
    return-void

    .line 525
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 526
    :catch_0
    move-exception v0

    .line 529
    iget-object v0, p0, Lcom/subao/common/j/d$g$a;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 527
    :catch_1
    move-exception v0

    .line 529
    iget-object v0, p0, Lcom/subao/common/j/d$g$a;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/subao/common/j/d$g$a;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
