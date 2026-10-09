.class public Lcom/tencent/android/tpush/common/s;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static volatile a:Lcom/tencent/android/tpush/common/s;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/common/s;->a:Lcom/tencent/android/tpush/common/s;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/s;->b:Z

    .line 14
    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/s;->c:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/android/tpush/common/s;->d:I

    .line 17
    invoke-static {}, Lcom/tencent/android/tpush/common/j;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/s;->b:Z

    .line 18
    invoke-static {p1}, Lcom/tencent/android/tpush/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/s;->c:Z

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/android/tpush/common/s;->a:Lcom/tencent/android/tpush/common/s;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/tencent/android/tpush/common/s;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/s;->a:Lcom/tencent/android/tpush/common/s;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/android/tpush/common/s;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/common/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/common/s;->a:Lcom/tencent/android/tpush/common/s;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/common/s;->a:Lcom/tencent/android/tpush/common/s;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/tencent/android/tpush/common/s;->b:Z

    return v0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    iget v2, p0, Lcom/tencent/android/tpush/common/s;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 45
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "meizu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oppo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xiaomi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "vivo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "huawei"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/android/tpush/common/s;->b:Z

    if-eqz v2, :cond_2

    .line 50
    :cond_0
    iput v0, p0, Lcom/tencent/android/tpush/common/s;->d:I

    .line 56
    :cond_1
    :goto_0
    iget v2, p0, Lcom/tencent/android/tpush/common/s;->d:I

    if-ne v2, v0, :cond_3

    :goto_1
    return v0

    .line 52
    :cond_2
    iput v1, p0, Lcom/tencent/android/tpush/common/s;->d:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 56
    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/tencent/android/tpush/common/s;->c:Z

    return v0
.end method
