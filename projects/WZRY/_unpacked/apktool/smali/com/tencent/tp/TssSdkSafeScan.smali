.class public Lcom/tencent/tp/TssSdkSafeScan;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static scan(Landroid/content/Context;ZZZ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Lcom/tencent/tp/w;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/tencent/tp/w;-><init>(Landroid/content/Context;ZZZ)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v0, v3, v0

    :goto_1
    move v3, v1

    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_0

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "executeOnExecutor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v2, v5, v3

    :cond_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v3, 0x1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    const-string v0, "info: on scan done."

    invoke-static {v0}, Lcom/tencent/tp/m;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "EXCEPTION:START_ASYNC_TASK"

    invoke-static {v0}, Lcom/tencent/tp/m;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v0}, Lcom/tencent/tp/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_4
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v0}, Lcom/tencent/tp/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public static scan(ZZZ)V
    .locals 1

    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tp/TssSdkSafeScan;->scan(Landroid/content/Context;ZZZ)V

    :cond_0
    return-void
.end method
