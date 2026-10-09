.class public Lcom/tencent/android/tpush/stat/b/g;
.super Lcom/tencent/android/tpush/stat/b/h;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/stat/b/h;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/g;->a:Lcom/tencent/android/tpush/stat/a/f;

    const-string/jumbo v1, "write mid to Settings.System"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/c/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/g;->b:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/c/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
