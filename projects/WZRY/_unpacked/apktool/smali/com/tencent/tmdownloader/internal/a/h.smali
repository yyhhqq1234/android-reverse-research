.class public Lcom/tencent/tmdownloader/internal/a/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static h:Lcom/tencent/tmdownloader/internal/a/h;


# instance fields
.field protected final a:Ljava/util/Comparator;

.field final b:Ljava/util/PriorityQueue;

.field final c:Ljava/util/ArrayList;

.field final d:Ljava/util/PriorityQueue;

.field final e:Ljava/util/ArrayList;

.field final f:Ljava/lang/Object;

.field final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/h;->h:Lcom/tencent/tmdownloader/internal/a/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x10

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/i;

    invoke-direct {v0, p0}, Lcom/tencent/tmdownloader/internal/a/i;-><init>(Lcom/tencent/tmdownloader/internal/a/h;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->a:Ljava/util/Comparator;

    .line 40
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/h;->a:Ljava/util/Comparator;

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/h;->a:Ljava/util/Comparator;

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->e:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->f:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/f;->c()I

    move-result v1

    .line 69
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 70
    new-instance v2, Lcom/tencent/tmdownloader/internal/a/j;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tmdownloader/internal/a/j;-><init>(Lcom/tencent/tmdownloader/internal/a/h;I)V

    .line 71
    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/a/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public static a()Lcom/tencent/tmdownloader/internal/a/h;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/h;->h:Lcom/tencent/tmdownloader/internal/a/h;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/h;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/a/h;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/h;->h:Lcom/tencent/tmdownloader/internal/a/h;

    .line 64
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/h;->h:Lcom/tencent/tmdownloader/internal/a/h;

    return-object v0
.end method


# virtual methods
.method a(Lcom/tencent/tmdownloader/internal/a/g;)I
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p1}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/a/f;->c()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 89
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 90
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 91
    const-string v2, "DownloadThreadPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause Task url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "DownloadThreadPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add Task url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->c()V

    .line 94
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/h;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/tmdownloader/internal/a/g;->a()I

    move-result v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 104
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/g;
    .locals 4

    .prologue
    .line 264
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 266
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    monitor-exit v1

    .line 276
    :goto_0
    return-object v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 271
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    monitor-exit v1

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 114
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->b()V

    .line 116
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1

    .line 139
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 123
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->a()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->b()V

    .line 125
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 126
    monitor-exit v1

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 132
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->a()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->b()V

    .line 134
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v1

    goto :goto_0

    .line 138
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
