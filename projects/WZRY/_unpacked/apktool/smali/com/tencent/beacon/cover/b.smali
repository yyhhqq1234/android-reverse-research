.class public final Lcom/tencent/beacon/cover/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Lcom/tencent/beacon/cover/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldalvik/system/DexClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/cover/b;->c:Lcom/tencent/beacon/cover/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/beacon/cover/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;)",
            "Lcom/tencent/beacon/cover/b;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/beacon/cover/b;->c:Lcom/tencent/beacon/cover/b;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/tencent/beacon/cover/b;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/cover/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/cover/b;->c:Lcom/tencent/beacon/cover/b;

    .line 39
    :cond_0
    sget-object v0, Lcom/tencent/beacon/cover/b;->c:Lcom/tencent/beacon/cover/b;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/cover/b;->a(Ljava/util/List;)Lcom/tencent/beacon/cover/b;

    .line 40
    sget-object v0, Lcom/tencent/beacon/cover/b;->c:Lcom/tencent/beacon/cover/b;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/util/List;)Lcom/tencent/beacon/cover/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;)",
            "Lcom/tencent/beacon/cover/b;"
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-object p0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->d:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    monitor-exit p0

    return v1

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    move v1, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "D"

    const-string v3, "start to load comps to classLoader."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "beacon/comp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "beacon/odex"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 70
    if-eqz v0, :cond_4

    iget v7, v0, Lcom/tencent/beacon/cover/a;->c:I

    sget v8, Lcom/tencent/beacon/cover/f;->b:I

    if-ne v7, v8, :cond_4

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/beacon/cover/b;->c()I

    move-result v0

    .line 81
    if-lt v0, v9, :cond_6

    .line 82
    const-string v0, "E"

    const-string v1, "load comps failed for three times, don\'t load again."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 83
    goto/16 :goto_0

    .line 88
    :cond_6
    add-int/lit8 v6, v0, 0x1

    .line 1142
    :try_start_3
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    const-string v7, "LOAD_RETRIES_TIMES"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    const-string v0, "D"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dex file path -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v5, v4, v3, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/tencent/beacon/cover/b;->d:Ldalvik/system/DexClassLoader;

    .line 95
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->d:Ldalvik/system/DexClassLoader;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->onCompLoaded(Ldalvik/system/DexClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2142
    :try_start_4
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    const-string v2, "LOAD_RETRIES_TIMES"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    :goto_2
    move v1, v0

    .line 107
    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception v1

    move-object v3, v1

    move v0, v2

    .line 100
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/cover/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/e;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/cover/e;->a(Ljava/lang/String;)V

    .line 101
    if-lt v6, v9, :cond_7

    .line 103
    iget-object v1, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/cover/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/cover/e;->a(Z)V

    .line 105
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 98
    :catch_1
    move-exception v2

    move-object v3, v2

    move v0, v1

    goto :goto_3
.end method

.method private c()I
    .locals 4

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    const-string v2, "LOAD_RETRIES_TIMES"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/tencent/beacon/cover/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->d:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 3142
    iget-object v0, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    const-string v1, "LOAD_RETRIES_TIMES"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    invoke-direct {p0}, Lcom/tencent/beacon/cover/b;->b()Z

    .line 128
    :cond_0
    return-void
.end method

.method public final declared-synchronized run()V
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    const-string v0, "load"

    .line 113
    iget-object v1, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/cover/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/cover/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/tencent/beacon/cover/b;->b()Z

    .line 115
    iget-object v1, p0, Lcom/tencent/beacon/cover/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/cover/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/cover/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
