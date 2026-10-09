.class public final Lc/t/m/g/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lc/t/m/g/a;->a:Z

    return-void
.end method

.method public static a(Lc/t/m/g/b;)Lc/t/m/g/d;
    .locals 1

    sget-boolean v0, Lc/t/m/g/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lc/t/m/g/a;->b(Lc/t/m/g/b;)V

    :cond_0
    invoke-static {}, Lc/t/m/g/g;->a()Lc/t/m/g/g;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Lc/t/m/g/b;)V
    .locals 8

    const/4 v0, 0x1

    const-class v2, Lc/t/m/g/a;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lc/t/m/g/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-nez p0, :cond_1

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "initParam null"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lc/t/m/g/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lc/t/m/g/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lc/t/m/g/bz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lc/t/m/g/b;->g:I

    iget-boolean v1, p0, Lc/t/m/g/b;->c:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lc/t/m/g/b;->b:I

    :goto_1
    if-gtz v1, :cond_3

    new-instance v0, Lc/t/m/g/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appid illegal:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lc/t/m/g/b;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lc/t/m/g/bz;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-boolean v5, p0, Lc/t/m/g/b;->c:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lc/t/m/g/b;->a:Landroid/content/Context;

    const-string v6, "com.tencent.halley.common.platform.service.PlatformService"

    invoke-static {v1, v5, v3, v6}, Lc/t/m/g/bz;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc/t/m/g/bz$a;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "need set PlatformService in manifest for halley"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v6, v5, Lc/t/m/g/bz$a;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lc/t/m/g/bz$a;->a:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lc/t/m/g/bz$a;->d:Ljava/lang/String;

    iget-object v7, v5, Lc/t/m/g/bz$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :goto_2
    sput-boolean v0, Lc/t/m/g/l;->g:Z

    :cond_5
    iget-boolean v0, v5, Lc/t/m/g/bz$a;->c:Z

    if-eqz v0, :cond_7

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "need set PlatformService exported to false"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-boolean v0, v5, Lc/t/m/g/bz$a;->b:Z

    if-nez v0, :cond_8

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "need set PlatformService enabled to true"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lc/t/m/g/b;->a:Landroid/content/Context;

    const-string v5, "com.tencent.halley.common.platform.service.ActivateService"

    invoke-static {v1, v0, v3, v5}, Lc/t/m/g/bz;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc/t/m/g/bz$a;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v3, v0, Lc/t/m/g/bz$a;->c:Z

    if-nez v3, :cond_9

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "need set ActivateService exported to true"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v3, v0, Lc/t/m/g/bz$a;->e:Landroid/os/Bundle;

    if-nez v3, :cond_a

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "need set security_version for ActivateService"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, v0, Lc/t/m/g/bz$a;->e:Landroid/os/Bundle;

    const-string v3, "security_version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b

    new-instance v0, Lc/t/m/g/c;

    const-string v1, "need set valid security_version for ActivateService"

    invoke-direct {v0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {v1, p0, v4}, Lc/t/m/g/l;->a(ILc/t/m/g/b;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/b;->f:Ljava/lang/String;

    sput-object v0, Lc/t/m/g/u;->a:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/bv;->f()V

    const/4 v0, 0x1

    sput-boolean v0, Lc/t/m/g/a;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
