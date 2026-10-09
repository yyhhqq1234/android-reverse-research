.class public Lcom/subao/common/n/d;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/n/d$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/File;I)[B
    .locals 4

    .prologue
    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 22
    if-le v0, p1, :cond_2

    .line 23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is too large."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    const/4 v2, 0x0

    .line 27
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    new-instance v2, Lcom/subao/common/d/a;

    invoke-direct {v2, v0}, Lcom/subao/common/d/a;-><init>(I)V

    .line 30
    :cond_3
    invoke-virtual {v2, v1, v0}, Lcom/subao/common/d/a;->a(Ljava/io/InputStream;I)I

    move-result v3

    if-gtz v3, :cond_3

    .line 33
    invoke-virtual {v2}, Lcom/subao/common/d/a;->a()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 35
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
