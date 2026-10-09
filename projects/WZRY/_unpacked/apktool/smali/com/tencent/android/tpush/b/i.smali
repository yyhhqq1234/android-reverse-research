.class public Lcom/tencent/android/tpush/b/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/util/ArrayList;

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/android/tpush/b/i;

.field private static e:J


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/tencent/android/tpush/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/b/i;->b:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/b/i;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/i;->d:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/android/tpush/b/i;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/b/i;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/tencent/android/tpush/b/i;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tencent/android/tpush/b/i;

    invoke-direct {v0}, Lcom/tencent/android/tpush/b/i;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    .line 44
    sget-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/android/tpush/b/i;->d:Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    iget-object v0, v0, Lcom/tencent/android/tpush/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->d(Landroid/content/Context;)V

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/b/i;->c:Lcom/tencent/android/tpush/b/i;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tencent/android/tpush/b/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/b/i;->c(Landroid/content/Intent;)V

    return-void
.end method

.method protected static declared-synchronized a(Ljava/lang/Long;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 68
    const-class v1, Lcom/tencent/android/tpush/b/i;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/android/tpush/b/i;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/android/tpush/b/i;->a:Ljava/util/ArrayList;

    .line 71
    :cond_0
    sget-object v2, Lcom/tencent/android/tpush/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :goto_0
    monitor-exit v1

    return v0

    .line 74
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/tencent/android/tpush/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_2

    .line 76
    sget-object v0, Lcom/tencent/android/tpush/b/i;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_2
    const-string v2, "PushMessageHandler"

    const-string v3, "addCachedmsgID"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/b/j;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/b/j;-><init>(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/b/m;

    iget-object v2, p0, Lcom/tencent/android/tpush/b/i;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/tencent/android/tpush/b/m;-><init>(Lcom/tencent/android/tpush/b/i;Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 408
    sget-wide v2, Lcom/tencent/android/tpush/b/i;->e:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    if-nez p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 411
    :cond_0
    sput-wide v0, Lcom/tencent/android/tpush/b/i;->e:J

    .line 412
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/b/l;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/b/l;-><init>(Lcom/tencent/android/tpush/b/i;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/b/k;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/b/k;-><init>(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method
