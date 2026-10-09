.class public Lcom/tencent/mid/b/e;
.super Lcom/tencent/mid/b/f;


# static fields
.field protected static a:Lcom/tencent/mid/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/b/e;->a:Lcom/tencent/mid/util/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mid/b/f;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/tencent/mid/b/a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/mid/b/e;->a:Lcom/tencent/mid/util/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write CheckEntity to Settings.System:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mid/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mid/b/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/i;->a(Landroid/content/Context;)Lcom/tencent/mid/util/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mid/b/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mid/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mid/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/mid/b/e;->a:Lcom/tencent/mid/util/f;

    const-string/jumbo v1, "write mid to Settings.System"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mid/b/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/i;->a(Landroid/content/Context;)Lcom/tencent/mid/util/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mid/b/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mid/b/e;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v1}, Lcom/tencent/mid/util/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/mid/b/e;->a:Lcom/tencent/mid/util/f;

    const-string v1, "read mid from Settings.System"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mid/b/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/i;->a(Landroid/content/Context;)Lcom/tencent/mid/util/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mid/b/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()Lcom/tencent/mid/b/a;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mid/b/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/i;->a(Landroid/content/Context;)Lcom/tencent/mid/util/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mid/b/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mid/b/a;

    invoke-direct {v1, v0}, Lcom/tencent/mid/b/a;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mid/b/e;->a:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read readCheckEntity from Settings.System:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mid/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
