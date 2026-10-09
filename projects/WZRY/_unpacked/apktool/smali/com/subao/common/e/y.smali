.class public Lcom/subao/common/e/y;
.super Ljava/lang/Object;
.source "LocalScripts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/y$b;,
        Lcom/subao/common/e/y$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/subao/common/e/q$a;)[B
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/subao/common/e/y;->a(Lcom/subao/common/e/q$a;Lcom/subao/common/e/y$a;)[B

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/subao/common/e/q$a;Lcom/subao/common/e/y$a;)[B
    .locals 4

    .prologue
    .line 27
    invoke-static {p0}, Lcom/subao/common/e/y;->b(Lcom/subao/common/e/q$a;)Ljava/io/File;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/subao/common/e/y$b;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Lcom/subao/common/e/y$b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/subao/common/e/y$a;->a()I

    move-result v0

    int-to-long v0, v0

    .line 35
    const-wide/32 v2, 0x400000

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Script file too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 38
    :cond_1
    long-to-int v0, v0

    :try_start_1
    new-array v0, v0, [B

    .line 39
    invoke-interface {p1, v0}, Lcom/subao/common/e/y$a;->a([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {p1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 45
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/subao/common/e/q$a;)Ljava/io/File;
    .locals 4

    .prologue
    .line 50
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.subao.gamemaster.script."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/subao/common/e/ak;->a(Lcom/subao/common/e/q$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
